$Groups = Get-ADGroup -Filter * | Select Name,DistinguishedName

ForEach ($Group in $Groups)
{
 $clbGroups.items.Add($Group.Name)    
}

