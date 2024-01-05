{{/*
Expand the name of the chart.
*/}}
{{- define "nextcloud-aio.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nextcloud-aio.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nextcloud-aio.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "nextcloud-aio.labels" -}}
helm.sh/chart: {{ include "nextcloud-aio.chart" . }}
{{ include "nextcloud-aio.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "nextcloud-aio.selectorLabels" -}}
app.kubernetes.io/name: {{ include "nextcloud-aio.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "nextcloud-aio.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "nextcloud-aio.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Basic timezone
*/}}
{{- define "nextcloud-aio.timezone" -}}
{{- if .Values.global.tz -}}
{{ default "UTC" .Values.global.tz }}
{{- else -}}
"UTC"
{{- end -}}
{{- end -}}

{{/*
Update Apps On Startup
When setting to yes (with quotes), it will 
automatically update all installed Nextcloud apps 
upon container startup on saturdays.
*/}}
{{- define "nextcloud-aio.updateAppsOnStartup" -}}
{{- if .Values.updateAppsOnStartup -}}
{{- if or ( eq .Values.updateAppsOnStartup "true" ) ( eq .Values.updateAppsOnStartup "yes" ) -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Remove Disabled Apps
Setting this to no keep Nextcloud apps that are disabled via their 
switch and not uninstall them if they should be installed in Nextcloud.
*/}}
{{- define "nextcloud-aio.removeDisabledApps" -}}
{{- if .Values.removeDisabledApps -}}
{{- if or ( eq .Values.removeDisabledApps "true" ) ( eq .Values.removeDisabledApps "yes" ) -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}
{{- end -}}

