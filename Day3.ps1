$allRucksacks = Get-Content -Path 'Day3Input.txt';
#Build out dictionaries for values, note to call add 1 for correct value for lowercase and 27 as array starts at 0
$upperCaseDictionary = @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')
$lowerCaseDictionary = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
#Create array to hold each duplicate item for each rucksack. 
$duplicateList = New-Object System.Collections.ArrayList
#Step through each of the Rucksacks to return list of duplicates
forEach ($ruckSack in $allRucksacks){
    $ruckSackHalf = $(($ruckSack.Length)/2)
    $firstHalf =  ($ruckSack.Substring(0,$ruckSackHalf)).toCharArray()
    $secondHalf = ($rucksack.Substring($ruckSack.Length-$ruckSackHalf)).toCharArray()
    forEach($item in $firstHalf){
        if($SecondHalf -ccontains($item)){
            $duplicateList.add($item)
            break;
        }
    }
}
#Step through each of the items in the duplicate list to add up values to pass to Priority Sum variable then write the output
$prioritySum = 0
forEach ($item in $duplicateList){
    if($upperCaseDictionary -ccontains("$item")){
        $prioritySum += $($upperCaseDictionary.IndexOf("$item") + 27)
    }
    if($lowerCaseDictionary -ccontains("$item")){
        $prioritySum += ($lowerCaseDictionary.IndexOf("$item") + 1)
    }
}
Write-Output "Total sum of the item priority is $($prioritySum)"
