﻿Add-Type -AssemblyName System.Windows.Forms 
Add-Type -AssemblyName System.Drawing
$Global:NextItemTop = 20
 
 
function mouseDown { 
 
    $Global:mCurFirstX = ([System.Windows.Forms.Cursor]::Position.X ) 
    $Global:mCurFirstY = ([System.Windows.Forms.Cursor]::Position.Y ) 
 
} 
 
function mouseMove ($mControlName) { 
 
    $mCurMoveX = ([System.Windows.Forms.Cursor]::Position.X ) 
    $mCurMoveY = ([System.Windows.Forms.Cursor]::Position.Y ) 
 
    if ($Global:mCurFirstX -ne 0 -and $Global:mCurFirstY -ne 0){ 
      
        $mDifX = $Global:mCurFirstX - $mCurMoveX  
        $mDifY = $Global:mCurFirstY - $mCurMoveY  
          
        $this.Left = $this.Left - $mDifX 
        $this.Top = $this.Top - $mDifY  
 
        $Global:mCurFirstX = $mCurMoveX  
        $Global:mCurFirstY = $mCurMoveY  
 
    } 
 
 
} 
 
function mouseUP ($mControlObj) { 
 
    $mCurUpX = ([System.Windows.Forms.Cursor]::Position.X ) 
    $mCurUpY = ([System.Windows.Forms.Cursor]::Position.Y ) 
 
    $Global:mCurFirstX = 0 
    $Global:mCurFirstY = 0 
 
 
    Foreach ($mElement In $Global:mFormObj.Elements){ 
 
        if ($mElement.Name -eq $this.name){ 
 
            foreach( $mProp in $mElement.Properties){ 
              
                Switch($mProp.Name){ 
 
                    'Top'{ $mProp.Value = $this.Top} 
                    'Left'{$mProp.Value = $this.Left} 
 
                } 
            } 
        } 
    } 
     
    renewGrids 
} 
 
Function renewGrids { 
 
    $mList = New-Object System.Collections.ArrayList 
    [array]$mElementsArr = $mFormObj.Elements | select Name,Type 
    $mList.AddRange($mElementsArr) 
    $mElemetnsGrid.DataSource =  $mList 
    $mElemetnsGrid.Columns[1].ReadOnly = $true 
 
    $mList2 = New-Object System.Collections.ArrayList 
    [array]$mPropertyArr =  $mFormObj.Elements[$mElemetnsGrid.CurrentRow.Index].Properties  
    $mList2.AddRange($mPropertyArr) 
    $mPropertiesGrid.DataSource = $mList2 
    $mPropertiesGrid.Columns[0].ReadOnly=$true 
 
} 
 
Function DeleteElement { 
 
    $Global:mFormObj.Elements = $mFormObj.Elements | ?{$_.Name -notlike $mFormObj.Elements[$mElemetnsGrid.CurrentRow.Index].Name} 
    renewGrids 
 
} 
 
Function AddProperty ($mName,$mValue){ 
 
    $mPropertyObj = New-Object PSCustomObject 
    $mPropertyObj | Add-Member -Name 'Name' -MemberType NoteProperty -Value $mName 
    $mPropertyObj | Add-Member -Name 'Value' -MemberType NoteProperty -Value $mValue 
    return $mPropertyObj 
 
} 
 
Function ElementsChanged{ 
 
    $mList2 = New-Object System.Collections.ArrayList 
    [array]$mPropertyArr =  $mFormObj.Elements[$mElemetnsGrid.CurrentRow.Index].Properties  
    $mList2.AddRange($mPropertyArr) 
    $mPropertiesGrid.DataSource = $mList2 
 
} 
 
function ElementsEndEdit { 
 
    $Global:mFormObj.Elements[$mElemetnsGrid.CurrentRow.Index].Name =  $mElemetnsGrid.CurrentCell.FormattedValue 
    repaintForm 
 
} 
 
 
 
