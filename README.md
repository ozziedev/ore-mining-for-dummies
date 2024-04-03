
## Get started

NOTE: This guide assumes you have all the the initial setup completed

## Example of application running (showing w/ errors and repeat helper)
![Example](https://github.com/ozziedev/ore-mining-for-dummies/blob/main/Example.PNG?raw=true)

## Steps
1. Create a new folder called 'one-miner' at `C:\`

2. Save the `One-Miner.ps1` script to the `C:\one-miner\` folder 

3. Now we need to enable Powershell scripts to be run (they won't be allowed by default in some cases)

4. Search for `Powershell` in the Start menu

5. Right click `Powershell` and select 'Run as administrator'

6. Enter the following commands (press 'Enter'to submit each answer)
![Execution policy](https://github.com/ozziedev/ore-mining-for-dummies/blob/main/Execution-Policy-Setup.png?raw=true)

-  `Set-ExecutionPolicy -Scope CurrentUser`

-  `Unrestricted`

-  `Y`
 
7. You should now be able to run scripts

8. Right click and edit `RunMe.bat`

9. Update `set pathname=C:\Users\Ashley\.config\solana\id.json` to your `id.json` location, for example `set pathname=C:\Users\imadeveloper\.config\solana\id.json`. This should be taken care of as part of your initial setup operations.

10. Save the file

11. Double click `RunMe.bat` and the application should now begin to execute.

12. Buy Ash a big mac
