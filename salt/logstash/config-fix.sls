# O pacote padrão do logstash roda como o usuário 'logstash', mas para poder
# ter acesso ao journal do systemd, é necessário rodar como root.
logstash-user-and-group-config-fix:
  file.replace:
    - name: /etc/init.d/logstash
    - pattern: 'LS_(USER|GROUP)=logstash'
    - repl: 'LS_\1=root'
    - watch:
      - pkg: logstash-package
    - watch_in:
      - service: logstash-service
