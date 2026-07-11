// Razor Blade Print-Bed Scraper
// A 3D-printable handle that clamps a standard razor blade for cleaning up
// brims, rafts, and elephant's-foot squish off the bottom edges of prints.
//
// Two printed parts (Body + Cap) sandwich the blade against a flat shelf
// and are drawn together with 4x M3 screws that self-tap directly into
// printed pilot holes in the body (no nuts needed). Clamping is by
// friction, not blade-specific holes, so it fits either a standard
// double-edge safety-razor blade (43 x 22 x 0.10mm) or a single-edge
// utility blade (~38-41 x 19 x 0.23mm).
//
// Print settings: 0.2mm layers, >=3 walls, >=20% infill (the jaw resists
// screw clamp-up torque). Both parts print flat on the bed, no supports.
//
// Hardware: 4x M3x10 self-tapping (or heat-set-insert) screws.

/* [Blade] */
blade_width      = 22;    // widest standard blade (DE safety blade)
blade_thickness  = 0.25;  // typical blade stock thickness
blade_exposure   = 8;     // mm of cutting edge left exposed beyond the jaw

/* [Hardware] */
screw_pilot_d      = 2.6; // pilot hole the M3 screw self-taps into (body)
screw_clearance_d  = 3.4; // free-pass clearance hole for the screw (cap)
screw_head_d       = 6.2; // M3 socket-head cap screw head clearance
screw_head_depth   = 3;

/* [Handle geometry] */
handle_length   = 95;    // grip section length
jaw_length      = 20;    // flat clamping section length
jaw_height      = 9;
cap_thickness   = screw_head_depth + 1.5;
wall_clear      = 7;     // plastic on each side of the blade pocket

$fn = 48;

// ---- derived ----
jaw_width       = blade_width + 2*wall_clear;
pocket_width    = blade_width + 0.6;
pocket_depth    = blade_thickness - 0.10;  // blade sits ~0.1mm proud
total_length    = handle_length + jaw_length;
z_jaw_top       = jaw_height;
z_cap_top       = jaw_height + cap_thickness;

// screw post positions (outside the blade pocket, in the side cheeks)
hole_x = [handle_length + jaw_length*0.30, handle_length + jaw_length*0.75];
hole_y = (pocket_width/2) + (wall_clear/2);

module rounded_prism(l, w, h, r) {
  // solid bar along X, rounded on the 4 long edges, flat ends
  hull()
    for (yy = [r, w - r])
      for (zz = [r, h - r])
        translate([0, yy, zz])
          rotate([0, 90, 0])
            cylinder(h = l, r = r);
}

module grip_body() {
  // organic tapered grip, built as a chain of hulled ellipsoid "stations"
  // station format: [x, half_width, half_height]
  stations = [
    [0,                    7,           7],
    [handle_length * 0.10, 9,           8],
    [handle_length * 0.45, 8,           7],
    [handle_length * 0.75, 10,          9],
    [handle_length,        jaw_width/2, jaw_height/2],
  ];
  for (i = [0 : len(stations) - 2]) {
    a = stations[i];
    b = stations[i+1];
    hull() {
      translate([a[0], jaw_width/2, jaw_height/2])
        scale([4, a[1], a[2]]) sphere(r = 1);
      translate([b[0], jaw_width/2, jaw_height/2])
        scale([4, b[1], b[2]]) sphere(r = 1);
    }
  }
}

module lanyard_hole() {
  translate([3, jaw_width/2, jaw_height/2])
    rotate([90, 0, 0])
      cylinder(h = 30, r = 2.5, center = true);
}

module blade_pocket() {
  // recess in the jaw top face that seats the blade (full jaw_length,
  // starting exactly at the jaw), extended past the front face by
  // blade_exposure so the same cut also carves the exposure gap
  translate([handle_length,
             (jaw_width - pocket_width)/2,
             z_jaw_top - pocket_depth])
    cube([jaw_length + blade_exposure + 1, pocket_width, pocket_depth + 1]);
}

module body_pilot_holes() {
  // self-tap pilot holes through the full jaw height
  for (x = hole_x)
    for (s = [-1, 1])
      translate([x, jaw_width/2 + s*hole_y, -1])
        cylinder(h = z_jaw_top + 2, r = screw_pilot_d/2);
}

module cap_clearance_holes() {
  // free-pass shank holes through the full cap thickness
  for (x = hole_x)
    for (s = [-1, 1])
      translate([x, jaw_width/2 + s*hole_y, z_jaw_top - 1])
        cylinder(h = cap_thickness + 2, r = screw_clearance_d/2);
}

module screw_head_counterbores() {
  for (x = hole_x)
    for (s = [-1, 1])
      translate([x, jaw_width/2 + s*hole_y, z_cap_top - screw_head_depth])
        cylinder(h = screw_head_depth + 1, r = screw_head_d/2);
}

module body() {
  difference() {
    union() {
      grip_body();
      translate([handle_length, 0, 0])
        rounded_prism(jaw_length, jaw_width, jaw_height, 2);
    }
    blade_pocket();
    body_pilot_holes();
    lanyard_hole();
  }
}

module cap() {
  difference() {
    translate([handle_length, 0, z_jaw_top])
      rounded_prism(jaw_length, jaw_width, cap_thickness, 2);
    cap_clearance_holes();
    screw_head_counterbores();
  }
}

// ---- reference-only preview of the assembled tool with a ghost blade ----
module preview_assembled() {
  color("SlateGray") body();
  color("Silver", 0.9) cap();
  color("Red", 0.6)
    translate([handle_length - blade_exposure,
               (jaw_width - blade_width)/2,
               z_jaw_top - pocket_depth])
      cube([jaw_length + blade_exposure, blade_width, blade_thickness]);
}

// ---- print layout: both parts flat on the bed, ready to slice ----
module print_layout() {
  body();
  translate([0, jaw_width + 15, 0]) cap();
}

print_layout();
// Swap the line above for preview_assembled(); to visualize the clamp.

