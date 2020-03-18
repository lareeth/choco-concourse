$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v5.8.0/fly-5.8.0-windows-amd64.zip'
$checksum       = 'ccaf5fedf16996b9e21e396660cc7769d80abadd'
$checksumType   = 'sha1'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
