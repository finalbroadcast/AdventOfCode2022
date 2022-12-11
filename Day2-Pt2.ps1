$StrategyKey = Get-Content "Day2Input.txt"
$TotalScore = 0
foreach ($play in $StrategyKey){
    $roundScore = 0
    $thisPlay = $play.Split(' ')
    $roundScore = 0
    if($thisPlay[0] -eq 'A'){
        Switch($thisPlay[1]){
            'X'{$roundScore = 3}
            'Y'{$roundScore = 4}
            'Z'{$roundScore = 8}
        }
    }
    elseif($thisPlay[0] -eq 'B'){
        Switch($thisPlay[1]){
            'X'{$roundScore = 1}
            'Y'{$roundScore = 5}
            'Z'{$roundScore = 9}
        }
    }
    elseif($thisPlay[0] -eq 'C'){
        Switch($thisPlay[1]){
            'X'{$roundScore = 2}
            'Y'{$roundScore = 6}
            'Z'{$roundScore = 7}
        }
    }
    $TotalScore += $roundScore
}
Write-Output "Your final score is $totalScore"
