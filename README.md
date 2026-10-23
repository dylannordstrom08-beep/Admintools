# AdminTools
AdminTools är ett PowerShell-baserat administrationsverktyg utvecklat som en del av kursen Admin Scripting.
Projektet använder en meny i terminalen för att ge användaren åtkomst till olika administrativa verktyg och informationsscript.
---
## Funktioner
AdminTools innehåller flera moduler som kan köras via en meny:
### System Information
Visar grundläggande information om datorn, till exempel:
- Datornamn
- Operativsystem
- Senaste uppstartstid
### Network Information
Visar nätverksinformation för datorn, till exempel:
- IPv4-adresser
- Nätverkskort
- Anslutningsinformation
### Running Services
Visar tjänster som för närvarande körs i Windows.
### CPU Information
Visar information om processorn:
- Modellnamn
- Antal kärnor
- Antal logiska processorer
- Maximal klockfrekvens
---
## Projektstruktur
```text
adminToolkit/
│
├── scripts/
│   └── menu.ps1
│
├── modules/
│   ├── systeminfo.ps1
│   ├── network.ps1
│   ├── services.ps1
│   └── cpuinfo.ps1
│
├── logs/
│
└── README.md
│
└── .gitignore

```
---
## Loggning
Projektet använder loggfiler för att registrera när moduler körs.
Information som sparas:
- Datum och tid
- Modulnamn
- Användarnamn
Loggfiler sparas i mappen:
```text
logs/
```
---
## Hur man kör projektet
Öppna PowerShell eller Visual Studio Code.
Navigera till projektmappen:
```powershell
cd adminToolkit
```
Gå till scripts-mappen:
```powershell
cd scripts
```
Starta programmet:
```powershell
.\menu.ps1
```
Välj sedan ett alternativ från menyn.
---
## Tekniker som används
Projektet använder bland annat:
- PowerShell
- Get-CimInstance
- Get-Service
- Get-NetIPAddress
---
## Författare
Utvecklat som ett kursprojekt inom Admin Scripting.
