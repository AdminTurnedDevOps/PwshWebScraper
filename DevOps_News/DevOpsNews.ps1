#Still in progress

# Testing a loop to search for specific URLs for DevOps blog
$microsoftDevOps = Invoke-WebRequest -Uri "https://www.google.com/search?hl=en&q=devops+in+microsoft+news"
$out = $microsoftDevOps.Links.href
foreach ($link in $out) {
    if ("*zdnet" -like $link) {
        Write-Output $link
    }
}




Foreach($link in $out) {
    $string = $link
    $spl = $string -split "&amp"
    [string]$url = $spl[0].Split("<a href=/url?q=") | Out-String
    Start-Process $url
}

####################################################

$string = '/url?q=https://devblogs.microsoft.com/devops/top-stories-from-the-microsoft-devops-community-2020-01-17/&amp;sa=U&amp;ved=2ahUKEwjizOWHsJPnAhUai1wKHcQ2AlUQFjAJegQIChAB&amp;usg=AOvVaw18yf0oz9CZ1-TtcfqVQr5F'
$sep = '&amp'
$out = $string -split "/&amp"

[string]$url = $out[0].Split("/url?q=") | Out-String
[string]$url2 = $url | Out-String
Start-Process $url2