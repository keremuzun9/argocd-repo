{{- define "session-manager.configMapName" -}}
{{ .Values.global.appName }}-appsettings
{{- end -}}

{{- define "session-manager.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}

{{- define "session-manager.redisConfiguration" -}}
{{ printf "%s:%s,connectTimeout=10000,syncTimeout=10000" 
         (include "session-manager.fullHostName" (dict "serviceName" .Values.config.redis.host "suffix" .Values.global.commonSuffix))
         (.Values.config.redis.port | toString) | quote }}
{{- end -}}