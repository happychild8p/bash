#!/usr/bin/bash

while read avg rbis hrs; do
				printf "Avg: ${avg}\nRBIs: ${rbis}\n HRs: ${hrs}\n"
done < b_b.txt
