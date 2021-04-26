#using json settings in powershell

$data = Import-Csv -Path "D:\_ONEDRIVE\OneDrive\_Coding\_Projects\PowerShell\PowerShellAndJson\data.csv" -Delimiter ';'
$data | ConvertTo-Json | Add-Content -Path 'out.json'

$json_data = Get-Content -Path 'out.json'
$data2 = $json_data | ConvertFrom-Json

foreach ($item in $data2) {
    $item.name 
}