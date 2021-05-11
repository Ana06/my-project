$ErrorActionPreference = 'Stop'
$toolsDir = $env:ChocolateyPackageFolder

# Download and unzip
$url = "https://github.com/fireeye/capa/releases/download/v1.6.3/capa-v1.6.3-windows.zip"
$checksum = "00e8d32941b3a1a58a164efc38826099fd70856156762647c4bbd9e946e41606"
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = $checksum
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs

$target = Join-Path $toolsDir "capa.exe"
Install-BinFile -Name $env:ChocolateyPackageName -Path $target