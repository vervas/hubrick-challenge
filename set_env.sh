#!/bin/bash

if [ ! -f "$HOME/.aws/credentials" ]; then
    echo "missing 'credentials' file, running 'aws configure'"
    aws configure
fi

if [ -z "$AWS_SSH_KEY_ID" ]; then
   echo "env variable AWS_SSH_KEY_ID not set, enter value now (name of aws key pair):"
   read input_var
   export AWS_SSH_KEY_ID=$input_var
fi

if [ -z "$AWS_SSH_KEY" ]; then
   echo "env variable AWS_SSH_KEY not set, enter value now (path to .pem key file):"
   read input_var
   export AWS_SSH_KEY=$input_var
fi
