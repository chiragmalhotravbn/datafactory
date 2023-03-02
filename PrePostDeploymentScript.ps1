param
(
    [parameter(Mandatory = $false)] [String] $armTemplate,
    [parameter(Mandatory = $false)] [String] $ResourceGroupName,
    [parameter(Mandatory = $false)] [String] $DataFactoryName,
    [parameter(Mandatory = $false)] [Bool] $predeployment=$true,
    [parameter(Mandatory = $false)] [Bool] $deleteDeployment=$false,
    [parameter(Mandatory = $false)] [string] $AzureCredentials
)

Write-output AzureCredentials

$secrets = $cred | ConvertFrom-Json

#Set Variabless
Write-output secrets

$clientId = $secrets.clientId
$clientSecret = $secrets.clientSecret
$subscriptionId = $secrets.subscriptionId
$tenantId = $secrets.tenantId

Write-output AzureCredentials
