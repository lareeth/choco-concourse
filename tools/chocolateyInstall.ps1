$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v5.5.1/fly-5.5.1-windows-amd64.zip'
$checksum       = '03ce4740d5111d2b63358ef44312f88a0d822851'
$checksumType   = 'sha1'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
