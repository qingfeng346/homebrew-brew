param($name, $version, $github, $bin)
$file = "./Formula/$name.rb"
$lines = [System.IO.File]::ReadAllLines($file)
$list = @(
    @{ "line" = 5; "platform" = "osx-x64" }
    @{ "line" = 9; "platform" = "osx-arm64" }
    @{ "line" = 13; "platform" = "linux-x64" }
    @{ "line" = 17; "platform" = "linux-arm64" }
)
foreach ($value in $list) {
    $line = $value.line
    $platform = $value.platform
    $url = "https://github.com/qingfeng346/$github/releases/download/v$version/$name-$version-$platform.zip"
    $sha256 = Get-FileHash $bin/$name-$version-$platform.zip sha256 | Select-Object Hash
    $sha256 = $sha256.Hash
    $lines[$line] = "      url ""$url"""
    $lines[$line+1] = "      sha256 ""$sha256"""
}
[System.IO.File]::WriteAllLines($file, $lines)