editor-de-servicos-user:
  user.present:
    - name: editorservicos
    - home: /var/lib/editor-de-servicos
    - createhome: True
    - watch:
      - pkg: editor-de-servicos-package
