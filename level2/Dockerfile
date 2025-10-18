FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install openssh-server, nmap, and useful tools
RUN apt-get update && \
    apt-get install -y openssh-server nmap sudo iputils-ping vim less && \
    rm -rf /var/lib/apt/lists/*

# Create ssh user 'player' with known password
RUN useradd -m -s /bin/bash player && \
    usermod -aG sudo player && \
    echo "player ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    echo "player:ctf2pass" | chpasswd && \
    mkdir -p /var/run/sshd

# Place flag and credentials
RUN echo "flag{got_to_level2}" > /root/flag.txt && \
    echo "LEVEL3_CREDS: user=player3 password=ctf3pass" > /root/level3_creds.txt

# Copy hint file
COPY hint.txt /home/player/hint.txt
RUN chown player:player /home/player/hint.txt && chmod 644 /home/player/hint.txt

# Expose SSH internally (no host ports exposed intentionally)
EXPOSE 22

# Run sshd foreground
CMD ["/usr/sbin/sshd","-D"]