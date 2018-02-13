FROM docker.elastic.co/kibana/kibana:6.2.1
LABEL Author="Hakim Boukhatem"
LABEL maintainer="PXL APPS <hakim.boukhatem@pxlapps.com>"

RUN bin/kibana-plugin remove x-pack
RUN rm -rf /usr/share/kibana/plugins/x-pack
RUN /usr/bin/sed -i '/xpack/d' /usr/share/kibana/config/kibana.yml