FROM fedora:31 

ENV SYSTEMD_IGNORE_CHROOT=1

RUN dnf -y --setopt=tsflags=nodocs install file open-vm-tools perl net-tools iproute systemd && \ 
    dnf clean all 

CMD /usr/bin/vmtoolsd