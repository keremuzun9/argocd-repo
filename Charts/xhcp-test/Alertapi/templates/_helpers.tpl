{{- define "alertapi.configMapName" -}}
{{ .Values.global.appPrefix }}-alertapi-appsettings
{{- end -}}

{{- define "alertapi.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}