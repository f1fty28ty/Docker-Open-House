FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install sshd
RUN apt-get update && \
    apt-get install -y openssh-server sudo openssl vim less && \
    rm -rf /var/lib/apt/lists/*

# create player3 user and flag
RUN useradd -m -s /bin/bash player3 && \
    usermod -aG sudo player3 && \
    echo "player3 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    echo "player3:ctf3pass" | chpasswd && \
    mkdir -p /var/run/sshd


# Copy unlock script and hint file, set permissions
COPY unlock.sh /home/player3/unlock.sh
COPY hint.txt /home/player3/hint.txt
RUN chown player3:player3 /home/player3/unlock.sh /home/player3/hint.txt && \
    chmod 500 /home/player3/unlock.sh && \
    chmod 644 /home/player3/hint.txt

EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]