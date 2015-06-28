editor-de-servicos-service:
  service.running:
    - name: editor-de-servicos
    - enable: True
    - watch:
      - pkg: editor-de-servicos-package
