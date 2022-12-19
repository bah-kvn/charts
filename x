helm package /usr/local/git/factory/
helm repo index . # create or update the index.yaml for repo
git add .
git commit -m 'New chart version'
