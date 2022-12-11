$StrategyKey = Get-Content "Day2Input.txt"
$TotalScore = 0
foreach ($play in $StrategyKey){
    $roundScore = 0
    $thisPlay = $play.Split(' ')
    $roundScore = 0
    Switch($thisPlay[1]){
        'X' {$roundScore = 1;}
        'Y' {$roundScore = 2;}
        'Z' {$roundScore = 3;}
    }
    if((($thisPlay[0]-eq 'A' ) -and ($thisPlay[1] -eq 'X')) -or (($thisPlay[0] -eq 'B')-and ($thisPlay[1] -eq 'Y')) -or (($thisPlay[0] -eq 'C')-and ($thisPlay[1] -eq 'Z'))){
        $roundScore += 3
    }
    elseif((($thisPlay[0] -eq 'A') -and ($thisplay[1] -eq 'Y')) -or (($thisPlay[0] -eq 'B') -and ($thisPlay[1] -eq 'Z')) -or (($thisPLay[0] -eq 'C') -and ($thisPLay[1] -eq 'X' ))){
        $roundScore += 6
    }
    $TotalScore += $roundScore
}
Write-Output "Your final score is $totalScore"
