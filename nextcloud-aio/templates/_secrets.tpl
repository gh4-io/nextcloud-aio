{{/*
Nextcloud AIO Server credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.nextcloud.secretName" -}}
{{- coalesce .Values.nextcloud.existingSecret (include "nextcloud-aio.nextcloud.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Retrieve key of the nextcloud secret
*/}}
{{- define "nextcloud-aio.nextcloud.passwordKey" -}}
{{- if .Values.nextcloud.auth.existingSecret -}}
    {{- if .Values.nextcloud.auth.existingSecretPasswordKey -}}
        {{- printf "%s" .Values.nextcloud.auth.existingSecretPasswordKey -}}
    {{- else -}}
        {{- print "nextcloud-password" -}}
    {{- end -}}
{{- else -}}
    {{- print "nextcloud-password" -}}
{{- end -}}
{{- end -}}

{{/*
REDIS Server credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.redis.secretName" -}}
{{- coalesce .Values.redis.auth.existingSecret (include "nextcloud-aio.redis.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Retrieve key of the redis secret
*/}}
{{- define "nextcloud-aio.redis.passwordKey" -}}
{{- if .Values.redis.auth.existingSecret -}}
    {{- if .Values.redis.auth.existingSecretPasswordKey -}}
        {{- printf "%s" .Values.redis.auth.existingSecretPasswordKey -}}
    {{- else -}}
        {{- print "redis-password" -}}
    {{- end -}}
{{- else -}}
    {{- print "redis-password" -}}
{{- end -}}
{{- end -}}

{{/*
Talk Server credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.talk.secretName" -}}
{{- coalesce .Values.talk.auth.existingSecret (include "nextcloud-aio.talk.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
onlyOffice credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.onlyOffice.secretName" -}}
{{- coalesce .Values.onlyOffice.auth.existingSecret (include "nextcloud-aio.onlyOffice.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
database credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.db.secretName" -}}
{{- coalesce .Values.db.auth.existingSecret (include "nextcloud-aio.db.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
FullTextSearch credential secret name. Using Release.Name as it is used in subcharts as well
*/}}
{{- define "nextcloud-aio.fullTextSearch.secretName" -}}
{{- coalesce .Values.fullTextSearch.auth.existingSecret (include "nextcloud-aio.fullTextSearch.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}