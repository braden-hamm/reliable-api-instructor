$ErrorActionPreference = "Stop"
function Ask($p){ Read-Host $p }
$GitUser   = Ask "GitHub username (e.g., your-username)"
$RepoName  = Ask "Repository name (default: reliable-api-demo)"
if([string]::IsNullOrWhiteSpace($RepoName)){ $RepoName="reliable-api-demo" }
$DockerUser= Ask "Docker Hub username (e.g., your-dockerhub)"
$ImageName = Ask "Image name (default: reliable-api-demo:latest)"
if([string]::IsNullOrWhiteSpace($ImageName)){ $ImageName="reliable-api-demo:latest" }

$Repo = "https://github.com/$GitUser/$RepoName.git"
git init; git add .; git commit -m "Initial commit" 2>$null
git branch -M main
git remote remove origin 2>$null
git remote add origin $Repo
git push -u origin main

docker build -t "$DockerUser/$ImageName" ./assets/fastapi_app
docker push "$DockerUser/$ImageName"
