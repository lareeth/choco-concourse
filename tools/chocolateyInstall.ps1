$packageName    = 'concourse-fly'
$url            = 'https://github.com/concourse/concourse/releases/download/v8.3.0/fly-8.3.0-windows-amd64.zip'
$checksum       = '46f75164fb6b76aada43ae82ab155922f84557988f21bedd401f86d456d10b67'
$checksumType   = 'sha256'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
