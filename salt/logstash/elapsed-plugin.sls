logstash-filter-elapsed-plugin:
  cmd.run:
    - name: '/opt/logstash/bin/plugin install logstash-filter-elapsed'
    - unless: '/opt/logstash/bin/plugin list | grep -q logstash-filter-elapsed'
    - require:
      - pkg: logstash-package
