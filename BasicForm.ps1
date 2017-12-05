Add-Type -AssemblyName System.Windows.Forms

$ADTool = New-Object system.Windows.Forms.Form
$ADTool.Text = "ADTool"
$ADTool.TopMost = $true
$ADTool.Width = 649
$ADTool.Height = 329

$lblUSerID = New-Object system.windows.Forms.Label
$lblUSerID.Text = "UserID"
$lblUSerID.AutoSize = $true
$lblUSerID.Width = 25
$lblUSerID.Height = 10
$lblUSerID.location = new-object system.drawing.point(25,22)
$lblUSerID.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblUSerID)

$lblFirstName = New-Object system.windows.Forms.Label
$lblFirstName.Text = "First Name"
$lblFirstName.AutoSize = $true
$lblFirstName.Width = 25
$lblFirstName.Height = 10
$lblFirstName.location = new-object system.drawing.point(25,62)
$lblFirstName.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblFirstName)

$lblMI = New-Object system.windows.Forms.Label
$lblMI.Text = "M.I."
$lblMI.AutoSize = $true
$lblMI.Width = 25
$lblMI.Height = 10
$lblMI.location = new-object system.drawing.point(207,58)
$lblMI.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblMI)

$lblLastName = New-Object system.windows.Forms.Label
$lblLastName.Text = "Last Name"
$lblLastName.AutoSize = $true
$lblLastName.Width = 25
$lblLastName.Height = 10
$lblLastName.location = new-object system.drawing.point(302,60)
$lblLastName.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblLastName)

$tbUserID = New-Object system.windows.Forms.TextBox
$tbUserID.Width = 100
$tbUserID.Height = 20
$tbUserID.location = new-object system.drawing.point(97,22)
$tbUserID.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbUserID)

$tbFirstName = New-Object system.windows.Forms.TextBox
$tbFirstName.Width = 100
$tbtbFirstName.Height = 20
$tbFirstName.location = new-object system.drawing.point(98,60)
$tbFirstName.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbFirstName)

$tbMI = New-Object system.windows.Forms.TextBox
$tbMI.Width = 40
$tbMI.Height = 20
$tbMI.location = new-object system.drawing.point(241,60)
$tbMI.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbMI)

$tbLastName = New-Object system.windows.Forms.TextBox
$tbLastName.Width = 180
$tbLastName.Height = 20
$tbLastName.location = new-object system.drawing.point(379,60)
$tbLastName.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbLastName)

$lblOU = New-Object system.windows.Forms.Label
$lblOU.Text = "OU"
$lblOU.AutoSize = $true
$lblOU.Width = 25
$lblOU.Height = 10
$lblOU.location = new-object system.drawing.point(26,119)
$lblOU.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblOU)

$lblDescription = New-Object system.windows.Forms.Label
$lblDescription.Text = "Description"
$lblDescription.AutoSize = $true
$lblDescription.Width = 25
$lblDescription.Height = 10
$lblDescription.location = new-object system.drawing.point(24,91)
$lblDescription.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblDescription)

$tbDescription = New-Object system.windows.Forms.TextBox
$tbDescription.Width = 459
$tbDescription.Height = 20
$tbDescription.location = new-object system.drawing.point(99,90)
$tbDescription.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbDescription)

$tbEmail = New-Object system.windows.Forms.TextBox
$tbEmail.Width = 466
$tbEmail.Height = 20
$tbEmail.location = new-object system.drawing.point(95,153)
$tbEmail.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbEmail)

$lblEmail = New-Object system.windows.Forms.Label
$lblEmail.Text = "Email"
$lblEmail.AutoSize = $true
$lblEmail.Width = 25
$lblEmail.Height = 10
$lblEmail.location = new-object system.drawing.point(25,153)
$lblEmail.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblEmail)

