Import-Module activedirectory

#Import csv and pass value to variable $ADUsers

$ADUsers = Import-csv "C:\Users\Administrator\Documents\Newusertest2.csv"

#read each row of input data and assign each user details to variables

foreach ($User in $ADUsers) 

{
$Username = $User.name
$Password = $User.password
$Firstname = $User.firstname
$Lastname = $User.lastname
$OU = $User.OU
$email = $User.email
$streetaddress = $User.address
$city = $User.city
$state = $User.state
$zipcode = $User.zipcode
$country = $User.country
$telephone = $User.telephone
$jobtitle = $User.title
$company = $User.company
$department = $User.department

#check that user does not exists in AD 

if (Get-ADUser -F {SamAccountName -eq $Username})

{

#if user exists, display warning

Write-Warning "A user account with username $Username already exists in Active Directory."
}
else
{
#if the user does not exists then create new user in the specified OU

New-ADUser -name "$Firstname $Lastname" `
-SamAccountName "$Username" `
-GivenName "$Firstname" `
-surname "$Lastname" `
-Displayname "$Lastname, $Firstname" `
-Email "$email" `
-Accountpassword (ConvertTo-SecureString "$Password" -AsPlainText -Force) `
-Enabled $true `
-Path $OU

Write-Host "The user $Firstname $Lastname was created successfully"

}

}