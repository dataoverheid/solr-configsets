ARG SOLR_VERSION=8.6

FROM library/solr:${SOLR_VERSION}-slim

ENV SOLR_INSTALLATION_PATH=/opt/solr

USER root

COPY . /opt/solr-configsets

RUN chown -R solr:solr /opt/solr-configsets

USER solr

WORKDIR /opt/solr-configsets

CMD ["/bin/bash", "bin/update_configsets.sh"]
