FROM fluent/fluentd:v0.14.8

RUN fluent-gem install fluent-plugin-aws-elasticsearch-service

COPY fluent.conf /fluentd/etc/fluent.conf

USER root
RUN mkdir /var/log/fluentd && chown fluent:fluent /var/log/fluentd
USER fluent

VOLUME /var/log/fluentd
