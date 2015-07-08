editor-de-servicos-user:
  user.present:
    - name: editorservicos
    - home: /var/lib/editor-de-servicos
    - createhome: True
    - watch:
      - pkg: editor-de-servicos-package

editor-de-servicos-private-key:
  file.managed:
    - name: /var/lib/editor-de-servicos/.ssh/id_rsa
    - source: salt://editor-de-servicos/github.pem
    - mode: 600
    - user: editorservicos
    - group: editorservicos
    - makedirs: True
    - dir_mode: 755
    - show_diff: False

editor-de-servicos-public-key:
  file.managed:
    - name: /var/lib/editor-de-servicos/.ssh/id_rsa.pub
    - source: salt://editor-de-servicos/github.pub
    - mode: 644
    - user: editorservicos
    - group: editorservicos
    - makedirs: True
    - dir_mode: 755
    - show_diff: False
