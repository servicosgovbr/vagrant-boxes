portal-de-servicos-package-repo:
  pkgrepo.managed:
    - humanname: Portal de Servicos do Governo Federal
    - baseurl: https://s3-sa-east-1.amazonaws.com/servicosgovbr/centos/7/
    - gpgcheck: 1
    - gpgkey: https://raw.githubusercontent.com/servicosgovbr/portal-de-servicos/master/src/main/resources/static/GPG-KEY
