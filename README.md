# KPMG_TechChallenge

Question 1:

For a 3-tier architecture, 
UI Tier: A Linux based Web App
Application Tier: A Linux based Function App
Data Tier: MSSQL DB

Resources to be created:
1. Resource Group
2. App Service Plan
3. Web App
4. Storage Account
5. Function App
6. MSSQL Server
7. MSSQL DB

Question 2: 

The script extracts the metadata of an Azure instance. 
Additionally, it also retrieves a particular key-value as per the user's choice.

By using Get-AzResource command, we're first extracting the metadata of the particular Azure instance, then converting it to JSON and storing it in a separate JSON file as well. 
Then the user is asked to enter the key for which they want to know the value. 
Here, we've used Switch case for different user choices. 


Question 3:

We have taken a nested object as an input. 
The function returns the value, when the object and a key is passed as parameters. 

