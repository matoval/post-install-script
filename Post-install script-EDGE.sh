!#/bin/bash

### My post-install script




## INSTALL REDHAT CERTS MANUALLY
while true; do
	read -p "Did you install RedHat certs (y/n)?  " -r yn
	case "${yn}" in
		[Yy]* )
			echo "Awesome!"
			break;;	
		[Nn]* ) 
			echo "Don't forget to install the RedHat certs!"
			break;;
		*) echo "";;
	esac
done


## INSTALL REDHAT VPN	
while true; do
	read -p "Did you install RedHat VPN (y/n)?  " -r yn
	case "${yn}" in
		[Yy]* )
			echo "Awesome!"
			break;;	
		[Nn]* ) 
			echo "Don't forget to install the RedHat VPN!"
			break;;
		*) echo "";;
	esac
done

	

#Update
sudo dnf -y update

#Install Python 3.6
sudo dnf install python36

#Install pylint
sudo dnf install pylint

#Install flake8
pip install flake8

#Install pytest
pip install -U pytest

#Install VScode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

#Install Nodejs
sudo dnf install nodejs

#Install Slack
sudo dnf -y install wget
wget https://downloads.slack-edge.com/linux_releases/slack-4.14.0-0.1.fc21.x86_64.rpm
sudo dnf localinstall slack-4.14.0-0.1.fc21.x86_64.rpm

#install Spideroak
wget http://hdn.corp.redhat.com/rhel8-csb/RPMS/x86_64/SpiderOakGroups-7.5.0-1.el7.x86_64.rpm
sudo dnf localinstall SpiderOakGroups-7.5.0-1.el7.x86_64.rpm

echo

#Check all packages are installed
python --version
echo
pylint --version
echo
echo "flake8"
flake8 --version
echo
pytest --version
echo
echo "Node"
node --version
echo

#Link to install Go
echo "Don't forget to install Go 1.14 https://golang.org/dl/"

#Link to install Chrome
echo "Don't forget to install Chrome https://www.google.com/chrome/"

echo

#Open Spideroak Groups
echo "Don't forget to set up Spideroak Groups"

echo

read -p "Press enter to close terminal"

