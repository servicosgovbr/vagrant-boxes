logstash-package-repo:
  pkgrepo.managed:
    - humanname: Logstash repository for 1.5.x packages
    - baseurl: http://packages.elasticsearch.org/logstash/1.5/centos
    - gpgcheck: 1
    - gpgkey: http://packages.elasticsearch.org/GPG-KEY-elasticsearch
