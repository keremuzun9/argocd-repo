{{- define "brokerageapi.configMapName" -}}
{{ .Values.global.appName }}-brokerageapi-appsettings
{{- end -}}

{{- define "brokerageapi.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}