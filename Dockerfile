FROM centos:7

# Copy files
COPY bin/ /usr/bin/

# Configure
WORKDIR /var/lib/boinc-client

# BOINC RPC port
EXPOSE 31416

## Install
RUN yum install -y boinc-client \
    tar 

CMD ["start-boinc.sh"]

