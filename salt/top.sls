base:
  'lb':
    - haproxy
    - jdk
    - logstash
  'app*':
    - jdk
    - portal-de-servicos
    - editor-de-servicos
    - logstash
  'es*':
    - jdk
    - elasticsearch
    - logstash
