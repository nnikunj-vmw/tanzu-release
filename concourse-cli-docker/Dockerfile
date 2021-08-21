From photon:3.0
RUN yum -y remove toybox
RUN tdnf install -y build-essential python3-setuptools python3-tools python3-pip python3-devel python3 vim 
#RUN python3 -m pip install pyyaml
ENV LANG=en_US.UTF8
ENV LC_CTYPE=en_US.UTF-8
ENV LC_COLLATE=POSIX

COPY fly /usr/local/bin/
RUN chmod 700  /usr/local/bin/fly
#ENTRYPOINT [ "/bin/bash" ]


