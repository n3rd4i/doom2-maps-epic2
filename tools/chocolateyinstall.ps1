$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'ftp://ftp.fu-berlin.de/pc/games/idgames/levels/doom2/megawads/epic2.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = '678C6DC804687F1BD68F82B739ED75AE3FDE0C867BE4ABBF3311908EE945DE4C'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
