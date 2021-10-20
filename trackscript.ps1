
$docs = [Environment]::GetFolderPath("MyDocuments")
$camerapath = Join-Path $docs "iRacing\cameras\tracks"
$carsspath = Join-Path $docs "iRacing\setups"

$tracks = gci $camerapath -Directory | Select Name
$cars = gci $carsspath -Directory | Select Name

foreach($car in $cars){
    $path = Join-Path $carsspath $car.Name
    foreach($track in $tracks){
        $trackperCar = Join-Path $path $track.Name
        if(-NOT (Test-Path $trackperCar)){
            New-Item -Path $path -ItemType Directory -Name $track.Name | Out-Null
        }
    }
}