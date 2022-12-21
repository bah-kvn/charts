helm package /usr/local/git/factory/
version=$(cat ../factory/Chart.yaml | yq '.version')
helm repo index . # create or update the index.yaml for repo
git add .
git commit -m "updates for $version"
git push

helm repo add factory 'https://raw.githubusercontent.com/bah-kvn/charts/main/'
helm repo update
helm search repo factory
