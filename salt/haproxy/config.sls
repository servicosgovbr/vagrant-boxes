haproxy-config:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://haproxy/haproxy.cfg
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: haproxy-package
