kibana-package:
  archive.extracted:
    - name: /opt/
    - source: https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz
    - source_hash: sha1=d43e039adcea43e1808229b9d55f3eaee6a5edb9
    - archive_format: tar
    - if_missing: /opt/kibana-4.1.1-linux-x64/
