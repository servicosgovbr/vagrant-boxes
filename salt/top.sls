base:
  'lb':
    - haproxy
    - rsyslog
  'app*':
    - jdk
    - portal-de-servicos
    - editor-de-servicos
    - rsyslog
  'es*':
    - jdk
    - elasticsearch
    - rsyslog
  'es1':
    - logstash