Function AddElement { 
 
    $mPropertiesArr =@() 
 
    $mSameType = ($mFormObj.Elements | ?{$_.Type -like $mControlType.SelectedItem}) 
 
    if($mSameType.count -ne $NUll -and $mSameType -ne $null) { 
 
        $mControlName=''+$mControlType.SelectedItem+($mSameType.count+1) 
 
     }elseif($mSameType.Count -eq $null -and $mSameType -ne $null){ 
 
        $mControlName=''+$mControlType.SelectedItem+'2' 
 
     }else{ 
      
        $mControlName=''+$mControlType.SelectedItem+'1' 
      
     } 
 
    if ( $mControlType.SelectedItem -eq 'MaskedTextBox'){
        $mPropertiesArr+= AddProperty 'PasswordChar' '*' 
    }


    $mPropertiesArr+= AddProperty 'Text' $mControlName 
    $mPropertiesArr+= AddProperty 'SizeX' 100 
    $mPropertiesArr+= AddProperty 'SizeY' 23 
    $mPropertiesArr+= AddProperty 'Top' $Global:NextItemTop
    $Global:NextItemTop += 26 
    $mPropertiesArr+= AddProperty 'Left' 5 
    $mPropertiesArr+= AddProperty 'Anchor' 'Left,Top' 
 
    $mElementsObj = New-Object PSCustomObject 
    $mElementsObj |Add-Member -Name 'Name' -MemberType NoteProperty -Value $mControlName  
    $mElementsObj |Add-Member -Name 'Type' -MemberType NoteProperty -Value ($mControlType.SelectedItem) 
    $mElementsObj |Add-Member -Name 'Properties' -MemberType NoteProperty -Value $mPropertiesArr 
    $Global:mFormObj.Elements += $mElementsObj 
 
    renewGrids 
 
    repaintForm 
 
} 
 
function AddControl ($mControl) { 
 
    $mReturnControl = $null 
 
    switch ($mControl.Type){ 
 
        "TextBox"        {$mReturnControl = New-Object System.Windows.Forms.TextBox}
        "MaskedTextBox"  {$mReturnControl = New-Object System.Windows.Forms.MaskedTextBox} 
        "ListBox"        {$mReturnControl = New-Object System.Windows.Forms.ListBox} 
        "ComboBoX"       {$mReturnControl = New-Object System.Windows.Forms.ComboBox}  
        "Label"          {$mReturnControl = New-Object System.Windows.Forms.Label}  
        "DataGrid"       {$mReturnControl = New-Object System.Windows.Forms.DataGridView}  
        "Button"         {$mReturnControl = New-Object System.Windows.Forms.Button}  
        'CheckBox'       {$mReturnControl = New-Object System.Windows.Forms.CheckBox} 
        'DateTimePicker' {$mReturnControl = New-Object System.Windows.Forms.DateTimePicker} 
        'ListView'       {$mReturnControl = New-Object System.Windows.Forms.ListView} 
        'PictureBox'     {$mReturnControl = New-Object System.Windows.Forms.PictureBox} 
        'RichTextBox'    {$mReturnControl = New-Object System.Windows.Forms.RichTextBox} 
        'TreeView'       {$mReturnControl = New-Object System.Windows.Forms.TreeView} 
        'WebBrowser'     {$mReturnControl = New-Object System.Windows.Forms.WebBrowser} 
        "default" {write-host 'something goes wrong sorry :('} 
 
    } 
 
    $mReturnControl.Name = $mControl.Name 
 
    $mSizeX=$null 
    $mSizeY=$null 
 
    foreach ($mProperty in $mControl.Properties){ 
 
        switch ($mProperty.Name){ 
            'Text'  {$mReturnControl.Text=$mProperty.Value} 
            'SizeX' {$mSizeX=$mProperty.Value} 
            'SizeY' {$mSizeY=$mProperty.Value} 
            'Top'   {$mReturnControl.Top=$mProperty.Value} 
            'Left'  {$mReturnControl.Left=$mProperty.Value} 
            'Anchor'{$mReturnControl.Anchor=$mProperty.Value} 
        } 
 
 
    } 
 
    $mReturnControl.Size = New-Object System.Drawing.Size($mSizeX,$mSizeY) 
    $mReturnControl.Add_MouseDown({MouseDown}) 
    $mReturnControl.Add_MouseMove({MouseMove ($mControl.Name)}) 
    $mReturnControl.Add_MouseUP({MouseUP}) 
 
    Return $mReturnControl 
 
} 
 
function PropertiesEndEdit{ 
 
    foreach ($mProperty in $Global:mFormObj.Elements[$mElemetnsGrid.CurrentRow.Index].Properties){ 
 
        if ($mProperty.Name -eq $mPropertiesGrid.currentrow.Cells[0].FormattedValue){ 
 
            $mProperty.Value = $mPropertiesGrid.currentrow.Cells[1].FormattedValue 
 
        } 
 
    } 
 
    repaintForm 
 
} 
 
 
Function repaintForm { 
 
    $mFormGroupBox.Size = New-Object System.Drawing.Size(($mFormObj.SizeX),($mFormObj.SizeY)) 
    $mFormGroupBox.controls.clear() 
 
    Foreach ($mElement in $mFormObj.Elements){ 
 
        $mFormGroupBox.controls.add((AddControl $mElement)) 
 
    } 
 
} 
 
