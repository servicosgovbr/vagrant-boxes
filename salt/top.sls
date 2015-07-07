base:
  '*':
    - ntp
    - jdk
    - logstash
    - salt-minion

  'lb':
    - haproxy
    - kibana

  'app*':
    - portal-de-servicos
    - editor-de-servicos

  'es*':
    - elasticsearch
