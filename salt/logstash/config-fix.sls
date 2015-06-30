logstash-user-and-group-config-fix:
  file.replace:
    - name: /etc/init.d/logstash
    - pattern: 'LS_(USER|GROUP)=logstash'
    - repl: 'LS_\1=root'
    - watch:
      - pkg: logstash-package
    - watch_in:
      - service: logstash-service
