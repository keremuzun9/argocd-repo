{{- define "userprofileapi.configMapName" -}}
{{ .Values.global.appName }}-appsettings
{{- end -}}

{{- define "userprofileapi.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}