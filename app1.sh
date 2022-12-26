#!/bin/bash
install()
{
        sudo apt-get update
    sudo apt-get -y install awscli 
    if [ $? -ne 0 ]; then
       echo "error while installing awscli"
    fi
    echo "awscli installed successfully"

        sudo apt install netcat -y
        if [ $? -ne 0 ]
        then
                echo " netcat installation unsucessful"
         else
                echo "netcat installed successfully"
        fi
        sudo curl https://apt.releases.teleport.dev/gpg \
-o /usr/share/keyrings/teleport-archive-keyring.asc
source /etc/os-release
echo "deb [signed-by=/usr/share/keyrings/teleport-archive-keyring.asc] \
https://apt.releases.teleport.dev/${ID?} ${VERSION_CODENAME?} stable/v11" \ | sudo tee /etc/apt/sources.list.d/teleport.list > /dev/null
sudo apt-get update -y
sudo apt-get -y install teleport
if [ $? -ne 0 ]
then
                echo " tsh installation unsucessful"
else
                echo "tsh installed successfully"
        fi
}
install
