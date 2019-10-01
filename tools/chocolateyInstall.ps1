$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v5.5.3/fly-5.5.3-windows-amd64.zip'
$checksum       = '8ffd21381c7ef094cfad4c1448b73da5bbf78cc6'
$checksumType   = 'sha1'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
