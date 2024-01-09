{{/*
Create a default fully qualified dependency name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
Usage:
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "dependency-chart-name" "chartValues" .Values.dependency-chart "context" $) }}
*/}}
{{- define "nextcloud-aio.names.dependency.fullname" -}}
{{- if .chartValues.fullnameOverride -}}
{{- .chartValues.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .chartName .chartValues.nameOverride -}}
{{- printf "%s-%s" .context.Chart.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}



{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nextcloud-aio.web.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "apache" "chartValues" .Values.web "context" $) }}
{{- end }}


{{- define "nextcloud-aio.nextcloud.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "nextcloud" "chartValues" .Values.nextcloud "context" $) }}
{{- end }}

{{- define "nextcloud-aio.clamav.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "clamav" "chartValues" .Values.clamav "context" $) }}
{{- end }}

{{- define "nextcloud-aio.collabora.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "collabora" "chartValues" .Values.collabora "context" $) }}
{{- end }}

{{- define "nextcloud-aio.onlyOffice.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "onlyoffice" "chartValues" .Values.onlyOffice "context" $) }}
{{- end }}

{{- define "nextcloud-aio.redis.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "redis" "chartValues" .Values.redis "context" $) }}
{{- end }}

{{- define "nextcloud-aio.talk.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "talk" "chartValues" .Values.talk "context" $) }}
{{- end }}

{{- define "nextcloud-aio.imaginary.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "imaginary" "chartValues" .Values.imaginary "context" $) }}
{{- end }}

{{- define "nextcloud-aio.fullTextSearch.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "fulltextsearch" "chartValues" .Values.fullTextSearch "context" $) }}
{{- end }}

{{- define "nextcloud-aio.notifyPush.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "notify-push" "chartValues" .Values.notifyPush "context" $) }}
{{- end }}

{{- define "nextcloud-aio.elasticSearch.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "elasticsearch" "chartValues" .Values.elasticSearch "context" $) }}
{{- end }}

{{- define "nextcloud-aio.db.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "database" "chartValues" .Values.db "context" $) }}
{{- end }}

{{- define "nextcloud-aio.recording.fullname" -}}
{{ include "nextcloud-aio.names.dependency.fullname" (dict "chartName" "talk-recorder" "chartValues" .Values.talk.recording "context" $) }}
{{- end }}
