

<!--- app-name: factory -->

# factory

factory is a helm(3) chart meant to assist deploying the BAH-softwarefactory quickly, reliably & securely.

                           
## TL;DR

```console
$ helm repo add sc https://charts.bitnami.com/bitnami
$ helm install factory-release sc/factory
```

## Introduction

This chart is intended to be run as part of a larger process to securly create rke2 clusters.  
The goal of this chart is to simplify the deployment of clusters, reducing the time and resources required to get up and running.
Packaging the configuration required to stand up environments allows the end user to tailor the resources deployed to address their specific use case.

## Packages currently available 

- flux2        - provides resources to reconcile the existing cluster state with the desired cluster state ( from a git repo )
- external-dns - automates the maintenance of dns for services. 
- cert-manager - automates the process require to obtain certifiates
- istio        - service mesh allowing secure ingress to cluster services
- rancher      - provides a UI that allows users to administrate kubernetes clusters ( rke2, other k8s distros ) across their enterprise, from a single ui (multi-cluster)
- longhorn     - provies required functionality to utilize persistent volumes 

## Prerequisites

- Kubernetes 1.19+
- Helm 3.2.0+
- registry1.dso.mil/ironbank/big-bang/utilities:1.0.0  ( docs: https://repo1.dso.mil/dsop/big-bang/utilities )
### Common parameters

| Name                          | Description                                                                             | Value           |
| ------------------------------| --------------------------------------------------------------------------------------- | --------------- |
| `cluster.domain`              | subdomain supporting cluster services( typlically cluster_name.domain                   | `""`            |
| `letsencrypt.email            | email address to use when requesting lets encrypt certificates                          | `"dev@bah.com"` |
| `letsencrypt.issuer           | determines the lets encrypt environment (staging/production) to request certs from      | `"staging"`     |
| `rancher.password`            | initial password or the admin user of the rancher management cluster                    | `{}`            |
| `rancher.url`                 | the url that points to the rancher management console                                   | `{}`            |
| `repo.branch`                 | branch inside git repo that contains resources to reconcile against your cluster        | `rke2`          |
| `repo.password`               | Array of extra objects to deploy with the release                                       | `[]`            |
| `repo.path`                   | path inside repo to reconcile against your cluster                                      | `[]`            |
| `repo.url`                    | url of the git repository containing the resources to reconcile against your cluster    | `https://...`   |
| `registryCreentials.username` | private registry username for private container image registry(example: ironbank)       | `false`         |
| `registryCreentials.password` | private registry password for private container image registry(example: ironbank)       | `false`         |
| `registryCreentials.email`    | email address use to create image pull secrets ofr private container image registry     | `false`         |




# factory
