FROM alpine:3.18

# Install busybox-utils, openssh-client, and curl for convenience
RUN apk add --no-cache bash openssh-client curl sshpass

# Create a folder and add the level1 flag
RUN mkdir -p /home/ctf && \
    echo "flag{level1_accessed}" > /home/ctf/flag.txt && \
    chown -R root:root /home/ctf && chmod 644 /home/ctf/*

# Copy hint file
COPY hint.txt /home/ctf/hint.txt
RUN chown root:root /home/ctf/hint.txt && chmod 644 /home/ctf/hint.txt

WORKDIR /home/ctf
CMD ["/bin/sh"]