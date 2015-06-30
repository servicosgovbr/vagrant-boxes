logstash-config:
  file.managed:
    - name: /etc/logstash/conf.d/logstash.conf
    - source: salt://logstash/logstash.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: logstash-package
