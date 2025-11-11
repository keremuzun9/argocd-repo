{{- define "datalicenceapi.configMapName" -}}
{{ .Values.global.appName }}-appsettings
{{- end -}}

{{- define "datalicenceapi.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}