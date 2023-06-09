$path = "/Sql
$out  = "/Sql/Out.sql"

Get-ChildItem $path -Filter *.sql| % {
    $file = $_.Name
    " " | Out-File -Append $out
    "-----------------------------------" | Out-File -Append $out
    "--${file}:" | Out-File -Append $out
           " " | Out-File -Append $out
    Get-Content $_.FullName | % {
        "$_" | Out-File -Append $out
    }
}
