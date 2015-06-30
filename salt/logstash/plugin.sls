logstash-input-journald-plugin-gem:
  file.managed:
    - name: /root/logstash-input-journald-0.0.2.gem
    - source: salt://logstash/logstash-input-journald-0.0.2.gem
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: logstash-package

logstash-input-journald-plugin:
  cmd.run:
    - name: '/opt/logstash/bin/plugin install /root/logstash-input-journald-0.0.2.gem'
    - unless: '/opt/logstash/bin/plugin list | grep -q logstash-input-journald'
    - require:
      - file: logstash-input-journald-plugin-gem
