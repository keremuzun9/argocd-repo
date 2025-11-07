{{- define "alertservice.configMapName" -}}
{{- .Values.config.configMapKeyRefName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "alertservice.fullHostName" -}}
{{- $serviceName := .serviceName -}}
{{- $suffix := .suffix -}}
{{- printf "%s.%s" $serviceName $suffix -}}
{{- end -}}
