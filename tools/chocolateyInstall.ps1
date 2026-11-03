$packageName    = 'concourse-fly'
$version        = 'v8.3.3'
$checksum       = '0a3f5650484e82afc7c7929a02b3724db4199835db59d9ed0966025c72d67077'
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
