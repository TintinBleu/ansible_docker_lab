FROM fedora

RUN dnf update -y
RUN dnf install -y openssh-server
RUN dnf install -y openssh-clients
RUN dnf install -y sshpass
RUN dnf install -y ansible 
RUN dnf install -y telnet
RUN echo "===> Adding hosts for convenience..."        && \
    mkdir -p /etc/ansible                              && \
    echo 'localhost' > /etc/ansible/hosts


# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]
