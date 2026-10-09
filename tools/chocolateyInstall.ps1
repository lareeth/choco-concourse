$packageName    = 'concourse-fly'
$version        = 'v8.3.0'
$checksum       = '46f75164fb6b76aada43ae82ab155922f84557988f21bedd401f86d456d10b67'
$checksumType   = 'sha256'
$validExitCodes = @(0)
 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = "https://github.com/concourse/concourse/releases/download/$version/fly-$($version.TrimStart('v'))-windows-amd64.zip"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
