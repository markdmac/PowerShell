{
	"AddHeaderToScript": {
		"prefix": "psAddHeader",
		"body": [
			"<#",
			".SYNOPSIS",
			"\tReplace this text with what the script does",
			".DESCRIPTION",
			"\tDetails about the script you want to share",
			".EXAMPLE",
			"\t./$TM_FILENAME",
			".NOTES",
			"\tPut some notes here.",
			".LINK",
			"\thttps://bitbucket.company.com/scm/scripts/powershell.git",
			"==========================================================================",
			"NAME: $TM_FILENAME",
			"AUTHOR: = MyName, YourCompany, Inc.",
			"DATE  : $CURRENT_YEAR/$CURRENT_MONTH/$CURRENT_DATE",
			"This code is copyright (c) 2025 YOUR COMPANY, Inc.",
			"All rights reserved.",
			"",
			"THIS CODE AND INFORMATION IS PROVIDED \"AS IS\" WITHOUT WARRANTY OF",
			"ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO",
			"THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A",
			"PARTICULAR PURPOSE.",
			"",
			"IN NO EVENT SHALL YOUR COMPANY AND/OR ITS RESPECTIVE SUPPLIERS BE",
			"LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY",
			"DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,",
			"WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS",
			"ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE",
			"OF THIS CODE OR INFORMATION.",
			"",
			"COMMENT: ",
			"==========================================================================",
			"#>"
		],
		"description": "header legal disclaimer"
	},

	"digitallysign": {
		"prefix": "psSign",
		"body": [
			"# SIG #Begin signature block",
			"# AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmnvedIi4ADb6F",
			"# BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBEAwIEkDATBgNV",
			"# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFyXKl/c5fbWi1",
			"# DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDIhvcNAQENBQAD",
			"# EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEOIGskFLI+jy5x",
			"# FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFJoKq8s+3FuW5v",
			"# GGGGGGGGGGGGGGGGGGGGGGGGGgggggggggggggggggggggggggg0rtnCBR+KGM0o",
			"# HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHhhhhhhhhhhhhhhhhhhVJ8alVxTt4tWO",
			"# gSi2pY5WbEhHlW0Uv58QInc4gvj2EzFAjGHr2e/s23LMFD4VYQ4tWXOLdKmH/9d9",
			"# gMKIxoVTuKyeepf/23lT8X/4MlQxggHUMIIB0AIBATAzMB8xHTAbBgNVBAMMFFdp",
			"# bmRvd3MgQWRtaW4gQ2VudGVyAhAh9ESftZaDhkzZMBu4X+j2MAkGBSsOAwIaBQCg",
			"# eDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEE",
			"# AYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJ",
			"# BDEWBBShGm6dY/4mVeeRYt7toYPzsIFgzTANBgkqhkiG9w0BAQEFAASCAQA5vc89",
			"# 1Y5LQkDxDjRsQlTLwbcPo1nqv0gElN5DDmmaI+u2EtKKFsDaGKXjtxXxoWRtSEeO",
			"# BZufYmOucSePILZobsTkaGq8eOOnXpz+R6ACJyc0dZIAG5AdS7L7/Uq/1KU//sCK",
			"# XiD/DocyOe82qTUm+LfQ4vT02D5n+6mq8njiDlFBfmuZeCooSeGWd/rZdBTLlO0K",
			"# rRa5tf/d331HAeUeLShnpTIxv6rZ5AwU2Ek1l2t2BNKeW9+2ct/7d61lZhiz8QEu",
			"# Dofl77r3yzfj0H5ba3RLJhowrddepEHILpSGc3q82eq8BvmpSBxH8dhRGHFL0UU+",
			"# z42eeV+Ziium8iBR",
			"# SIG #End signature block"
		],
		"description": "digital signature"
	},

	"if": {
		"prefix": "psIF",
		"body": ["if ($$x -gt $$y)\r\n{\r\n    \r\n}"],
		"description": "if statement"
	},

	"if-else": {
		"prefix": "psIFELSE",
		"body": ["if ($$x -lt $$y)\r\n{\r\n    \r\n}\r\nelse\r\n{\r\n    \r\n}"],
		"description": "if-else statement"
	},

	"for": {
		"prefix": "psFOR",
		"body": ["for ($$i = 1; $$i -lt 99; $$i++)\r\n{ \r\n    \r\n}"],
		"description": "for loop"
	},

	"foreach": {
		"prefix": "psFOREACH",
		"body": ["foreach ($$item in $$collection)\r\n{\r\n    \r\n}"],
		"description": "foreach loop"
	},

	"function": {
		"prefix": "psFUNCTION",
		"body": ["function MyFunction ($$param1, $$param2)\r\n{\r\n    \r\n}"],
		"description": "Simple function with 2 parameters"
	},

	"switch": {
		"prefix": "psSWITCH",
		"body": ["switch ($$x)\r\n{\r\n    \u0027value1\u0027 {}\r\n    {$$_ -in \u0027A\u0027,\u0027B\u0027,\u0027C\u0027} {}\r\n    \u0027value3\u0027 {}\r\n    Default {}\r\n}"],
		"description": "switch statement"
	},

	"while": {
		"prefix": "psWHILE",
		"body": ["while ($$x -gt 0)\r\n{\r\n    \r\n}"],
		"description": "while loop"
	},

	"do-while": {
		"prefix": "psDOWHILE",
		"body": ["do\r\n{\r\n    \r\n}\r\nwhile ($$x -gt 0)"],
		"description": "do-while loop"
	},

	"do-until": {
		"prefix": "psDOUNTIL",
		"body": ["do\r\n{\r\n    \r\n}\r\nuntil ($$x -gt 0)"],
		"description": "do-until loop"
	},

	"try-catch-finally": {
		"prefix": "psTRYCATCHFINALLY",
		"body": ["try\r\n{\r\n    1/0\r\n}\r\ncatch [DivideByZeroException]\r\n{\r\n    Write-Host \"Divide by zero exception\"\r\n}\r\ncatch [System.Net.WebException],[System.Exception]\r\n{\r\n    Write-Host \"Other exception\"\r\n}\r\nfinally\r\n{\r\n    Write-Host \"cleaning up ...\"\r\n}"],
		"description": "try-catch-finally exception handling"
	},

	"try-finally": {
		"prefix": "psTRYFINALLY",
		"body": ["try\r\n{\r\n    \r\n}\r\nfinally\r\n{\r\n    \r\n}"],
		"description": "try-finally exception handling"
	},

	"Bring Form Forward": {
		"prefix": "psBRINGFORMFORWARD",
		"body": ["#Put this code above  [void]$$Form.ShowDialog() \r\n$$Form.Add_Shown({$$Form.Activate()})\r\n\r\n   \r\n   "],
		"description": "Code needed to bring a form to the foregrund after launching."
	},

	"Calculated Property": {
		"prefix": "psCALCULATEDPROPERTY",
		"body": ["@{N=\u0027Title\u0027;E={ }}"],
		"description": "Syntax for a Calculated Property"
	},

	"Check if computer is online": {
		"prefix": "psCHECKIFCOMPUTERISONLINE",
		"body": [
			"$$ComputerName = $$env:COMPUTERNAME",
			"If (Test-Connection -Computername $$ComputerName -BufferSize 16 -Count 1 -Quiet)",
			"{",
			"#Code to run on success goes here",
			"Write - Output \"Computer is Online\"",
			"}",
			"Else",
			"{",
			"#Offline Code to run",
			"Write-Output \"$$ComputerName cannot be contacted\"",
			"}"
		],
		"description": "Tests if a computer is online (Requires ICMP turned on)"
	},

	"Check-FileExists": {
		"prefix": "psCHECKFILEEXISTS",
		"body": [
			"$$strFileName=\"c:\\filename.txt\"",
			"If (Test-Path $$strFileName)",
			"{# // File exists}",
			"Else",
			"{# // File does not exis}"
		],
		"description": "Check if file exists"
	},

	"Check-O365Session": {
		"prefix": "psCHECKO365SESSION",
		"body": [
			"# Check if we are online with O365",
			"Get-PSSession | Where-Object { $$_.State -eq \"Closed\" -or $$_.State -eq \"Broken\" } | Remove-PSSession",
			"$$Sessions = Get-PSSession",
			"foreach ($$Session in $$Sessions)",
			"{ $$SessionString = $$SessionString + $$Session.ComputerName + \" \" }",
			"$$SessionString = $$SessionString.ToString()",
			"if ($$SessionString -notlike '*outlook.office365.com*')",
			"{",
			"# Capture administrative credential for future connections.",
			"$$credential = Get-Credential -Message \"Enter Online Credentials\" -UserName \"$$O365Login\"",
			"#Imports the installed Azure Active Directory module.",
			"Import-Module MSOnline",
			"# Establishes Online Services connection to Office 365 Management Layer.",
			"Connect-MsolService -Credential $$credential",
			"# Creates an Exchange Online session using defined credential.",
			"$$ExchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri \"https://outlook.office365.com/powershell-liveid/\" -Credential $$credential -Authentication \"Basic\" -AllowRedirection\r\n\tImport-PSSession $$ExchangeSession",
			"else",
			"{ Write-Host \"Already connected to O365\" }"
		],
		"description": "Closes broken PSSessions and connects to O365 if not already active."
	},

	"CheckIfPortOpen": {
		"prefix": "psCHECKIFPORTOPEN",
		"body": [
			"$$Computer = \"www.nasa.gov\"",
			"$$Port = \"80\"",
			"# Create a Net.Sockets.TcpClient object to use for",
			"# checking for open TCP ports.",
			"$$Socket = New-Object Net.Sockets.TcpClient",
			"# Suppress error messages",
			"$$ErrorActionPreference = 'SilentlyContinue'",
			"# Try to connect",
			"$$Socket.Connect($$Computer, $$Port)",
			"# Make error messages visible again",
			"$$ErrorActionPreference = 'Continue'",
			"# Determine if we are connected.",
			"if ($$Socket.Connected)",
			"{",
			"\"$${Computer}: Port $$Port is open\"",
			"$$Socket.Close()",
			"}",
			"else",
			"{\"$${Computer}: Port $$Port is closed or filtered\"}"
		],
		"description": "Check if an IP port is open"
	},

	"Create-DateSelector": {
		"prefix": "psCREATEDATESELECTOR",
		"body": [
			"[void][System.Reflection.Assembly]::LoadWithPartialName(\"System.Windows.Forms\")",
			"[void][System.Reflection.Assembly]::LoadWithPartialName(\"System.Drawing\")",
			"#~~Form1~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
			"$$Form1 = New - Object System.Windows.Forms.Form",
			"$$Form1.ClientSize = New-Object System.Drawing.Size(261, 203)",
			"$$Form1.Text = \"Select Date\"",
			"#~~MonthCalendar1~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
			"$$MonthCalendar1 = New - Object System.Windows.Forms.MonthCalendar",
			"$$MonthCalendar1.Location = New-Object System.Drawing.Point(18, 6)",
			"$$MonthCalendar1.TabIndex = 1",
			"$$MonthCalendar1.add_DateChanged({",
			"MonthCalendar1DateChanged($$MonthCalendar1)",
			"})",
			"$$MonthCalendar1.add_DateSelected({",
			"MonthCalendar1DateSelected($$MonthCalendar1)",
			"})",
			"#~~btnSelect~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
			"$$btnSelect = New-Object System.Windows.Forms.Button",
			"$$btnSelect.Location = New-Object System.Drawing.Point(18, 171)",
			"$$btnSelect.Size = New-Object System.Drawing.Size(227, 23)",
			"$$btnSelect.TabIndex = 0",
			"$$btnSelect.Text = \"Select\"",
			"$$btnSelect.UseVisualStyleBackColor = $$true",
			"$$btnSelect.add_Click({BtnSelectClick($$btnSelect)})",
			"$$Form1.Controls.Add($$MonthCalendar1)",
			"$$Form1.Controls.Add($$btnSelect)",
			"function Main",
			"{",
			"[System.Windows.Forms.Application]::EnableVisualStyles()",
			"[System.Windows.Forms.Application]::Run($$Form1)",
			"function MonthCalendar1DateChanged( $$object )",
			"{$$Global:DateSelection = $$MonthCalendar1.SelectionStart}",
			"function MonthCalendar1DateSelected( $$object )",
			"{$$Global:DateSelection = $$MonthCalendar1.SelectionStart}",
			"function BtnSelectClick($$object)",
			"{",
			"$$theDateObject = $$Global:DateSelection.ToShortDateString()",
			"[System.Reflection.Assembly]::LoadWithPartialName(\"System.Windows.Forms\")",
			"[System.Windows.Forms.MessageBox]::Show(\"You selected $$theDateObject\")",
			"$$Form1.Close()",
			"}",
			"Main"
		],
		"description": "Creates a GUI Calendar for date selection"
	},

	"Create-Inputbox": {
		"prefix": "psCREATEINPUTBOX",
		"body": [
			"[void] [System.Reflection.Assembly]::LoadWithPartialName(\"System.Drawing\")",
			"[void] [System.Reflection.Assembly]::LoadWithPartialName(\"System.Windows.Forms\")",
			"$$objForm = New-Object System.Windows.Forms.Form",
			"$$objForm.Text = \"Data Entry Form\"",
			"$$objForm.Size = New-Object System.Drawing.Size(300,200)",
			"$$objForm.StartPosition = \"CenterScreen\"",
			"$$objForm.KeyPreview = $$True",
			"$$objForm.Add_KeyDown({if ($$_.KeyCode -eq \"Enter\")",
			"{$$Global:x = $$objTextBox.Text",
			"$$objForm.Close()}})",
			"$$objForm.Add_KeyDown({if ($$_.KeyCode -eq \"Escape\")",
			"{$$objForm.Close()}})",
			"$$OKButton = New-Object System.Windows.Forms.Button",
			"$$OKButton.Location = New-Object System.Drawing.Size(75,120)",
			"$$OKButton.Size = New-Object System.Drawing.Size(75,23)",
			"$$OKButton.Text = \"OK\"",
			"$$OKButton.Add_Click({",
			"$$Global:x = $$objTextBox.Text\n$$objForm.Close()})",
			"$$objForm.Controls.Add($$OKButton)",
			"$$CancelButton = New-Object System.Windows.Forms.Button",
			"$$CancelButton.Location = New-Object System.Drawing.Size(150,120)",
			"$$CancelButton.Size = New-Object System.Drawing.Size(75,23)",
			"$$CancelButton.Text = \"Cancel\"",
			"$$CancelButton.Add_Click({$$objForm.Close()})",
			"$$objForm.Controls.Add($$CancelButton)",
			"$$objLabel = New-Object System.Windows.Forms.Label",
			"$$objLabel.Location = New-Object System.Drawing.Size(10,20)",
			"$$objLabel.Size = New-Object System.Drawing.Size(280,20)",
			"$$objLabel.Text = \"Please enter the information in the space below:\"",
			"$$objForm.Controls.Add($$objLabel)",
			"$$objTextBox = New-Object System.Windows.Forms.TextBox",
			"$$objTextBox.Location = New-Object System.Drawing.Size(10,40)",
			"$$objTextBox.Size = New-Object System.Drawing.Size(260,20)",
			"$$objForm.Controls.Add($$objTextBox)",
			"$$objForm.Topmost = $$True",
			"$$objForm.Add_Shown({$$objForm.Activate()})",
			"[void] $$objForm.ShowDialog()",
			"#Global variable x holds our data.",
			"$$Global: x "
		],
		"description": "Creates a Windows Form input box"
	},


	"ExcelCreateNewInstance": {
		"prefix": "psEXCELCREATENEWINSTANCE",
		"body": ["$$xl=New-Object -ComObject Excel.Application\n$$wb=$$xl.WorkBooks.Add()\n$$ws=$$wb.WorkSheets.item(1)\n$$xl.Visible=$$true\n$$r = 2\n$$ws.Cells.Item($$r,2)=$$r\n$$wb.SaveAs(\u0027c:\\temp\\Servers_New.xls\u0027)\n$$xl.Quit()\n "],
		"description": "Create New Excel Instance"
	},

	"ExcelGetExistingInstance": {
		"prefix": "psEXCELGETEXISTINGINSTANCE",
		"body": [" [System.Reflection.Assembly]::LoadWithPartialName(\"Microsoft.Office.Interop.Excel\")\n\nTry\n{\n    $$xl = [Runtime.InteropServices.Marshal]::GetActiveObject(\"Excel.Application\")\n    $$r = 2\n\n    Do{\n        $$xl.Cells.Item($$r,2)=$$r\n        $$r = $$r + 1\n    } While($$xl.Cells.Item($$r,1).value() -ne $$Null) \n}\nCatch\n{\n    [system.exception]\n    \"caught a system exception\"\n}\nFinally\n{\n    Write-Output \"Looks like Excel is not open or is not open under the current user instance\"\n}\n\n\n "],
		"description": "Get Existing Excel Instance"
	},

	"FileBrowser": {
		"prefix": "psFILEBROWSER",
		"body": [
			"Function Get-FileName($$initialDirectory)",
			"{",
			"[System.Reflection.Assembly]::LoadWithPartialName(\"System.windows.forms\") | Out-Null",
			"$$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog",
			"$$OpenFileDialog.initialDirectory = $$initialDirectory",
			"$$OpenFileDialog.filter = \"All files (*.*)| *.*\"",
			"$$OpenFileDialog.ShowDialog() | Out-Null\n $$OpenFileDialog.filename",
			"}",
			"#end Function Get-FileName",
			"$$File = Get-FileName -initialDirectory \"c:\\\""
		],
		"description": "Allows user to browse to a file and select it."
	},

	"FileExists-Delete": {
		"prefix": "psFILEEXISTSDELETE",
		"body": [" $$OutFile = \"C:\\Support\\NewDHCPReservations.bat\"\r\nif (Test-Path $$OutFile) \r\n{\r\n  Remove-Item $$OutFile\r\n} \r\n\r\n   "],
		"description": "Checks if a file exists and deletes it"
	},

	"FolderBrowser": {
		"prefix": "psFOLDERBROWSER",
		"body": [
			"Function Get-Folder($initialDirectory)",
			"{",
			"[void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')",
			"$$FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog",
			"$$FolderBrowserDialog.RootFolder = 'MyComputer'",
			"if($$initialDirectory)",
			"{",
			"$$FolderBrowserDialog.SelectedPath = $$initialDirectory",
			"}",
			"[void] $$FolderBrowserDialog.ShowDialog()",
			"return $$FolderBrowserDialog.SelectedPath",
			"}",
			"$$FolderName = Get-Folder \"C:\\\""
		],
		"description": "Prompt a user for folder selection."
	},


	"Form-BypassISE": {
		"prefix": "psFORMBYPASSISE",
		"body": [
			"if (Test-Path variable:global:psISE)",
			"$$newProcess = new-object System.Diagnostics.ProcessStartInfo \"PowerShell\"",
			"# Specify the current script path and name as a parameter",
			"System.Diagnostics.ProcessStartInfo.Arguments = System.Management.Automation.InvocationInfo.MyCommand.Definition",
			"# Indicate that the process should be elevated",
			"#System.Diagnostics.ProcessStartInfo.Verb = \"runas\"",
			"# Start the new process",
			"[System.Diagnostics.Process]::Start($$newProcess)",
			"# Exit from the current, unelevated, process\n   exit\r\n}\r\n    "
		],
		"description": "Use this code when utilizing Windows forms to prevent running in PowerShell_ISE and experienceing the known lockup bug."
	},

	"Get-DesktopPath": {
		"prefix": "psGETDESKTOPPATH",
		"body": [" $$Desktop = $([environment]::GetFolderPath('Desktop')) "],
		"description": "Gets the path to the user profile desktop location."
	},

	"Get-O365LoginName": {
		"prefix": "psGETO365LOGINNAME",
		"body": ["$$ADUserName = $$ENV:UserName\r\n$$UPN = (Get-ADUser $$ADUserName -Server your.company.com).UserPrincipalName\r\n$$O365Login = $$UPN -Replace \"your.company.com\",\"your.company.onmicrosoft.com\" \r\n\r\n   "],
		"description": "Uses AD to figure out the O365 login name"
	},

	"Get-RandomNumber": {
		"prefix": "psGETRANDOMNUMBER",
		"body": ["$$Random = Get-Random -Minimum 1 -Maximum 20\r\n   "],
		"description": "Generates a random number within a range"
	},

	"Get-ScriptPath": {
		"prefix": "psGETSCRIPTPATH",
		"body": [" $$PSScriptRoot = Split-Path -Parent -Path $$MyInvocation.MyCommand.Definition "],
		"description": "Gets the current script file location"
	},

	"KeePass Plain Text User": {
		"prefix": "psKEEPASSPLAINTEXTUSER",
		"body": [
			"Import-module PoshKeePass",
			"#New-KeePassDatabaseConfiguration -DatabaseProfileName 'AutomationTeamDB' -DatabasePath '\\\\1PXPRINFFS01\\Group\\AutomationTeam\\KeePass\\AutomationTeamDB.kdbx' -KeyPath '\\\\1PXPRINFFS01\\Group\\AutomationTeam\\KeePassKey\\AutomationTeamDB.key'",
			"$$KPUser = Get-KeePassEntry -Title Prod_Automation -AsPlainText -DatabaseProfileName AutomationTeamDB",
			"[pscredential]$$Cred = New-Object System.Management.Automation.PSCredential ($$KPUser.UserName, $$KPUser.Password)"
		],
		"description": "Pulls user information from KeePass Database as plain text"
	},

	"KeePassSecureUser": {
		"prefix": "psKEEPASSSECUREUSER",
		"body": [
			"#Setup creds",
			"if ($$PSVersionTable.PSVersion.Major -eq 7) {",
			"Import-Module PoShKeePass -UseWindowsPowerShell -WarningAction SilentlyContinue | Out-Null",
			"}",
			"Else",
			"{Import-module PoshKeePass}",
			"#Check for Keepass Configuration",
			"If (!( Get-KeePassDatabaseConfiguration -DatabaseProfileName AutomationTeamDB))",
			"{",
			"\tNew-KeePassDatabaseConfiguration -DatabaseProfileName 'AutomationTeamDB' -DatabasePath '\\\\1PXPRINFFS01\\Group\\AutomationTeam\\KeePass\\AutomationTeamDB.kdbx' -KeyPath '\\\\1PXPRINFFS01\\Group\\AutomationTeam\\KeePassKey\\AutomationTeamDB.key'",
			"}",
			"$$KPUser = Get-KeePassEntry -Title Prod_Automation -DatabaseProfileName AutomationTeamDB",
			"[pscredential]$$Cred = New-Object System.Management.Automation.PSCredential ($$KPUser.UserName, $$KPUser.Password)"
		],
		"description": "Pulls secure user information from KeePass Database"
	},

	"Ping-Check": {
		"prefix": "psPINGCHECK",
		"body": ["$$Computer = $$env:COMPUTERNAME\r\nif(!(Test-Connection -Cn $$Computer -BufferSize 16 -Count 1 -ea 0 -quiet))\r\n{\r\n\t$$Report = \"$$Computer is offline or unreachable\"\r\n}\r\nElse\r\n{\r\n\t$$Report = \"$$Computer is online\"\r\n} \r\n   "],
		"description": "Checks if a server is online."
	},

	"PowerShell-PopUp": {
		"prefix": "psPOWERSHELLPOPUP",
		"body": [" [System.Reflection.Assembly]::LoadWithPartialName(\"System.Windows.Forms\")\n[System.Windows.Forms.MessageBox]::Show(\"Hello, World.\") "],
		"description": "Creates a .Net Pop-up message"
	},

	"PowerShell-OKCancel": {
		"prefix": "psPOWERSHELLOKCANCEL",
		"body": [
			"#1:Cancel",
			"#2:Retry Ignore",
			"#3:No Cancel",
			"#4:No",
			"#5:Cancel",
			"$$TextMsg = \"Do you wish to continue?\"",
			"[System.Reflection.Assembly]::LoadWithPartialName(\"System.Windows.Forms\")",
			"$$Output = [System.Windows.Forms.MessageBox]::Show($$this,\"$$TextMsg\",\"Confirm Action\",1)",
			"if ($$Output -eq \"CANCEL\")",
			"{Exit}",
			"Else",
			"{#What to do when continuing here.}"
		],
		"description": "Displays a windows popup with OK cancel buttons and cancels if selected"
	},

	"RemoveComputerFromAD": {
		"prefix": "psREMOVECOMPUTERFROMAD",
		"body": [
			"$$Server = \"COMPUTERNAME\"",
			"$$searcher = [adsisearcher][adsi]",
			"$$searcher.filter =\"(cn=$$Server)",
			"#Search Active Directory for the current location of the computer object",
			"$$searchparm = $$searcher.FindOne()",
			"#Assign $$deleteoldcomp to the found path",
			"$$deleteoldcomp = $$searchparm.path",
			"#Assign the ADSI object to a variable",
			"$$delcomp = [adsi](\"$$deleteoldcomp\")",
			"try {$$delcomp.deletetree()}catch{}",
			"$$delcomp.setinfo() "
		],
		"description": "Removes a computer account from Active Directory"
	},

	"Run-Elevated": {
		"prefix": "psRUNELEVATED",
		"body": [
			"# Get the ID and security principal of the current user account\n$$myWindowsID=[System.Security.Principal.WindowsIdentity]::GetCurrent()\n$$myWindowsPrincipal=new-object System.Security.Principal.WindowsPrincipal($$myWindowsID)\n \n",
			"# Get the security principal for the Administrator role\n$$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator",
			"# Check to see if we are currently running \"as Administrator\"",
			"if ($$myWindowsPrincipal.IsInRole($$adminRole))",
			"{",
			"# We are running \"as Administrator\" - so change the title and background color to indicate this",
			"$$Host.UI.RawUI.WindowTitle = $$myInvocation.MyCommand.Definition + \"(Elevated)\"",
			"$$Host.UI.RawUI.BackgroundColor = \"Black\"",
			"$$Host.UI.RawUI.ForegroundColor = \"Yellow\"",
			"clear-host",
			"}",
			"else",
			"{",
			"# We are not running 'as Administrator' - so relaunch as administrator",
			"# Create a new process object that starts PowerShell",
			"$$newProcess = new-object System.Diagnostics.ProcessStartInfo 'PowerShell'",
			"# Specify the current script path and name as a parameter",
			"$$newProcess.Arguments = $$myInvocation.MyCommand.Definition",
			"# Indicate that the process should be elevated",
			"$$newProcess.Verb = \"runas\"",
			"# Start the new process\n   [System.Diagnostics.Process]::Start($$newProcess)",
			"# Exit from the current, unelevated, process",
			"exit",
			"}",
			"# Run your code that needs to be elevated here "
		],
		"description": "Forces a script to run in elevated mode."
	},

	"Send-Email": {
		"prefix": "psSENDEMAIL",
		"body": [
			"$$MailFrom = \"NoReply@your.company.com\"",
			"$$MailTo = \"MyName@your.company.com\"",
			"$$MailServer = \"smtp.your.company.com\"",
			"$$Subject = \"CHANGE THIS SUBJECT\"",

			"#...................................",
			"# Email Settings",
			"#...................................",

			"$$smtpsettings = @{",
			"To =  $$MailTo",
			"From = $$MailFrom",
			"Subject = $$Subject",
			"SmtpServer = $$MailServer",
			"}",

			"$$htmlcontent = \"<p>Say Something Brillant Here</p><br/><img src='https://www3.your.company.com/order/com/your.company/portal/images/dceIcons/Logo921x855.png' width='15%' height='15%'>\"",

			"#Send the mail message",
			"Send-MailMessage @smtpsettings -Body $$htmlcontent -BodyAsHtml -Encoding ([System.Text.Encoding]::UTF8) #-Attachments $$outfile"
		],
		"description": "Function for sending mail"
	},

	"Yes/No Prompt": {
		"prefix": "psYESNOPROMPT",
		"body": ["$$YesNo = new-object -comobject wscript.shell\n$$intAnswer = $$YesNo.popup(\"Do you want to do something?\",0,\"Do Something With Yes No\",4)\nIf ($$intAnswer -eq 6) {\n  \"#Yes Code\"\n} else {\n  \"#No Code\"\n}"],
		"description": "Prompt with Yes/No Popup"
	},

	"AutoClean-PSSessions": {
		"prefix": "psAUTOCLEANPSSESSIONS",
		"body": ["Get-PSSession | Where-Object { $$_.State -eq \"Closed\" -or $$_.State -eq \"Broken\" } | Remove-PSSession \r\n\r\n   "],
		"description": "Removes broken or disconnected PS Sessions"
	}
}