Write-Host -ForegroundColor Green “Starting OSDCloud ZTI”
Start-Sleep -Seconds 5

#Start OSDCloud ZTI the RIGHT way

Write-Host -ForegroundColor Green “Start OSDCloud”
Start-OSDCloud -OSLanguage en-US -OSName 'Windows 10 21H2 x64' -OSEdition Enterprise -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”
Start-Sleep -Seconds 20

wpeutil reboot