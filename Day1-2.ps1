$Measurement = [int[]](Get-Content -Path ./Day1Data.txt)

$totallines = $Measurement | Measure-Object -Line
$maxlines = ($totallines.Lines)

$current = 3
$previous = 2
$TotalLargerMeasurements = 0

While ($current -le $maxlines) {
    $currentset = $Measurement[$current] + $Measurement[$current - 1] + $Measurement[$current - 2]
    $previousset = $Measurement[$previous] + $Measurement[$previous - 1] + $Measurement[$previous - 2]

    if ($currentset -gt $previousset) {
        $TotalLargerMeasurements++
    }
    $current++
    $previous++
}

$TotalLargerMeasurements