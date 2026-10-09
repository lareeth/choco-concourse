$packageName    = 'concourse-fly'
$version        = 'v8.3.1'
$checksum       = '570486b75ce5bb8499c4a47b2983c9c09e839ad0dfb452d367de2d40f58425e8'
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
