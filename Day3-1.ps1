$data = Get-Content -Path ./day3data.txt

# Create Arrays
$0array = @()
$1array = @()
$2array = @()
$3array = @()
$4array = @()
$5array = @()
$6array = @()
$7array = @()
$8array = @()
$9array = @()
$10array = @()
$11array = @()

$gamma = @()
$epsilon = @()

#Populate Arrays
foreach ($line in $data) {
    $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11 = $line -split '\B'
    $0array += $0
    $1array += $1
    $2array += $2
    $3array += $3
    $4array += $4
    $5array += $5
    $6array += $6
    $7array += $7
    $8array += $8
    $9array += $9
    $10array += $10
    $11array += $11
}

$i = 0
while ($i -lt 12) {
    $array = $null
    $NumZeros = 0
    $NumOnes = 0

    $array = switch ($i) {
        0 { $0array }
        1 { $1array }
        2 { $2array }
        3 { $3array }
        4 { $4array }
        5 { $5array }
        6 { $6array }
        7 { $7array }
        8 { $8array }
        9 { $9array }
        10 { $10array }
        11 { $11array }
    }

    #$array
    foreach ($line in $array) {

        switch ($line) {
            0 { $NumZeros++ }
            1 { $NumOnes++ }
        }
    }

    if ($NumZeros -ge $NumOnes) {
        $gamma += 0
        $epsilon += 1
    }
    elseif ($NumOnes -ge $Numzeros) {
        $gamma += 1
        $epsilon +=0
    }
    $i++
}

$GammaNumber = $gamma | Join-String
$EpsilonNumber = $epsilon | Join-String

$GammaDecimal = [Convert]::ToInt32($GammaNumber, 2)
$EpsilonDecimal = [Convert]::ToInt32($EpsilonNumber, 2)

$Calculation = $GammaDecimal * $EpsilonDecimal
Write-Output "Final Number is $calculation"