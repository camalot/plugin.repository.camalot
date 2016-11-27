if ( $env:APPVEYOR_REPO_BRANCH -eq "master" ) {
  $env:CI_DEPLOY_GITHUB = $true;
  $env:CI_DEPLOY_GITHUB_PRE = $false;
} elseif ( $env:APPVEYOR_REPO_BRANCH -eq "develop" ) {
  $env:CI_DEPLOY_GITHUB_PRE = $true;
  $env:CI_DEPLOY_GITHUB = $false;
} else {
  $env:CI_DEPLOY_GITHUB_PRE = $false;
  $env:CI_DEPLOY_GITHUB = $false;
}
