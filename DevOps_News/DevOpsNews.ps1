#Still in progress

$microsoftDevOps = Invoke-WebRequest -Uri "https://www.google.com/search?hl=en&q=devops+in+microsoft+news"
$out = $microsoftDevOps.AllElements.href | select -Skip 25 | Select -SkipLast 22


$string = '/url?q=https://devblogs.microsoft.com/devops/top-stories-from-the-microsoft-devops-community-2020-01-17/&amp;sa=U&amp;ved=2ahUKEwjizOWHsJPnAhUai1wKHcQ2AlUQFjAJegQIChAB&amp;usg=AOvVaw18yf0oz9CZ1-TtcfqVQr5F'
$sep = '&amp'
$out = $string -split "/&amp"

$url = $out[0].Split("/url?q=")
Start-Process $url