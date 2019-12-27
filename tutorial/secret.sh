#!/usr/bin/bash

read -sp "Enter the secret code" secret

if [ "$secret" == "P@ssw0rd" ]; then
				echo "Entered"
else
				echo "Wrong password"
fi

