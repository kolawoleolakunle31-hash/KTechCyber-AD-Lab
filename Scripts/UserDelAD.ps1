import-module activedirectory

#import users from csv file to variable

$Users = Import-Csv 'C:\Users\Administrator\Documents\DelUserAD.csv'

Foreach ($User in $Users) 

{
$Username = $User.SamAccountName

Try
{

#Verify user from CSV exists in Active Directory

Get-ADUser $Username -ErrorAction stop | out-Null
Remove-ADUser $Username -Confirm:$False
Write-Host "$Username removed successfully" -ForegroundColor Green
}
Catch
{
Write-Host "$Username '$Username' not find in Active Directory" -ForegroundColor Red

}
}