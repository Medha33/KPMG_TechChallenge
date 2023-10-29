function Get-NestedValue {
    param (
        [Parameter(Mandatory=$true)]
        [PSObject]$obj,
       
        [Parameter(Mandatory=$true)]
        [string]$key
    )

    $keys = $key -split '/'
    $currentObj = $obj

    foreach ($k in $keys) {
        if ($currentObj -is [System.Collections.Hashtable] -and $currentObj.ContainsKey($k)) {
            $currentObj = $currentObj[$k]
        }
        else {
            Write-Host "Key not found: $k"
            return $null
        }
    }

    return $currentObj
}

$object = @{
    "a" = @{
        "b" = @{
            "c" = "d"
        }
    }
    }

$key = Read-Host 'Enter Key'
$value = Get-NestedValue -obj $object -key $key

$valueJson = $value | ConvertTo-Json
Write-Host $valueJson

