{{- define "brokerageapi.configMapName" -}}
{{ .Values.global.appPrefix }}-brokerageapi-appsettings
{{- end -}}

{{- define "brokerageapi.envConfigMapRefName" -}}
{{- .Values.config.configMapKeyRefName | trunc 63 | trimSuffix "-" -}}
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
