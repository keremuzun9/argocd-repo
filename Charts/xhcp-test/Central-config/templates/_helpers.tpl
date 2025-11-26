{{- define "centralconfig.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}

{{- define "hostWithSuffix" -}}
{{- $prefix := .hostPrefix -}}
{{- $suffix := .commonSuffix -}}
{{- $port := .port | toString -}}
{{- if $suffix -}}
{{- printf "%s.%s:%s" $prefix $suffix $port -}}
{{- else -}}
{{- printf "%s:%s" $prefix $port -}}
{{- end -}}
{{- end -}}
