Skriv-vært -ForegroundColor Green "Starter OSDCloud ZTI"

Start-Sleep-Sekunder 5

#Change Display Resolution for Virtual Machine

hvis ((Get-MyComputerModel) -match 'Virtual') {

Skriv-vært -ForegroundColor Green "Indstilling af skærmopløsning til 1600x"

Set-DisRes 1600

}

#Sørg for, at jeg har det nyeste OSD-indhold


Skriv-vært -ForegroundColor Green "Opdatering af OSD PowerShell-modul"

Install-Module OSD -Force

Skriv-vært -ForegroundColor Green "Importerer OSD PowerShell-modul"

Import-modul OSD -Force

#Start OSDCloud ZTI den rigtige måde

Skriv-vært -ForegroundColor Green "Start OSDCloud"

Start-OSDCloud -OSLanguage da-dk -OSBuild 21H2 -OSEdition Pro -ZTI

# Genstart fra WinPE

Skriv-vært -ForegroundColor Green "Genstartes på 20 sekunder!"

Start-Sleep-Sekunder 20

genstart wpeutil
