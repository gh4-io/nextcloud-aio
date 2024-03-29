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


| <div style="maxWidth:40px">Name</div>  | Description                                     | <div style="width:90px">Value</div> |
| --------------------------- | ------------------------------------------------- | ------- |
| `global.imageRegistry`    | Global Docker image registry                    | `""`  |
| `global.imagePullSecrets` | Global Docker registry secret names as an array | `[]`  |
| `global.storageClass`     | Global StorageClass for Persistent Volume(s)    | `""`  |
| `global.tz`               | Global timezone setting. E.g. "UTC"             | `""`  |

### Common parameters

##### Replicas


| Name                     | Description                              | Value       |
| -------------------------- | ------------------------------------------ | ------------- |
| <div style="Width:80px">`nextcloud.replicaCount`</div> | Number of pod replicas will be generated | `1` `[int]` |

##### Image


| Name                         | Description                                                                                     | Value                     |
| ------------------------------ | ------------------------------------------------------------------------------------------------- | --------------------------- |
| `nextcloud.image.registry`   | Application registry, will override Global and Chart registry entry.                            | `“”`                    |
| `nextcloud.image.repository` | Application image repository, will override Global and Chart repository entries.                | `nextcloud/aio-nextcloud` |
| `nextcloud.image.tag`        | Application image tag, will overrideGlobal and Chart tag entries.                               | `“”`                    |
| `nextcloud.image.digest`     | Image digest in the way sha256:aa.... Please note this parameter, if set, will override the tag | `“”`                    |
| `nextcloud.image.pullPolicy` | Application image pull policy                                                                   | `“”`                    |
| `nextcloud.image.pullSecret` | Specify docker-registry secret names as an array                                                | `“”`                    |

##### Persistance

##### Service

##### Ingress

### Nextcloud Server Parameters

### Database Parameters

### Frontend/Apache Parameters

> *As of version 7.9.1*
> **Note:** Nextcloud AIO during startup will be expecting to ping hostname `nextcloud-aio-apache`.
> Changing your hostname/deployment will break the server startup. If using CoreDNS you
> can add a `rewrite name` rule to your CoreDNS `config.yaml`.

### Redis Parameters

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
