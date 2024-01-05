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
    {{- if .Values.externalDatabase.existingSecretPasswordKey -}}
        {{- printf "%s" .Values.externalDatabase.existingSecretPasswordKey -}}
    {{- else -}}
        {{- print "nextcloud-password" -}}
    {{- end -}}
{{- else -}}
    {{- print "nextcloud-password" -}}
{{- end -}}
{{- end -}}