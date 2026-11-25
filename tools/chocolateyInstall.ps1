$packageName    = 'concourse-fly'
$version        = 'v8.3.4'
$checksum       = 'c8b4b48f8db0a6d2362b217b3a3d86b7000336ae69a6cf3425b2f9f0fc56b30b'
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
