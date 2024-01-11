# Nextcloud-AIO Helm Charts

[Helm](https://helm.sh) repo for different charts related to Nextcloud which can be installed on [Kubernetes](https://kubernetes.io)

### Add Helm repository

To install the repo just run:

```bash
helm repo add nextcloud-aio https://gh4.io.github.io/nextcloud-aio
helm repo update
```

### Helm Charts

* [nextcloud-aio](https://gh4.io.github.io/nextcloud-aio/)

  ```bash
  helm install my-release nextcloud-aio/nextcloud-aio
  ```