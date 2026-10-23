$packageName    = 'concourse-fly'
$version        = 'v8.3.2'
$checksum       = 'c351fdbf98809c85dd4cb975e222890b8e7d7e74ccba3891fcd3f21ea95a30bf'
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
