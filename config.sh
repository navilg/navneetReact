#!/bin/bash

echo "Running as superUser..."
sudo echo
echo "Making diractory $HOME/bin/navneetReact"
mkdir -p $HOME/bin/navneetReact >> /dev/null 2>&1
echo "Copying required files"
cp -f * $HOME/bin/navneetReact/
echo "Configuring $HOME/.bashrc file"
grep -iw "bash $HOME/bin/navneetReact/navneetReact" $HOME/.bashrc
if [ $? != 0 ]
then
	sudo echo "alias navneetReact="\'bash $HOME/bin/navneetReact/navneetReact\'"" >> $HOME/.bashrc
	if [ $? != 0 ]
	then
		echo -e "Failed. Try again"
		exit
	fi
fi

chmod 744 $HOME/bin/navneetReact/navneetReact

echo "Completed."
echo
echo "Use navneetReact command in the working directory to run the program."
sleep 2
