Import-Module activedirectory

#Import csv file

$OUAD = Import-CSV -path "C:\Users\Administrator\Documents\OUDelete1.csv"

#Loop through csv file

foreach ($ou in $OUAD) {

    $name = $ou.Name 
	$path = $ou.Path
	
#This below deletes the OU
	
	try {
	Get-ADOrganizationalUnit -Identity $path | Set-ADObject -ProtectedFromAccidentalDeletion:$false -PassThru |
	Remove-ADOrganizationalUnit -Confirm:$false
	
#Check if that was done
	
Write-Host "Successfully deleted $name" -ForegroundColor Green }
	
Catch {
Write-Host "Failed to delete $name because '$($_Exception.Massage)' " -ForegroundColor Red

}

}