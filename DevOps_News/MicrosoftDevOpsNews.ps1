$whichYear = Read-Host "Press 1 for DevOps news in 2019 or 2 for DevOps news in 2020"

switch ($whichYear) {
    '1' {
        $year = "2019"
        $microsoftDevOps = Invoke-WebRequest -Uri "https://devblogs.microsoft.com/devops/$year/"
        $out = $microsoftDevOps.Links | select href | Where { $_ -like "*devblogs.microsoft.com/devops/$year*" } | select -Skip 1 | Select -ExpandProperty *
        $ar = @(
            $out
            "https://www.zdnet.com/article/microsofts-devops-initiatives/"
            "https://www.businesswire.com/news/home/20191212005797/en/Datadog-Announces-Integration-Microsoft-Azure-DevOps"
        )

        Foreach ($link in $ar) {
            Start-Process $link
        }
    }

    '2' {
        $year = "2020"
        $microsoftDevOps = Invoke-WebRequest -Uri "https://devblogs.microsoft.com/devops/$year/"
        $out = $microsoftDevOps.Links | select href | Where { $_ -like "*devblogs.microsoft.com/devops/$year*" } | select -Skip 1 | Select -ExpandProperty *

        Foreach ($link in $out) {
            Start-Process $link
        }
    }
}