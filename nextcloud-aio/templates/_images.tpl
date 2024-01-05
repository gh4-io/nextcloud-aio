{{/*
Return the proper Nextcloud AIO server image name
*/}}
{{- define "nextcloud-aio.nextcloud.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.nextcloud.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO web image name
*/}}
{{- define "nextcloud-aio.web.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.web.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO redis image name
*/}}
{{- define "nextcloud-aio.redis.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.redis.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO clamav image name
*/}}
{{- define "nextcloud-aio.clamav.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.clamav.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Only Office image name
*/}}
{{- define "nextcloud-aio.onlyOffice.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.onlyOffice.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO talk image name
*/}}
{{- define "nextcloud-aio.talk.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.talk.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Talk Recording image name
*/}}
{{- define "nextcloud-aio.talk.recording.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.talk.recording.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO fulltextsearch image name
*/}}
{{- define "nextcloud-aio.fulltextsearch.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.fullTextSearch.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO imaginary image name
*/}}
{{- define "nextcloud-aio.imaginary.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.imaginary.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Elastic Search image name
*/}}
{{- define "nextcloud-aio.elasticSearch.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.elasticSearch.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO db image name
*/}}
{{- define "nextcloud-aio.db.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.db.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO notify image name
*/}}
{{- define "nextcloud-aio.notifyPush.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.notifyPush.image "global" .Values.global) }}
{{- end -}}
