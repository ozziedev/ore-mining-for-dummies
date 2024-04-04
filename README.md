
## Get started

NOTE: This guide assumes you have all the the initial setup completed

## Example of application running (showing w/ errors and repeat helper)
![Example](https://github.com/ozziedev/ore-mining-for-dummies/blob/main/Example.PNG?raw=true)

## Steps
1. Download the code to a folder called `C:\one-miner\`

2. Now we need to enable Powershell scripts to be run (they won't be allowed by default in some cases)

3. Search for `Powershell` in the Start menu

4. Right click `Powershell` and select 'Run as administrator'

5. Enter the following commands (press 'Enter'to submit each answer)
![Execution policy](https://github.com/ozziedev/ore-mining-for-dummies/blob/main/Execution-Policy-Setup.png?raw=true)

-  `Set-ExecutionPolicy -Scope CurrentUser`

-  `Unrestricted`

-  `Y`
 
6. You should now be able to run scripts

7. Right click and edit `RunMe.bat`

8. Update `set pathname=C:\Users\Ashley\.config\solana\id.json` to your `id.json` location, for example `set pathname=C:\Users\imadeveloper\.config\solana\id.json`. This should be taken care of as part of your initial setup operations.

9. Save the file

10. Double click `RunMe.bat` and the application should now begin to execute.

11. Buy Ash a big mac
