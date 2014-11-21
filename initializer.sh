#!/bin/bash

echo "Hello, $USER!"

echo "I am Initializer, a script which will help you install packages to your freshly installed Ubuntu."
echo "I need to add all ppa's. You'll have to accept them manually. So pay attention."


echo "I will now try to add Java Development Kit for you. It's ppa is 'ppa:webupd8team/java'"
sudo add-apt-repository ppa:webupd8team/java
echo "Good. I'll now follow up with Wine. It's ppa is 'ppa:ubuntu-wine/ppa'"
sudo add-apt-repository ppa:ubuntu-wine/ppa
echo "Great! Now some controversy. Google Chrome! Its ppa has to be added manually. Do not worry, I'll do it for you."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo "Ok. Now Git! Git is the most popular version control system out there, made by the same guy who made Linux! Its ppa is 'ppa:git-core/ppa'"
sudo add-apt-repository ppa:git-core/ppa
echo "Following now with Mercurial. Even though Mercurial isn't the most popular, it has a great support and is widely used version control system. Its ppa is 'ppa:mercurial-ppa/releases'"
sudo add-apt-repository ppa:mercurial-ppa/releases
echo "TortoiseHG is the best GUI for Mercurial. You'd be insane not to have it! Its ppa is 'ppa:tortoisehg-ppa/releases'"
sudo add-apt-repository ppa:tortoisehg-ppa/releases

echo "hey, that will be all for now. I'll need to update the package list now and then I'll install everything you need. Relax."
sudo apt-get update

echo "Good. Let the installations begin."
echo "Which java version would you like?"
select java in "Oracle Java 7" "Oracle Java 8"; do
  case $java in
    "Oracle Java 7" ) 
		echo "Oracle java 7 it is!"; sudo apt-get install oracle-java7-installer -y; break;;
	"Oracle Java 8" ) 
		echo "Oracle java 8 it is!"; sudo apt-get install oracle-java8-installer -y; break;;
  esac
done
echo "JDK should now be installed."

echo "Continuing on, Wine is next!"
sudo apt-get install wine1.7 -y
echo "Wine should now be installed."

echo "PlayOnLinux is a nifty little tool that helps you with installing Windows (.exe) applications on Wine."
sudo apt-get install playonlinux -y
echo "PlayOnLinux should now be installed."

echo "Chrome is next. I'll install a stable version for you. You can later choose unstable or beta."
sudo apt-get install google-chrome-stable -y
echo "Google Chrome stable should now be installed."

echo "Now Git!"
sudo apt-get install git -y
echo "Git should now be installed."

echo "GitG might help you a little bit with Git."
sudo apt-get install gitg -y
echo "GitG should now be installed."

echo "Mercurial!"
sudo apt-get install mercurial -y
echo "Mercurial should now be installed."

echo "TortoiseHG, your window to Mercurial!"
sudo apt-get install tortoisehg -y
echo "TortoiseHG should now be installed."

echo "There's a tool called Synaptic Package Manager. It helps you visualize packages you have and packages you wish to install."
sudo apt-get install synaptic -y
echo "Synaptic should now be installed."

echo "VLC is a good all-around player. You'll benefit by having it."
sudo apt-get install vlc -y
echo "VLC should now be installed"

echo "MainMenu is a nifty tool useful for creating Application Entries into the Menu of your system."
echo "I currently don't know how to create that for you, so I'll just prepare a tool for you."
sudo apt-get install alacarte -y
echo "MainMenu (alacarte) should now be installed."

echo "There's still work to do. Before I continue, I'll clean stuff."
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get check

echo "I'm pretty much done with what I can get from known package repositories."
echo "I'll now manually download Android-SDK and AndroidStudio."
echo "When I'm done with each download, I'll manually position it into your home folder"
cd /tmp
mkdir android-sdk-download
cd android-sdk-download
wget https://dl.google.com/android/android-sdk_r23.0.2-linux.tgz -O android-sdk.tgz
tar zxvf android-sdk.tgz
mkdir /home/$USER/android-sdk
cp -r android-sdk-linux/* /home/$USER/android-sdk
echo "Android-SDK should installed, cleaning up."
cd /tmp
sudo rm -rf android-sdk-download
echo "I'll now install Android Studio."
mkdir android-studio-download
cd android-studio-download
wget https://dl.google.com/dl/android/studio/ide-zips/1.0.0-rc1/android-studio-ide-135.1598475-linux.zip -O android-studio.zip
unzip android-studio.zip
mkdir /home/$USER/android-studio
cp -r android-studio/* /home/$USER/android-studio
echo "Android Studio should be installed, cleaning up."
sudo rm -rf android-studio-download
echo "Done. Thank you for your patience. Initializer OFF!"