Function EditFormSize ($x,$y){ 
 
    $Global:mFormObj.SizeX = $X 
    $Global:mFormObj.SizeY = $Y 
 
    repaintForm 
 
} 
 
 
function ExportForm { 
 
    $mFormObj  
    $mExportString = " 
    " 
    $mExportString+= ' 
    Add-Type -AssemblyName System.Windows.Forms 
    Add-Type -AssemblyName System.Drawing 
    $MyForm = New-Object System.Windows.Forms.Form 
    $MyForm.Text="MyForm" 
    $MyForm.Size = New-Object System.Drawing.Size('+$mFormObj.SizeX+','+$mFormObj.SizeY+') 
    ' 
    foreach ($mElement in $mFormObj.Elements){ 
 
        $mExportString+=' 
 
        $m'+$mElement.Name+' = New-Object System.Windows.Forms.'+$mElement.Type+'' 
        $mPrSizeX='' 
        $mPrSizeY='' 
 
        foreach ($mProperty in $mElement.Properties){ 
 
            If ($mProperty.Name -eq 'SizeX'){ 
 
                $mPrSizeX = $mProperty.Value 
 
            } 
            elseIf ($mProperty.Name -eq 'SizeY'){ 
 
                $mPrSizeY = $mProperty.Value 
 
            } 
            else{ 
 
                $mExportString+=' 
                $m'+$mElement.Name+'.'+$mProperty.Name +'="'+$mProperty.Value+'"' 
 
            } 
 
        } 
 
        $mExportString+=' 
        $m'+$mElement.Name+'.Size = New-Object System.Drawing.Size('+$mPrSizeX+','+$mPrSizeY+') 
        $MyForm.Controls.Add($m'+$mElement.Name+') 
        ' 
 
    } 
 
    $mExportString+= '$MyForm.ShowDialog()' 
 
    $mFileName='' 
    $mFileName = get-filename 'C:\' 
    if ($mFileName -notlike ''){ 
            
        $mExportString > $mFileName 
 
    } 
} 
 
Function Get-FileName($initialDirectory)  {        
 
    $SaveFileDialog = New-Object System.Windows.Forms.SaveFileDialog 
    $SaveFileDialog.initialDirectory = $initialDirectory 
    $SaveFileDialog.filter = “Powershell Script (*.ps1)|*.ps1|All files (*.*)|*.*” 
    $SaveFileDialog.ShowDialog() | Out-Null 
    $SaveFileDialog.filename 
          
} 
 
 
$mForm = New-Object System.Windows.Forms.Form 
$mForm.AutoSize = $true 
$mForm.Text='FormsMaker' 
 
$mControlType = New-Object System.Windows.Forms.ComboBoX 
$mControlType.Anchor = 'Left,Top' 
$mControlType.Size = New-Object System.Drawing.Size(100,23) 
$mControlType.Left = 5 
$mControlType.Top = 5 
$mControlType.Items.Add("TextBox")
$mControlType.Items.Add("MaskedTextBox") 
$mControlType.Items.Add("ListBox") 
$mControlType.Items.Add("ComboBoX") 
$mControlType.Items.Add("Label") 
$mControlType.Items.Add("DataGrid") 
$mControlType.Items.Add("Button") 
$mControlType.Items.Add("CheckBox") 
$mControlType.Items.Add("DateTimePicker") 
$mControlType.Items.Add("ListView") 
$mControlType.Items.Add("PictureBox") 
$mControlType.Items.Add("RichTextBox") 
$mControlType.Items.Add("TreeView") 
$mControlType.Items.Add("WebBrowser") 
$mForm.Controls.Add($mControlType) 
 
$mAddButton = New-Object System.Windows.Forms.Button 
$mAddButton.Anchor = 'Left,Top' 
$mAddButton.Text = 'Add' 
$mAddButton.Left = 110 
$mAddButton.Top = 5 
$mAddButton.Size = New-Object System.Drawing.Size(50,23) 
$mAddButton.Add_Click({AddElement}) 
$mForm.Controls.Add($mAddButton) 
 
$mFormLabel = New-Object System.Windows.Forms.Label 
$mFormLabel.Text = 'Form Size:' 
$mFormLabel.Top = 5 
$mFormLabel.Left = 165 
$mFormLabel.Anchor = 'Left,Top' 
$mFormLabel.Size = New-Object System.Drawing.Size(80,23) 
$mFormLabel.TextAlign='MiddleRight' 
$mForm.Controls.Add($mFormLabel) 
 
