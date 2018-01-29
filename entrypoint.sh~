#!/bin/sh
if [ -$1- == -key- ]; then
        cat /root/.ssh/id_rsa.pub
elif [ -$1- == -test- ]; then
        ssh -T git@github.com
else
	echo
        echo 'Step 1 : print public key'
        echo
        echo -e "\trun"
        echo -e "\tdocker run <IMAGE NAME> key"
        echo
        echo 'Step 2 : add key to github'
        echo
        echo -e "\tvisit"
        echo -e "\thttps://github.com/settings/keys"
        echo
        echo 'Step 3 : test'
        echo
        echo -e "\trun"
        echo -e "\tdocker run <IMAGE NAME> test"
	echo
fi
