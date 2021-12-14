$data = Import-Csv -Path ./Day2Data.txt -Delimiter ' ' -Header 'Direction', 'Number'

[int]$forward = 0
[int]$up = 0
[int]$down = 0
[int]$aim = 0
[int]$depthchange =0
[int]$depth = 0

foreach ($item in $data) {
    $number = $item.Number

    Switch ($item.Direction) {
        'forward' {
            $forward += $number
            $depth += $aim * $number
        }
        'up' { $aim -= $number}
        'down' { $aim += $number}
    }

}

Write-Output "Forward ahead $forward"
Write-Output "Depth is $depth"
$calculation = $forward * $depth
Write-Output "Calulation is $calculation"