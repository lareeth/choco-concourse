$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v5.7.1/fly-5.7.1-windows-amd64.zip'
$checksum       = '9aec4e0d14540f2dff1a0f00fd23ae7d7d73661a'
$checksumType   = 'sha1'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
