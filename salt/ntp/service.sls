ntp-service:
  service.running:
    - name: ntpd
    - enable: True
    - watch:
      - pkg: ntp-package
      - file: ntp-config
