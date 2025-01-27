{{/*
The OpenVPN sidecar container to be inserted.
*/}}
{{- define "common.addon.openvpn.container" -}}
name: openvpn
image: "{{ .Values.openvpnImage.repository }}:{{ .Values.openvpnImage.tag }}"
imagePullPolicy: {{ .Values.openvpnImage.pullPolicy }}
securityContext:
  capabilities:
    add:
      - NET_ADMIN
      - SYS_MODULE
{{- with .Values.addons.vpn.securityContext }}
  {{- toYaml . | nindent 2 }}
{{- end }}
env:
{{- range $envList := .Values.addons.vpn.envList }}
  {{- if and $envList.name $envList.value }}
  - name: {{ $envList.name }}
    value: {{ $envList.value | quote }}
  {{- else }}
  {{- fail "Please specify name/value for VPN environment variable" }}
  {{- end }}
{{- end}}
{{- with .Values.addons.vpn.env }}
{{- range $k, $v := . }}
  - name: {{ $k }}
    value: {{ $v | quote }}
{{- end }}
{{- end }}
{{- if or .Values.addons.vpn.openvpn.auth }}
envFrom:
  - secretRef:
      name: {{ include "common.names.fullname" . }}-openvpn
{{- end }}
volumeMounts:
  - mountPath: {{ .Values.persistence.shared.mountPath }}
    name: shared
{{- if or .Values.addons.vpn.configFile }}
  - name: vpnconfig
    mountPath: /vpn/vpn.conf
{{- end }}
{{- with .Values.addons.vpn.livenessProbe }}
livenessProbe:
  {{- toYaml . | nindent 2 }}
{{- end -}}
{{- with .Values.addons.vpn.resources }}
resources:
  {{- toYaml . | nindent 2 }}
{{- end }}
{{- end -}}
