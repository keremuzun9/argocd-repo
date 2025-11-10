{{- define "alertservice.configMapName" -}}
{{ .Values.global.appName }}-alertservice-appsettings
{{- end -}}

{{- define "alertservice.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}
