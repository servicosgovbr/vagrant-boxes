salt-minion-service:
  service.running:
    - name: salt-minion
    - enable: True
    - watch:
      - file: salt-minion-config
