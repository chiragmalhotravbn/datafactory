param
(
    [parameter(Mandatory = $false)] [String] $armTemplate,
    [parameter(Mandatory = $false)] [String] $ResourceGroupName,
    [parameter(Mandatory = $false)] [String] $DataFactoryName,
    [parameter(Mandatory = $false)] [Bool] $predeployment=$true,
    [parameter(Mandatory = $false)] [Bool] $deleteDeployment=$false,
    [parameter(Mandatory = $false)] [string] $clientId,
    [parameter(Mandatory = $false)] [string] $clientSecret,
    [parameter(Mandatory = $false)] [string] $tenantId,
    [parameter(Mandatory = $false)] [string] $subscriptionId  
)

Write-output $clientId
Write-output $clientSecret
