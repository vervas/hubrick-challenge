# hubrick-cookbook

This cookbook provisions and configures an Ubuntu instance running nginx that serves a plain html hello world file on port 80.

## Prerequisites
- have the ChefDK installed and the binary files in your $PATH.
- have the aws-cli installed and a `$HOME/.aws/credentials` file with your aws access key and secret.
- env variable $AWS_SSH_KEY_ID set to the name of your aws ssh key.
- env variable $AWS_SSH_KEY set to the path of that SSH key file.
- have the default security group in your AWS account allow inbound: SSH, HTTP, HTTPS, and outboud: HTTP, HTTPS.

## Usage
- clone this repo
- run `bundle install`
- run `source set_env.sh` to prepare you environment
- run `kitchen converge` to provision the instance
- run `kitchen verify` to run the tests

## License and Authors

Author:: Eyal Zekaria (eyal.ez@gmail.com)
