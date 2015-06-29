rsyslog-config:
  file.managed:
    - name: /etc/rsyslog.d/logstash-forward.conf
    - source: salt://rsyslog/logstash-forward.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: rsyslog-package
