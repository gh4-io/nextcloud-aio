<!--- app-name: Nextcloud-AIO --->

# Nextcloud AIO Helm-chart

[Overview of Nextcloud-AIO]()

## TL;DR

## Introduction

## Prerequsisites

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm install my-release https://REPOSITORY_NAME/nextcloud-aio
```

> Note: You need to substitute the placeholder  `REPOSITORY_NAME` with a reference to your Helm chart repository. For example, in the case of GH4.io Github repos, you need to use  `REPOSITORY_NAME=gh4-io.github.io`.

The command deploys Nextcloud-AIO on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

### Global parameters

| Name                                  | Description                                                   | Value         |
| ------------------------------------- | ------------------------------------------------------------- | ------------- |
| `global.imageRegistry`                | Global Docker image registry                                  | `""`          |
| `global.imagePullSecrets`             | Global Docker registry secret names as an array               | `[]`          |
| `global.storageClass`                 | Global StorageClass for Persistent Volume(s)                  | `""`          |
| `global.tz`                           | Global timezone setting. E.g. "UTC"                           | `""`          |


### Common parameters

| Name                                  | Description                                                   | Value         |
| ------------------------------------- | ------------------------------------------------------------- | ------------- |
|                                       |                                                               |               |


## Load Balancer

To use the web service as a load balancer to ..

*example yaml...*  

```yaml
service:
    enabled: true
    type: LoadBalancer
    ports: 
      http: 80
      https: 443
    nodePorts:
      http: ""
      https: ""
    loadBalancerIP: 10.0.0.111
    annotations: {}
    extraPorts: []

```


## Troubleshooting

...

## Upgrading

...