$mFormXTextBox = New-Object System.Windows.Forms.TextBox 
$mFormXTextBox.left = 250 
$mFormXTextBox.top = 5 
$mFormXTextBox.Size = New-Object System.Drawing.Size(30,23) 
$mFormXTextBox.Anchor = 'Left,Top' 
$mFormXTextBox.Text=300 
$mForm.Controls.Add($mFormXTextBox) 
 
$mFormXLabel = New-Object System.Windows.Forms.Label 
$mFormXLabel.Text = 'X' 
$mFormXLabel.Top = 5 
$mFormXLabel.Left = 280 
$mFormXLabel.Anchor = 'Left,Top' 
$mFormXLabel.Size = New-Object System.Drawing.Size(20,23) 
$mFormXLabel.TextAlign='MiddleCenter' 
$mFormXTextBox.Add_TextChanged({EditFormSize $mFormXTextBox.Text $mFormYTextBox.Text }) 
$mForm.Controls.Add($mFormXLabel) 
 
$mFormYTextBox = New-Object System.Windows.Forms.TextBox 
$mFormYTextBox.left = 300 
$mFormYTextBox.top = 5 
$mFormYTextBox.Size = New-Object System.Drawing.Size(30,23) 
$mFormYTextBox.Anchor = 'Left,Top' 
$mFormYTextBox.Text= 300 
$mFormYTextBox.Add_TextChanged({EditFormSize $mFormXTextBox.Text $mFormYTextBox.Text}) 
$mForm.Controls.Add($mFormYTextBox) 
 
$mFormGroupBox = New-Object System.Windows.Forms.GroupBox 
$mFormGroupBox.left = 350 
$mFormGroupBox.top = 5 
$mFormGroupBox.Anchor = 'Left,Top' 
$mFormGroupBox.Size = New-Object System.Drawing.Size($mFormXTextBox.Text,$mFormYTextBox.Text) 
$mFormGroupBox.Text = 'New Form' 
$mForm.Controls.Add($mFormGroupBox) 
 
$mElemetnsGrid = New-Object System.Windows.Forms.DataGridView 
$mElemetnsGrid.size = New-Object System.Drawing.Size(155,600) 
$mElemetnsGrid.left=5 
$mElemetnsGrid.top=33 
$mElemetnsGrid.Anchor='Top,Left' 
$mElemetnsGrid.RowHeadersVisible =$false 
$mElemetnsGrid.Add_CellContentClick({ElementsChanged}) 
$mElemetnsGrid.Add_CellEndEdit({ElementsEndEdit}) 
$mForm.Controls.Add($mElemetnsGrid) 
 
$mPropertiesGrid = New-Object System.Windows.Forms.DataGridView 
$mPropertiesGrid.size = New-Object System.Drawing.Size(155,600) 
$mPropertiesGrid.left=180 
$mPropertiesGrid.top=33 
$mPropertiesGrid.Anchor='Top,Left' 
$mPropertiesGrid.ColumnHeadersVisible=$true 
$mPropertiesGrid.RowHeadersVisible =$false 
$mPropertiesGrid.Add_CellEndEdit({PropertiesEndEdit}) 
$mForm.Controls.Add($mPropertiesGrid) 
 
$mDeleteButton = New-Object System.Windows.Forms.Button 
$mDeleteButton.size = New-Object System.Drawing.Size(155,23) 
$mDeleteButton.Text = 'Delete' 
$mDeleteButton.Left = 5 
$mDeleteButton.Top = 638 
$mDeleteButton.Anchor = 'Top,Left' 
$mDeleteButton.Add_Click({DeleteElement}) 
$mForm.Controls.Add($mDeleteButton) 
 
$mExportButton = New-Object System.Windows.Forms.Button 
$mExportButton.size = New-Object System.Drawing.Size(155,23) 
$mExportButton.text = 'Export' 
$mExportButton.Left = 180 
$mExportButton.top = 638 
$mExportButton.Anchor='Top,Left' 
$mExportButton.Add_Click({ExportForm}) 
$mForm.Controls.Add($mExportButton) 
 
$Global:mFormObj = new-object PSCustomObject 
$Global:mFormObj | Add-Member -Name 'SizeX' -MemberType NoteProperty -Value 300  
$Global:mFormObj | Add-Member -Name 'SizeY' -MemberType NoteProperty -Value 300 
$Global:mFormObj | Add-Member -Name 'Elements' -MemberType NoteProperty -Value @() 
$Global:mCurFirstX =0  
$Global:mCurFirstY =0 
 
$mForm.ShowDialog()