#Get text input and set up variables for looping through data to build Elf list
$RawData = Get-Content -Path "Day1Input.txt" #-Delimiter
$AllElves = New-Object System.Collections.ArrayList
$ElfNum = 0
$ThisElf = 0
ForEach($entry in $RawData){
    if(""-eq $Entry){

        $AllElves.add([PSCustomObject]@{ 
        Name = "Elf$ElfNum"
        Calories = $ThisElf
        })
        $elfNum = $ElfNum + 1
        $thisElf = 0

    }
    else{
        $ThisElf += $entry
    }
}
$AllElves = $AllElves | Sort-Object -Property Calories
Write-Output "The Elf with the most Calories is $($AllElves[-1].Name) with $($AllElves[-1].Calories) calories."
$TotalOfTop3 = $AllElves[-1].Calories + $AllElves[-2].Calories + $AllElves[-3].Calories
Write-Output "The top three leves are carrying $totalOfTop3 calories"
