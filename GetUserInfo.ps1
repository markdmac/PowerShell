#$UserID = $tbUserID.text
$UserID = "markdmac"
$User = Get-ADUser -Identity $UserID -Properties GivenName,initials,Surname,mail,Description,MemberOf,DistinguishedName | Select GivenName,initials,Surname,mail,Description,MemberOf,DistinguishedName
$FirstName = $User.GivenName
$MI = $User.initials
$LastName = $User.Surname
$Email = $User.Mail
$Description = $User.Description
$MemberOf = $user.MemberOf

$Groups = Get-ADGroup -Filter * | Select Name,DistinguishedName
#Delete all items then rebuild the list
$clbGroups.Items.Clear()
$i = 0
ForEach ($Group in $Groups)
{
  $clbGroups.items.Add($Group.Name)
 If ($MemberOf -contains $Group.DistinguishedName)
 {
    $clbGroups.SetItemChecked($i, $True)
 }
 $i++    
}
$tbDescription.text = $Description
$tbFirstName.text = $FirstName
$tbMI.Text = $MI
$tbLastName.text = $LastName
$tbEmail.text = $Email
#Get the OU
$ParentOU = ($User.DistinguishedName -split ",", 2)[1]
