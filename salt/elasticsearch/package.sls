elasticsearch-package:
  pkg.installed:
    - name: elasticsearch
    - require:
      - pkgrepo: elasticsearch-package-repo
      - pkg: jdk-package
