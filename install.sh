#! /bin/bash
clear
clear
printf '\e[1;32m
888b    888                   888                     888 d8b 888    
8888b   888                   888                     888 Y8P 888            
88888b  888                   888                     888     888            
888Y88b 888  .d88b.  888  888 888888 888d888  8888b.  888 888 888888 888  888
888 Y88b888 d8P  Y8b 888  888 888    888P"       "88b 888 888 888    888  888
888  Y88888 88888888 888  888 888    888     .d888888 888 888 888    888  888
888   Y8888 Y8b.     Y88b 888 Y88b.  888     888  888 888 888 Y88b.  Y88b 888
888    Y888  "Y8888   "Y88888  "Y888 888     "Y888888 888 888  "Y888  "Y88888
                                                                          888
                                                                     Y8b d88P
                                                                      "Y88P" \e[0m'
echo
echo -e "\e[1;29m-----------------------------------------------------------------------------\e[0m"
echo
echo -e "\e[1;29m     Terms Of Usage\e[0m"
echo
echo -e "\e[3;29m I shall not use neutrality to:
(i) upload or otherwise transmit, display or distribute any
content that infringes any trademark, trade secret, copyright
or other proprietary or intellectual property rights of any
person; (ii) upload or otherwise transmit any material that contains
software viruses or any other computer code, files or programs
designed to interrupt, destroy or limit the functionality of any
computer software or hardware or telecommunications equipment;\e[0m"
echo
echo -e "\e[1;29m Do you agree to these terms?\e[0m"
echo
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo -e "\e[1;32mThe Terms Of Usage have been agreed to; continuing along with the installation.\e[0m"
	break;;
        No ) echo -e "\e[1;31mExiting the installation process as the Terms Of Usage have not been agreed to.\e[0m"
	exit;;
    esac
done
echo
echo
printf '\e[1;32m                    NEUTRALITY-INSTALLER:\e[0m'
echo
echo -e "Press \e[1;31many key\e[0m to initiate the script installation..."
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/neutrality" ]]
then
	echo -e "You didn't follow the github's simple installation instructions. I will try to do it for you..."
	sleep 4
	if [[ -d /root/neutrality ]]
	then
		rm -r /root/neutrality
	fi
	mkdir /root/neutrality
	cp -r "$DIR"/* /root/neutrality
	chmod +x /root/neutrality/install.sh
	gnome-terminal -- "bash /root/neutrality/install.sh"
fi
echo -e "Installing neutrality..."
sleep 1
echo -e "Fixing permissions."
sleep 2
chmod +x /root/neutrality/neutralityh1
chmod +x /root/neutrality/neutralityh2
chmod +x /root/neutrality/neutralityh3
chmod +x /root/neutrality/neutralityh31
chmod +x /root/neutrality/neutrality.sh
chmod +x /root/neutrality/neutralityh4
chmod +x /root/neutrality/neutralityh41
chmod +x /root/neutrality/neutralityh42
chmod +x /root/neutrality/neutralityh43
chmod +x /root/neutrality/ls/neutrality131.sh
chmod +x /root/neutrality/ls/neutrality132.sh
chmod +x /root/neutrality/ls/neutrality133.sh
chmod +x /root/neutrality/uninstall.sh
clear
echo -e "Copying script to /bin/neutrality."
sleep 1
mkdir /bin/neutrality
cd /root/neutrality
cp /root/neutrality/neutrality /bin/neutrality
cp /root/neutrality/neutralityh1 /bin/neutrality
cp /root/neutrality/neutralityh2 /bin/neutrality
cp /root/neutrality/neutralityh3 /bin/neutrality
cp /root/neutrality/neutralityh31 /bin/neutrality
cp /root/neutrality/neutralityh4 /bin/neutrality
cp /root/neutrality/neutralityh41 /bin/neutrality
cp /root/neutrality/neutralityh42 /bin/neutrality
cp /root/neutrality/neutralityh43 /bin/neutrality
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory."
else
	echo -e "/root/handshakes directory successfully detected. Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory."
else
	echo -e "/root/wordlists directory successfully detected. Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time installation."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version."
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/neutrality")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "You were supposed to only use the installation command once..."
		sleep 3
	fi
	echo -e "Adding neutrality to PATH so you can access it from anywhere."
	sleep 1
	export PATH=/bin/neutrality:$PATH
	sleep 1
	echo "export PATH=/bin/neutrality:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'neutrality' to launch the neutrality script."
sleep  4
gnome-terminal -- l
exit
