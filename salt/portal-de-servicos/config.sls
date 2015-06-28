portal-de-servicos-config:
  file.managed:
    - name: /etc/sysconfig/portal-de-servicos-overrides
    - source: salt://portal-de-servicos/portal-de-servicos-overrides
    - user: portalservicos
    - group: portalservicos
    - mode: 644
    - require:
      - pkg: portal-de-servicos-package
