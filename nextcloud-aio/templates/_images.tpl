{{/*
Return the proper Docker Image Tag evaluating values as templates
{{ include "nextcloud-aio.images.tag" ( dict "imageRoot" .Values.path.to.the.image "global" .Values.global ) }}
*/}}
{{- define "nextcloud-aio.images.tag" -}}
{{- $tagName := .imageRoot.tag | toString -}}
{{- if .global }}
    {{- if .global.imageTag }}
     {{- $tagName = .global.imageTag -}}
    {{- end -}}
{{- end -}}
{{- if $tagName }}
  {{- printf "%s" $tagName -}}
{{- end -}}
{{- end -}}

{{/* vim: set filetype=mustache: */}}
{{/*
Return the proper image name
{{ include "common.images.image" ( dict "imageRoot" .Values.path.to.the.image "global" .Values.global ) }}
*/}}
{{- define "nextcloud-aio.images.image" -}}
{{- $registryName := .imageRoot.registry -}}
{{- $repositoryName := .imageRoot.repository -}}
{{- $separator := ":" -}}
{{- $termination := "latest" | toString -}}
{{- if .global }}
    {{- if .global.imageRegistry }}
        {{- $registryName = .global.imageRegistry -}}
    {{- end -}}
    {{- if .global.imageTag }}
        {{- $termination = .global.imageTag -}}
    {{- end -}}
    {{- if .global.imageDigest }}
        {{- $separator = "@" -}}
        {{- $registryName = .global.imageDigest -}}
    {{- end -}}
{{- end -}}
{{- if .imageRoot.tag -}}
    {{- $termination := .imageRoot.tag | toString -}}
{{- end -}}
{{- if .imageRoot.digest }}
    {{- $separator = "@" -}}
    {{- $termination = .imageRoot.digest | toString -}}
{{- end -}}
{{- if $registryName }}
    {{- printf "%s/%s%s%s" $registryName $repositoryName $separator $termination -}}
{{- else -}}
    {{- printf "%s%s%s"  $repositoryName $separator $termination -}}
{{- end -}}
{{- end -}}

{{/*
Return the proper Nextcloud AIO server image name
*/}}
{{- define "nextcloud-aio.nextcloud.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.nextcloud.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO web image name
*/}}
{{- define "nextcloud-aio.web.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.web.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO redis image name
*/}}
{{- define "nextcloud-aio.redis.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.redis.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO clamav image name
*/}}
{{- define "nextcloud-aio.clamav.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.clamav.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Only Office image name
*/}}
{{- define "nextcloud-aio.onlyOffice.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.onlyOffice.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO talk image name
*/}}
{{- define "nextcloud-aio.talk.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.talk.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Talk Recording image name
*/}}
{{- define "nextcloud-aio.talk.recording.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.talk.recording.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO fulltextsearch image name
*/}}
{{- define "nextcloud-aio.fulltextsearch.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.fullTextSearch.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO imaginary image name
*/}}
{{- define "nextcloud-aio.imaginary.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.imaginary.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO Elastic Search image name
*/}}
{{- define "nextcloud-aio.elasticSearch.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.elasticSearch.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO db image name
*/}}
{{- define "nextcloud-aio.db.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.db.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO notify image name
*/}}
{{- define "nextcloud-aio.notifyPush.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.notifyPush.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Nextcloud AIO collabora image name
*/}}
{{- define "nextcloud-aio.collabora.image" -}}
{{ include "nextcloud-aio.images.image" (dict "imageRoot" .Values.collabora.image "global" .Values.global) }}
{{- end -}}