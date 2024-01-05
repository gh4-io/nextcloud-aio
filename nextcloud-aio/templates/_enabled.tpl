{{/*
Redis enabled
*/}}
{{- define "nextcloud-aio.redis.enabled" -}}
{{- if .Values.redis.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}


{{/*
OnlyOffice enabled
*/}}
{{- define "nextcloud-aio.onlyOffice.enabled" -}}
{{- if .Values.onlyOffice.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Imaginary enabled
*/}}
{{- define "nextcloud-aio.imaginary.enabled" -}}
{{- if .Values.imaginary.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Notify enabled
*/}}
{{- define "nextcloud-aio.notifyPush.enabled" -}}
{{- if .Values.notifyPush.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
FullTextSearch enabled
*/}}
{{- define "nextcloud-aio.fullTextSearch.enabled" -}}
{{- if .Values.fullTextSearch.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
ElasticSearch enabled
*/}}
{{- define "nextcloud-aio.elasticSearch.enabled" -}}
{{- if .Values.elasticSearch }}
  {{- if .Values.elasticSearch.enabled -}}
  "yes"
  {{- else -}}
  "no"
  {{- end -}}
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Talk enabled
*/}}
{{- define "nextcloud-aio.talk.enabled" -}}
{{- if .Values.talk }}
  {{- if .Values.talk.enabled -}}
  "yes"
  {{- else -}}
  "no"
  {{- end -}}
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Apache enabled
*/}}
{{- define "nextcloud-aio.web.enabled" -}}
{{- if .Values.web }}
  {{- if .Values.web.enabled -}}
  "yes"
  {{- else -}}
  "no"
  {{- end -}}
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Collabora enabled
*/}}
{{- define "nextcloud-aio.collabora.enabled" -}}
{{- if .Values.collabora.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Clamav enabled
*/}}
{{- define "nextcloud-aio.clamav.enabled" -}}
{{- if .Values.clamav.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}

{{/*
Talk Recording enabled
*/}}
{{- define "nextcloud-aio.recording.enabled" -}}
{{- if .Values.talk.recording.enabled -}}
"yes"
{{- else -}}
"no"
{{- end -}}
{{- end -}}