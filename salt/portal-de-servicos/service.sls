portal-de-servicos-service:
  service.running:
    - name: portal-de-servicos
    - enable: True
    - watch:
      - pkg: portal-de-servicos-package
      - file: portal-de-servicos-config