$lblGroups = New-Object system.windows.Forms.Label
$lblGroups.Text = "Groups"
$lblGroups.AutoSize = $true
$lblGroups.Width = 25
$lblGroups.Height = 10
$lblGroups.location = new-object system.drawing.point(27,187)
$lblGroups.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblGroups)

$lbGroups = New-Object system.windows.Forms.ListBox
$lbGroups.Width = 461
$lbGroups.Height = 22
$lbGroups.location = new-object system.drawing.point(99,186)
$ADTool.controls.Add($lbGroups)

$btnGet = New-Object system.windows.Forms.Button
$btnGet.BackColor = "#04f345"
$btnGet.Text = "Get"
$btnGet.ForeColor = "#080808"
$btnGet.Width = 60
$btnGet.Height = 30
$btnGet.Add_Click({
#add here code triggered by the event
})
$btnGet.location = new-object system.drawing.point(237,16)
$btnGet.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($btnGet)

$btnNew = New-Object system.windows.Forms.Button
$btnNew.BackColor = "#0df5f1"
$btnNew.Text = "New"
$btnNew.Width = 60
$btnNew.Height = 30
$btnNew.Add_Click({
#add here code triggered by the event
})
$btnNew.location = new-object system.drawing.point(325,16)
$btnNew.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($btnNew)

$btnDelete = New-Object system.windows.Forms.Button
$btnDelete.BackColor = "#ed130f"
$btnDelete.Text = "Delete"
$btnDelete.Width = 60
$btnDelete.Height = 30
$btnDelete.Add_Click({
#add here code triggered by the event
})
$btnDelete.location = new-object system.drawing.point(413,17)
$btnDelete.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($btnDelete)

$lblPassword = New-Object system.windows.Forms.Label
$lblPassword.Text = "Password"
$lblPassword.AutoSize = $true
$lblPassword.Width = 25
$lblPassword.Height = 10
$lblPassword.location = new-object system.drawing.point(24,243)
$lblPassword.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($lblPassword)

$tbPassword = New-Object system.windows.Forms.TextBox
$tbPassword.Width = 223
$tbPassword.Height = 20
$tbPassword.location = new-object system.drawing.point(97,242)
$tbPassword.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbPassword)


$btnResetPW = New-Object system.windows.Forms.Button
$btnResetPW.BackColor = "#eafe06"
$btnResetPW.Text = "Reset"
$btnResetPW.Width = 60
$btnResetPW.Height = 30
$btnResetPW.Add_Click({
#add here code triggered by the event
})

$cbMustchange = New-Object system.windows.Forms.CheckBox
$cbMustchange.Text = "Must Change"
$cbMustchange.AutoSize = $true
$cbMustchange.Width = 95
$cbMustchange.Height = 20
$cbMustchange.location = new-object system.drawing.point(410,236)
$cbMustchange.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($cbMustchange)

$cbnoExpire = New-Object system.windows.Forms.CheckBox
$cbnoExpire.Text = "Never Expires"
$cbnoExpire.AutoSize = $true
$cbnoExpire.Width = 95
$cbnoExpire.Height = 20
$cbnoExpire.location = new-object system.drawing.point(411,255)
$cbnoExpire.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($cbnoExpire)
$tbOU = New-Object system.windows.Forms.TextBox
$tbOU.Width = 461
$tbOU.Height = 20
$tbOU.location = new-object system.drawing.point(97,120)
$tbOU.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($tbOU)

$btnSelect = New-Object system.windows.Forms.Button
$btnSelect.BackColor = "#fb0be4"
$btnSelect.Text = "Select"
$btnSelect.Width = 60
$btnSelect.Height = 30
$btnSelect.Add_Click({
#add here code triggered by the event
})
$btnSelect.location = new-object system.drawing.point(564,112)
$btnSelect.Font = "Microsoft Sans Serif,10"
$ADTool.controls.Add($btnSelect)

[void]$ADTool.ShowDialog()
$ADTool.Dispose()