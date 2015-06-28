haproxy-service:
  service.running:
    - name: haproxy
    - enable: True
    - watch:
      - pkg: haproxy-package
      - file: haproxy-config
