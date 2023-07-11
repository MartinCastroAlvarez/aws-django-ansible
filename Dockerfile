FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN echo 'test:test' | chpasswd
RUN sudo usermod -aG sudo test
RUN echo 'test ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN service ssh start

EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd","-D"]
