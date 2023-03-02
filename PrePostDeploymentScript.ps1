param
(
    [parameter(Mandatory = $false)] [String] $armTemplate,
    [parameter(Mandatory = $false)] [String] $ResourceGroupName,
    [parameter(Mandatory = $false)] [String] $DataFactoryName,
    [parameter(Mandatory = $false)] [Bool] $predeployment=$true,
    [parameter(Mandatory = $false)] [Bool] $deleteDeployment=$false,
    [parameter(Mandatory = $false)] [string] $secrets
)

$clientId = $secrets.clientId
$clientSecret = $secrets.clientSecret
$tenantId = $secrets.tenantId
$subscriptionId = $secrets.subscriptionId

$credential = New-Object System.Management.Automation.PSCredential ($clientId, $clientSecret)

Connect-AzAccount -Credential $credential -Tenant $tenantId -ServicePrincipal
