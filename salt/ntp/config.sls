ntp-config:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://ntp/ntp.conf
    - mode: 644
    - user: root
    - group: root
    - require:
      - pkg: ntp-package
