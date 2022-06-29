if (Get-Module -ListAvailable -Name Az) {
    Write-Host "Azure module installed..."
}
else {
    Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
}

$DisplayName = Read-Host -prompt "New user display name"
$MailNickname = Read-Host -prompt "New user mail nickname"
$UserPrincipalName = Read-Host -prompt "New user UPN"
$Password = Read-Host -AsSecureString -Prompt "New user password"

New-AzADUser -DisplayName $DisplayName -MailNickname $MailNickname -UserPrincipalName "$UserPrincipalName@supercompanyinc.onmicrosoft.com" -Password $Password