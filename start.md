## Docker Open House - Start Here

Use these steps to begin the challenge quickly.

1) Start all containers:
   docker compose up -d

2) Enter Level 1 shell:
   docker exec -it level1 /bin/bash

Tips
 -  SAVE your flags from level1 and level2


Helpful Commands
ls - list things in current directory
cat - print files to the terminal
cd - change directory
sudo <command> - use to launch something as an admin

Notes
- All services share the `ctfnet` Docker network and can resolve by service name.
- If the SSH host key prompt appears, answer "yes".
