editor-de-servicos-package:
  pkg.installed:
    - name: editor-de-servicos
    - require:
      - pkgrepo: editor-de-servicos-package-repo
      - pkg: jdk-package
