$allAssignments = Get-Content -Path 'Day4Input.txt';
$SharedAssignmentList = 0
#Go through all of the Assignments, split the string based on the , character, then split each assignment string on the - 
#character and then compare the top and bottom range on each to see if it is completely inside the other. 
foreach($assignment in $allAssignments){
    $thisAssignment = @($assignment.Split(','))
    $elf0 = @($thisAssignment[0].Split('-'))
    $elf1 = @($thisAssignment[1].Split('-'))
    if(([int]$($elf0[0]) -ge [int]$($elf1[0]))-and ([int]$($elf0[1]) -le [int]$($elf1[1]))){
        $SharedAssignmentList+=1
    }
    elseif(([int]$($elf1[0]) -ge [int]$($elf0[0]))-and ([int]$($elf1[1]) -le [int]$($elf0[1]))){
        $SharedAssignmentList+=1
    }
}
#After the loop completes output the number of shared assignments 
Write-Output "The total number of shared assignments is $($SharedAssignmentList)"
