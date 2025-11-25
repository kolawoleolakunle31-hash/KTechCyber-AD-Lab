Import-Module activedirectory

$OUAD = Import-csv C:\Users\Administrator\Documents\OU.csv

#Loops Through each line in the csv file

foreach ($ou in $OUAD) {

$name = $ou.Name
$path = $ou.path

# Create OU

New-ADOrganizationalUnit -Name $name -path $path

}

