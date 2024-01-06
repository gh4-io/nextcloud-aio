{{/*
Redis enabled
*/}}
{{- define "nextcloud-aio.redis.enabled" -}}
{{- if .Values.redis.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}


{{/*
OnlyOffice enabled
*/}}
{{- define "nextcloud-aio.onlyOffice.enabled" -}}
{{- if .Values.onlyOffice.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Imaginary enabled
*/}}
{{- define "nextcloud-aio.imaginary.enabled" -}}
{{- if .Values.imaginary.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Notify enabled
*/}}
{{- define "nextcloud-aio.notifyPush.enabled" -}}
{{- if .Values.notifyPush.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
FullTextSearch enabled
*/}}
{{- define "nextcloud-aio.fullTextSearch.enabled" -}}
{{- if .Values.fullTextSearch.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
ElasticSearch enabled
*/}}
{{- define "nextcloud-aio.elasticSearch.enabled" -}}
{{- if .Values.elasticSearch }}
  {{- if .Values.elasticSearch.enabled -}}
  {{- print "yes" }}
  {{- else -}}
  {{- print "no" }}
  {{- end -}}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Talk enabled
*/}}
{{- define "nextcloud-aio.talk.enabled" -}}
{{- if .Values.talk }}
  {{- if .Values.talk.enabled -}}
  {{- print "yes" }}
  {{- else -}}
  {{- print "no" }}
  {{- end -}}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Apache enabled
*/}}
{{- define "nextcloud-aio.web.enabled" -}}
{{- if .Values.web }}
  {{- if .Values.web.enabled -}}
  {{- print "yes" }}
  {{- else -}}
  {{- print "no" }}
  {{- end -}}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Collabora enabled
*/}}
{{- define "nextcloud-aio.collabora.enabled" -}}
{{- if .Values.collabora.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Clamav enabled
*/}}
{{- define "nextcloud-aio.clamav.enabled" -}}
{{- if .Values.clamav.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Talk Recording enabled
*/}}
{{- define "nextcloud-aio.recording.enabled" -}}
{{- if .Values.talk.recording.enabled -}}
{{- print "yes" }}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}

{{/*
Nextcloud enable major update install
*/}}
{{- define "nextcloud-aio.nextcloud.enableMajor" -}}
{{- if .Values.nextcloud }}
  {{- if .Values.nextcloud.enableMajor -}}
  {{- print "yes" }}
  {{- else -}}
  {{- print "no" }}
  {{- end -}}
{{- else -}}
{{- print "no" }}
{{- end -}}
{{- end -}}