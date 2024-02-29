#!/bin/bash

# Password Generator

echo "This is a password generator"
echo "Please enter the length of desired password: "

read pass_length

for p in $(seq 1 5);
do
	# 48 random  base64 characters
	openssl rand -base64 48 | cut -c1-$pass_length
done
