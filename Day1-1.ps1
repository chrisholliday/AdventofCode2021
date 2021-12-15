$Measurement = [int[]](Get-Content -Path ./Day1data.txt)

$totallines = $Measurement | Measure-Object -Line
$maxlines = ($totallines.Lines)

$current = 1
$previous = 0
$TotalLargerMeasurements = 0

While ($current -le $maxlines) {
    if ($measurement[$current] -gt $measurement[$current - 1]) {
        $TotalLargerMeasurements++
    }
    $current++
    $previous++
}
$TotalLargerMeasurements