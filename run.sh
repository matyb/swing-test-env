CMD=${1:-/bin/bash}
docker run -it swing-test-env /bin/bash -c "echo 'git clone https://github.com/matyb/swing-test-env && gradle -p swing-test-env/app test'>test.sh && chmod +x test.sh && $CMD"
