editor-de-servicos-package:
  pkg.latest:
    - name: editor-de-servicos
    - fromrepo: editor-de-servicos-package-repo
    - refresh: True
    - pkg_verify:
      - ignore_types: [config]
    - require:
      - pkgrepo: editor-de-servicos-package-repo
      - pkg: jdk-package
