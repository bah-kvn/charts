helm package /usr/local/git/factory/
helm repo index . # create or update the index.yaml for repo
export version=$(cat ../factory/Chart.yaml | yq '.version')

git add .
git commit -m "New chart version: $version"
git push

helm repo add factory 'https://raw.githubusercontent.com/bah-kvn/charts/main/'
helm repo update
helm search repo factory
