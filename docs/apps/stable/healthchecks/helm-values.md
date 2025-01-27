# Default Helm-Values

TrueCharts is primarily build to supply TrueNAS SCALE Apps.
However, we also supply all Apps as standard Helm-Charts. In this document we aim to document the default values in our values.yaml file.

Most of our Apps also consume our "common" Helm Chart.
If this is the case, this means that all values.yaml values are set to the common chart values.yaml by default. This values.yaml file will only contain values that deviate from the common chart.
You will, however, be able to use all values referenced in the common chart here, besides the values listed in this document.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | See below | environment variables. See [image docs](https://github.com/linuxserver/docker-healthchecks#parameters) for more details. |
| env.REGENERATE_SETTINGS | string | `"True"` | Set to true to always override the local_settings.py file with values from environment variables. Do not set to True if you have made manual modifications to this file. |
| env.SITE_NAME | int | `8265` | The site's name (e.g., "Example Corp HealthChecks") |
| env.SITE_ROOT | string | `"https://healthchecks.domain"` | The site's top-level URL and the port it listens to |
| env.SUPERUSER_EMAIL | string | `"email@healthchecks.io"` | Superuser email |
| env.SUPERUSER_PASSWORD | string | `"myVeryStrongPassword"` | Superuser password |
| env.TZ | string | `"UTC"` | Set the container timezone |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"ghcr.io/linuxserver/healthchecks"` | image repository |
| image.tag | string | `"version-v1.22.0@sha256:f2e6865c909a1eeebf8bbe2736c0a3145ed5e9fa1bddde0809993a74963bc14a"` | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| persistence.config | object | `{"accessMode":"ReadWriteOnce","enabled":true,"mountpath":"/config","size":"100Gi","type":"pvc"}` | Volume used for configuration |
| service | object | See values.yaml | Configures service settings for the chart. |

All Rights Reserved - The TrueCharts Project
