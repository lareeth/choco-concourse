$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v5.7.0/fly-5.7.0-windows-amd64.zip'
$checksum       = '9c2a8c1c8b43e7a7007908742965a5832f2293cc'
$checksumType   = 'sha1'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
