$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://downloads.snyk.io/cli/v1.1297.1/snyk-win.exe'
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = $url
  softwareName   = 'snyk-cli'
  checksum       = 'aeaff7891f59c6182ba40fda2258f5ad89e074fe78fc7f03deaefff88fb6c53a'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageArgs
