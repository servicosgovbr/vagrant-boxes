portal-de-servicos-package:
  pkg.installed:
    - name: portal-de-servicos
    - require:
      - pkgrepo: portal-de-servicos-package-repo
      - pkg: jdk-package
