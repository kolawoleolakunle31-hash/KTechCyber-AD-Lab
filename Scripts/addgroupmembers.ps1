New-ADGroup -Name "Board of Directors" -SamAccountName BOD -GroupCategory Security -GroupScope Global -DisplayName "Board of Dirctors" -Path "OU=Groups,OU=Project,DC=KTechcyber,DC=root,DC=local"
New-ADGroup -Name "Governance Team" -SamAccountName GT -GroupCategory Security -GroupScope Global -DisplayName "Governance Team" -Path "OU=Groups,OU=Project,DC=KTechcyber,DC=root,DC=local"
New-ADGroup -Name "Project Admins" -SamAccountName PA -GroupCategory Security -GroupScope Global -DisplayName "Project Admins" -Path "OU=Groups,OU=Project,DC=KTechcyber,DC=root,DC=local"
New-ADGroup -Name "Security" -SamAccountName CSO -GroupCategory Security -GroupScope Global -DisplayName "Security" -Path "OU=Groups,OU=Project,DC=KTechcyber,DC=root,DC=local"
New-ADGroup -Name "Maintenance" -SamAccountName FOREMAN -GroupCategory Security -GroupScope Global -DisplayName "Maintenance" -Path "OU=Groups,OU=Project,DC=KTechcyber,DC=root,DC=local"

Add-ADGroupMember -Identity BOD -Members HMRK,Goodday
Add-ADGroupMember -Identity GT -Members Tonessky,Davy
Add-ADGroupMember -Identity PA -Members Minee,Aurorah
Add-ADGroupMember -Identity CSO -Members Chased,Blad
Add-ADGroupMember -Identity FOREMAN -Members TeeGe,Damcute


Write-Host "The group as been created successAdd-ADGroupMember -Identity BOD -Members HMRKfully and members added to the group" -ForeGroundColor green