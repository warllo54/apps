# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below | environment variables. See [image docs](https://docs.photoprism.org/getting-started/config-options/) for more details. |
| env.GID | string | `nil` | Sets GID Photoprism runs under. |
| env.PHOTOPRISM_ADMIN_PASSWORD | string | `"please-change"` | Initial admin password. **BE SURE TO CHANGE THIS!** |
| env.PHOTOPRISM_ORIGINALS_PATH | string | `"/photoprism/originals"` | Photoprism originals path |
| env.PHOTOPRISM_PUBLIC | string | `"false"` | Disable authentication / password protection |
| env.PHOTOPRISM_STORAGE_PATH | string | `"/photoprism/storage"` | Photoprism storage path |
| env.TZ | string | `"UTC"` | Set the container timezone |
| env.UID | string | `nil` | Sets UID Photoprism runs under. |
| env.UMASK | string | `nil` | Sets UMASK. |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"docker.io/photoprism/photoprism"` | image repository |
| image.tag | string | `"20210523@sha256:40e99d97615164f1a10c2a674301ced878030a7a79df1b8b40d70f096c4112a9"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| podSecurityContext.fsGroup | int | `568` |  |
| podSecurityContext.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| podSecurityContext.runAsGroup | int | `568` |  |
| podSecurityContext.runAsUser | int | `568` |  |
| podSecurityContext.supplementalGroups | list | `[]` |  |
| securityContext.allowPrivilegeEscalation | bool | `true` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
