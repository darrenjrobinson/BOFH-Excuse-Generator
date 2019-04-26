$breweryDBURI = 'https://sandbox-api.brewerydb.com/v2/'
$key = 'yourBreweryDBKey'

$stylesURI = "$($breweryDBURI)styles?key=$($key)"
$beerStyles = Invoke-RestMethod -Uri $stylesURI -Method Get
$beerStyles.data.count 

if ($beerStyles){
    [int]$rndBeer = Get-Random -Minimum -1 -Maximum $beerStyles.data.count
    $rndBeer
    $rndBeerDetails = $beerStyles.data[$rndBeer]
    $output = $rndBeerDetails.name
    $rndBeerDetails
    $output
}

Out-File -Encoding Ascii -FilePath $res -inputObject $output
