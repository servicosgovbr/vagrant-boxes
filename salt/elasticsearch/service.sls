elasticsearch-service:
  service.running:
    - name: elasticsearch
    - enable: True
    - watch:
      - pkg: elasticsearch-package
