#!/bin/bash
#This script for cloning of the Platform and Framework

export Platform=https://github.com/Vishnu4226/Platform.git

export Framework=https://github.com/Vishnu4226/Framework.git

git submodule add $Platform platform-$(Build.BuildId)

if [ $?=0 ]
then
echo Hey Platform module imported successfully!!!
else
echo Hey Platform module import is not completed successfully, Please have a look!!! 
fi

git submodule add $Framework Framework-$(Build.BuildId)

if [ $?=0 ]
then
echo Hey Framework module imported successfully!!!
else
echo Hey Framework module import is not completed successfully, Please have a look!!! 
fi

ls -lrt