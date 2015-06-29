logstash-service:
  service.running:
    - name: logstash
    - enable: True
    - watch:
      - pkg: logstash-package
      - file: logstash-config
      - service: elasticsearch-service
