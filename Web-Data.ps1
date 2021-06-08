# Get Data From an API

function Get-ThisDaysArticlesByYear {
    param(
        $articlesFromYear = (Get-Date | Select-Object -ExpandProperty Year),
        $NytApiUrl = 'https://api.nytimes.com/svc/archive/v1',
        [Parameter(Mandatory = $true)]
        $ApiKey
    )

    $currentMonth = ( Get-Date | `
            Select-Object -ExpandProperty Month)

    $currentDay = (Get-Date | `
            Select-Object -ExpandProperty Day)

    Invoke-WebRequest `
        -uri $NytApiUrl/$($articlesFromYear)/$($currentMonth).json?api-key=$ApiKey | `
        ConvertFrom-Json -AsHashTable | `
        Select-Object -ExpandProperty response | `
        Select-Object -expandproperty docs | `
        Where-Object { 
        ($_.pub_date | `
                Select-Object Day) -match $currentDay
    } | `
        Select-Object -ExpandProperty headline | `
        Select-Object main
}

Get-ThisDaysArticlesByYear -ApiKey (Get-Secret -Name nyt-api-key -AsPlainText)