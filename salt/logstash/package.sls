logstash-package:
  pkg.installed:
    - name: logstash
    - require:
      - pkgrepo: logstash-package-repo
      - pkg: jdk-package
