elasticsearch-config:
  file.managed:
    - name: /etc/elasticsearch/elasticsearch.yml
    - source: salt://elasticsearch/elasticsearch.yml
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - pkg: elasticsearch-package
