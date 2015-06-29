rsyslog-service:
  service.running:
    - name: rsyslog
    - enable: True
    - watch:
      - pkg: rsyslog-package
      - file: rsyslog-config 
