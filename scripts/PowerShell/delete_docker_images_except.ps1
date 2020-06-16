docker images --format "{{json .}}" | ConvertFrom-Json | Select Repository, Tag, ID | where Repository -NotMatch "api|ubuntu" | ForEach-Object {
    docker rmi $_.ID
}