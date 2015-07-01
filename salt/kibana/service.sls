kibana-systemd-config:
  file.managed:
    - name: /etc/systemd/system/kibana.service
    - source: salt://kibana/kibana.service
    - user: root
    - group: root
    - mode: 644
    - require:
      - archive: kibana-package

kibana-service:
  service.running:
    - name: kibana
    - enable: True
    - watch:
      - archive: kibana-package
      - file: kibana-systemd-config
