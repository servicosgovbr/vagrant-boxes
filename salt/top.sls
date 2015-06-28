base:
  'lb':
    - haproxy
  'app*':
    - jdk
    - portal-de-servicos
    - editor-de-servicos
  'es*':
    - jdk
    - elasticsearch
