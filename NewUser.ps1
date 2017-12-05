$DisplayName = $GivenName + " " + $Initials + " " + $Surname
New-ADUser -Name $tbUserID.Text -SamAccountName $tbUserID.Text -Description $tbDescription.Text -GivenName $tbFirstName.Text -Initials $tbMI.Text -Surname $tbLastName.Text -EMailAddress $tbEmail.Text -DisplayName "$DisplayName" -Path $tbOU.Text -Enabled $False
$Password = ConvertTo-SecureString "$tbPassword.Text" -AsPlainText -Force
Set-ADAccountPassword -Identity $tbUserID.Text -Reset -NewPassword $Password

If ($cbnoExpire.Checked)
{
    $NoExpire = $True
}
Else
{
    $NoExpire = $False
}

If ($cbMustchange.Checked)
{
    $MustChange = $True
}
Else
{
    $MustChange = $False
}
Set-ADUser -Identity $tbUserID.Text -Enabled $True -PasswordNeverExpires $NoExpire -ChangePasswordAtLogon $MustChange
$ADTool.Close()