param (
    [string]$username,
    [string]$firstName,
    [string]$lastName,
    [string]$password
)

# Create a new user
New-ADUser -Name "$firstName $lastName" `
           -GivenName $firstName `
           -Surname $lastName `
           -SamAccountName $username `
           -UserPrincipalName "$username@yourdomain.com" `
           -Path "OU=Users,DC=yourdomain,DC=com" `
           -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) `
           -Enabled $true

Write-Host "User $firstName $lastName created successfully!"
Add user account creation script.
