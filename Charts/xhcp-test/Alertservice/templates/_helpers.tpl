{{- define "alertservice.configMapName" -}}
{{- printf "%s-%s-appsettings" .Values.global.appPrefix .Values.global.appName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "alertservice.envConfigMapRefName" -}}
{{- .Values.config.configMapKeyRefName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "alertservice.fullHostName" -}}
{{- $serviceName := .serviceName -}}
{{- $suffix := .suffix -}}
{{- printf "%s.%s" $serviceName $suffix -}}
{{- end -}}
