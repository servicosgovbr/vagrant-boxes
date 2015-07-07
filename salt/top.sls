base:
  '*':
    - ntp
    - jdk
    - logstash

  'lb':
    - haproxy
    - kibana

  'app*':
    - portal-de-servicos
    - editor-de-servicos

  'es*':
    - elasticsearch
