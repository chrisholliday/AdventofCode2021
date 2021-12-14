$data = Import-Csv -Path ./Day2Data.txt -Delimiter ' ' -Header 'Direction', 'Number'

[int]$forward = 0
[int]$up = 0
[int]$down = 0
[int]$aim = 0
[int]$depthchange =0
[int]$depth = 0


foreach ($item in $data) {
    Switch ($item.Direction) {
        'forward' { $forward = $forward + $item.Number }
        'up' { $up = $up + $item.Number }
        'down' { $down = $down + $item.Number }
    }
}

$depth = $down - $up

$calculation = $forward * $depth

Write-Output "Final Answer is $calculation"