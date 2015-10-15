function Convert-FromLittleEndian{
    param([string] $inputString)

    $returnString = ""
    if ($inputString.IndexOf(" ") -ne -1){
        $inputString = $inputString.Split(" ") -join ""
    }
    if (($inputString.Length % 2) -ne 0){
        $inputString = "0" + $inputString
    }
    $numBytes = $inputString.Length / 2
    $i = $inputString.Length
    while ($i -gt 0){
        $i = $i - 2
        $returnString = $returnString + $inputString[$i] + $inputString[$i+1]
    }

    return $returnString
}
