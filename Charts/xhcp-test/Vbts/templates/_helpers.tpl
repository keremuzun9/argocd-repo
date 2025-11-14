{{- define "vbts.configMapName" -}}
# Bu servis ConfigMap kullanmıyor
{{- end -}}

{{- define "vbts.fullHostName" -}}
{{- $serviceName := default "" .serviceName -}}
{{- $suffix := default "" .suffix | trimSuffix "." -}}
{{- if $suffix -}}
{{- printf "%s.%s" $serviceName $suffix | trim -}}
{{- else -}}
{{- $serviceName | trim -}}
{{- end -}}
{{- end -}}