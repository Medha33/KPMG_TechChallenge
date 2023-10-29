Connect-AzAccount -TenantId mm333

Select-AzSubscription -Subscription 333mm

$metadata = Get-AzResource -Name test* -ResourceGroupName RG-TEST-001

$metadatajson = $metadata | ConvertTo-Json
$metadatajson | Out-File "F:\Medha\Test\metadata.json"

$Keys = ''

$ValidKeys = @(
    '1'
    '2'
    '3'
    '4'
    '5'
    )

Write-Host "Press 1 for ResourceId"
Write-Host "Press 2 Location"
Write-Host "Press 3 ResourceType"
Write-Host "Press 4 Tags"
Write-Host "Press 5 to exit"
Write-Host "" `n

while ([string]::IsNullOrEmpty($Keys))
    {
    $Keys = Read-Host 'Select Key '
    if ($Keys -notin $ValidKeys)
        {
        Write-Warning ('Your Selection [ {0} ] is not valid.' -f $Keys)
        Write-Warning  'Please try again & choose valid option'

        $Keys = ''
        pause
        }
        Write-Host "" `n

         switch ($Keys)
        {
        '1' {
                    Write-Host "Resource ID:" $metadata.ResourceId
                    Write-Host "" `n
            break}

        '2' {
                    Write-Host "Location:" $metadata.Location
                    Write-Host "" `n
            break}

        '3' {
                    Write-Host "ResourceType:" $metadata.ResourceType
                    Write-Host "" `n
       
            break}

        '4' {
                    Write-Host "Tags:" $metadata.Tags
                    Write-Host "" `n
            break}
        '5'{
            break}

        }
    }