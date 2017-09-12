# watworks-ops

Watworks-ops is currently planned as a series of containers for building container environments (kubernetes).

It is going to be geared toward AWS starting off, but engineered to be deployable to GCE or Azure as well

It employs a technique we're currently dubbing "container transparency"


## Container Transparency
This technique involves aliasing the commands you want to run in the container with local script commands bearing the name of the command you want to run in the container.

For example, to run "aws ec2 describe-vpcs" inside the container, you would normally need to type a long docker run command everytime you want to use it.

But with this method, you actually run a script called "aws" inside the project - which contains the docker run command and passes the script name and arguments to docker.

The end result is that you simply type the commands you would normally want to use as if the tools are installed on your local machine, but they run in the container instead. If you also have the tool installed on your local machine it will be overridden as long as you're in the root of the project directory.

Depends on adding "./transparency_commands" to the system path which is done by **sourcing** the _path_ file (see _path_ file for details)

## AWS

Assumes you have AWS credentials stored in _$HOME/.aws_ and are mapped to _/[user]/.aws_ in an container running _awscli_

Assumes you have a container that will run _awscli_

## Terraform

Run terrafrom

Maps AWS credentials from $HOME/.aws
Maps terraform configs from [Watworks-ops]\terraform

Before running plans run _terraform init_ to install the aws provider. Referenced in _providers.tf_
