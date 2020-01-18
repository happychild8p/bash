#!/bin/bash

read response

if [[ $response == "Y" || $response == "y" ]]; then
				echo "YES"
elif [[ $response == "N" || $response == "n" ]]; then
				echo "NO"
fi

