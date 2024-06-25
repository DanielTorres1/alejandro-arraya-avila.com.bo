#!/bin/bash

# Validación de usuario root
if [ "$(id -u)" != "0" ]; then
    echo "Este script sólo puede ser ejecutado por el usuario root."
    exit 1
fi

apt update

rm -rf source 2>/dev/null
mkdir source
cd source
rm /etc/apt/keyrings/docker.gpg 2>/dev/null

sudo apt install -y openssl libssl-dev

git clone https://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@github.com/DanielTorres1/lanscanner.git
cd lanscanner
bash instalar.sh
cd ..

git clone https://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@github.com/DanielTorres1/webgo.git
cd webgo
bash instalar.sh
cd ..

git clone https://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@github.com/DanielTorres1/Webtester.git
cd Webtester
bash instalar.sh
cd ..

git clone https://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@github.com/DanielTorres1/webexploits.git
cd webexploits
bash instalar.sh
cd ..


git clone https://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@github.com/DanielTorres1/PassSuite.git
cd PassSuite
bash instalar.sh
cd ..

git clone https://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@github.com/DanielTorres1/recon.git
cd recon
bash instalar.sh
cd ..
