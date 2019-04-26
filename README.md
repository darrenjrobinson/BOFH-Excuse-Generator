# BOFH-Excuse-Generator
Demo Azure Web App that generates a Bastard Operator from Hell excuse and suggests a beer to help remedy the situation
Associated Global Azure Bootcamp 2019 presentation is available here 

# Web App
Enter the Web App Directory

`npm build`
`npm start`

browse to http://localhost:3000

# Azure Functions
Create a v1 Azure Function App Plan

## Excuse Generator
Create a HTTP Trigger PowerShell Function for the Excuse Generator
Copy the contents of run.ps1 to your HTTP Trigger PowerShell Function

## Beer DB Lookup
Create a HTTP Trigger PowerShell Function for the Brewery DB Lookup
Copy the contents of run.ps1 to your HTTP Trigger PowerShell Function
Get a Brewery DB API Key from https://www.brewerydb.com/ and update the function.
