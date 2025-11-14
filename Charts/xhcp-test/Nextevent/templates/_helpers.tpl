{{- define "nextevent.configMapName" -}}
{{ .Values.global.appName }}-appsettings
{{- end -}}

{{- define "nextevent.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}

{{- define "nextevent.redisConfiguration" -}}
{{ printf "%s:%s,connectTimeout=10000,syncTimeout=10000" 
         (include "nextevent.fullHostName" (dict "serviceName" .Values.config.redis.host "suffix" .Values.global.commonSuffix))
         (.Values.config.redis.port | toString) | quote }}
{{- end -}}