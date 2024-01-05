{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nextcloud-aio.web.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "web" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.nextcloud.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "nextcloud" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.clamav.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "clamav" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.collabora.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "collabora" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.onlyOffice.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "onlyoffice" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.redis.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "redis" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.talk.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "talk" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.imaginary.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "imaginary" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.fullTextSearch.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "fulltextsearch" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.notifyPush.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "notify-push" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.elasticSearch.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "elasticsearch" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.db.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "db" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "nextcloud-aio.recording.fullname" -}}
{{- printf "%s-%s" (include "common.names.fullname" .) "recording" | trunc 63 | trimSuffix "-" -}}
{{- end }}
