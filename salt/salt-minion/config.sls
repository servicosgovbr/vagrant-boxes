salt-minion-config:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://salt-minion/minion
    - mode: 644
    - user: root
    - group: root
