### Setup Teamplate  

Setup a new template with WinRE to support Wireless
New-OSDCloudTemplate -WinRE  

### Get-OSDCloudWorkspace

View the current location of your OSD Cloud Workspace.  
>Get-OSDCloudWorkspace  

Recommnd you create a new workspace  
>Set-OSDCloudWorkspace ******  
>New-OSDCloudWorkspace ******

We have two options for creating a ZTI install. 

### Create a GutHub ZTI (Zero Touch Install)

Create a new PS1 file with following name (up to you) and upload it to your GitHub repository,

W10-Enterprise-21h2-en-US.ps1

In this file put the following code
```
Write-Host -ForegroundColor Green “Starting OSDCloud ZTI”
Start-Sleep -Seconds 5

#Start OSDCloud ZTI the RIGHT way

Write-Host -ForegroundColor Green “Start OSDCloud”
Start-OSDCloud -OSLanguage en-US -OSName 'Windows 10 21H2' -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”
Start-Sleep -Seconds 20

wpeutil reboot
```
Once you have uploaded your file, view the file and click on the Raw icon, then copy the URL  

Now run the following command
>Edit-OSDCloudWinPE -CloudDriver * -WebPSScript *****

### Create a Local ZTI (Zero Touch Install)

Run the following command
Edit-OSDCloudWinPE -CloudDriver * -Startnet "PowerShell.exe Start-OSDCloud -OSLanguage en-US -OSName 'Windows 10 21H2 x64' -OSEdition Enterprise -OSLicense Volume -ZTI -Restart"

### Create ISO
Run the following command to create your OSDCloudWinPE ISO in your workspace. 
> New-OSDCloudISO

### Update ISO with local Drivers

if you wish to have drivers on the USB Drive run the following command

>Update-OSDCloudUSB -DriverPack 

### Update ISO with Local Windows Install

if you wish to have Windows 10 Image on the USD Drive run the following command

>Update-OSDCloudUSB -DriverPack **** -OS -OSLanguage en-US -OSLicense Volume -OSName 'Windows 10 21H2'

## Documentation

[OSDCloud](https://www.osdcloud.com)
[MDM Tech Space Blog post 1](https://blog.mindcore.dk/2021/03/osdcloud-image-devices-without-need-of-2/)  
[MDM Tech Space Blog post 2](https://blog.mindcore.dk/2021/04/osdcloud-image-devices-without-need-of/)

https://github.com/OSDeploy/OSD/blob/master/Docs/Start-OSDCloud.md
