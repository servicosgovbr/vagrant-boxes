logstash-service:
  service.running:
    - name: logstash
    - enable: True
    - watch:
      - pkg: logstash-package
      - cmd: logstash-input-journald-plugin
      - file: logstash-config
