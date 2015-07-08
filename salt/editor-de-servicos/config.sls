editor-de-servicos-config:
  file.managed:
    - name: /etc/sysconfig/editor-de-servicos-overrides
    - source: salt://editor-de-servicos/editor-de-servicos-overrides
    - user: editorservicos
    - group: editorservicos
    - mode: 644
    - template: jinja
    - watch:
      - pkg: editor-de-servicos-package

editor-de-servicos-github-ssh-access:
  ssh_known_hosts.present:
    - name: github.com
    - user: editorservicos
    - fingerprint: '16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48'
    - watch:
      - user: editor-de-servicos-user
