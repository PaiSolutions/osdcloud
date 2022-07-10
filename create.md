### Setup Teamplate  

Setup a new template with WinRE to support Wireless
New-OSDCloudTemplate -WinRE  

## Get-OSDCloudWorkspace

View the current location of your OSD Cloud Workspace.  
>Get-OSDCloudWorkspace  

Recommnd you create a new workspace  
>Set-OSDCloudWorkspace ******  
>New-OSDCloudWorkspace ******

## CloudDriver

Recommend you install following drivers into WinPE

>Edit-OSDCloudWinPE -CloudDriver *

- Dell Enterprise Driver Cab
- HP WinPE 10 Driver Pack
- Intel Ethernet Drivers
- Lenovo Dock Drivers (Microsoft Catalog)
- Nutanix
- USB Dongles (Microsoft Catalog)
- VMware (Microsoft Catalog)
- WiFi (Intel Wireless Drivers) [Requires WinRE]

### Create a GutHub ZTI (Zero Touch Install) with CloudDrivers

Create a new PS1 file with following name (up to you) and upload it to your GitHub repository,

W10-Enterprise-21h2-en-US.ps1

In this file put the following code
```
Write-Host -ForegroundColor Green “Starting OSDCloud ZTI”
Start-Sleep -Seconds 5

#Start OSDCloud ZTI the RIGHT way

Write-Host -ForegroundColor Green “Start OSDCloud”
Start-OSDCloud -OSLanguage en-US -OSName 'Windows 10 21H2 x64' -OSEdition Enterprise -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”
Start-Sleep -Seconds 20

wpeutil reboot
```
Once you have uploaded your file, view the file and click on the Raw icon, then copy the URL  

Now run the following command
>Edit-OSDCloudWinPE -CloudDriver * -WebPSScript *****

### Create ISO
Run the following command to create your OSDCloudWinPE ISO
> 


https://github.com/OSDeploy/OSD/blob/master/Docs/Start-OSDCloud.md
