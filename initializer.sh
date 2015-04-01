#!/bin/bash
declare -a installArray
declare -a installationData
declare -a TEMP

#input format: 'ppa|appname'
installationData[0]="ppa:webupd8team/java|oracle-java8-installer"
installationData[1]="ppa:git-core/ppa|git"
installationData[2]="ppa:mercurial-ppa/releases|mercurial"
installationData[3]="ppa:tortoisehg-ppa/releases|tortoisehg"

#adding repositories
for i in "${installationData[@]}"
do
        TEMP=(${i//|/ })
        sudo add-apt-repository -y "${TEMP[0]}"
        echo -e "Added new repository: ${TEMP[0]}"
done

#updating repository list
echo -e "Updating repository list..."
sudo apt-get -y update &> /dev/null
echo -e "Done! \n\n"

#installation of apps
for i in "${installationData[@]}"
do
        TEMP=(${i//|/ })
        echo -e "Installing ${TEMP[1]}..."
        sudo apt-get -y install "${TEMP[1]}"
        echo -e "Done!"
done
