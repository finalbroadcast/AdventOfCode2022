$allRucksacks = Get-Content -Path 'Day3Input.txt'
#Build out dictionaries for values, note to call add 1 for correct value for lowercase and 27 as array starts at 0
$upperCaseDictionary = @('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z')
$lowerCaseDictionary = @('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
#Create array to hold each common item. 
$commonList = New-Object System.Collections.ArrayList
$ElfCrewMax = ($allRucksacks.Length - 3)
#Step through $allRucksacks in three to find common item for each groupl. 
for($i=0;$i -le $ElfCrewMax; $i+=3){
   $elfOne = ($allRucksacks[$i]).toCharArray()
   $elfTwo = ($allRucksacks[$i+1]).toCharArray()
   $elfThree = ($allRucksacks[$i+2]).toCharArray()
   foreach ($item in $elfOne){
    if($elfTwo.Contains($item) -and $elfThree.Contains($item)){
        $commonList.Add($item)
        break;
    }
   }
}
#Step through each of the items in the duplicate list to add up values to pass to Priority Sum variable then write the output
$prioritySum = 0
forEach ($item in $commonList){
    if($upperCaseDictionary -ccontains("$item")){
        $prioritySum += $($upperCaseDictionary.IndexOf("$item") + 27)
    }
    if($lowerCaseDictionary -ccontains("$item")){
        $prioritySum += ($lowerCaseDictionary.IndexOf("$item") + 1)
    }
}
Write-Output "Total sum of the item priority is $($prioritySum)"
