{{- define "messaging.configMapName" -}}
{{ .Values.global.appName }}-appsettings
{{- end -}}

{{- define "messaging.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}

{{- define "messaging.redisConfiguration" -}}
{{ printf "%s:%s,connectTimeout=10000,syncTimeout=10000" 
         (include "messaging.fullHostName" (dict "serviceName" .Values.config.redis.host "suffix" .Values.global.commonSuffix))
         (.Values.config.redis.port | toString) | quote }}
{{- end -}}