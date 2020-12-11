$currentdir= Get-Location
Write-Output $currentdir
docker run --label=jekyll --volume="$currentdir":/srv/jekyll  -it -p 4000:4000 jekyll/jekyll bash ./run-debug-site.sh
