# watworks-ops

Watworks-ops is currently planned as a series of containers for building container environments

It employs a technique I'm currently dubbing "container transparency"

This technique involves aliasing the commands you want to run in the container with local script commands bearing the name of the command you want to run in the container.

For example, to run "aws ec2 describe-vpcs" inside the container, you would normally need to type a long docker run command everytime you want to use it.

But with this method, you actually run the aws script inside the project - which contains the docker run command and passes the script name and arguments to docker.

The end result is that you simply type the commands you would normally want to use as if the tools are installed on your local machine, but they run in the container instead

Depends on adding "./" to the system path which is done by **sourcing** the _makepath_ file

Assumes you have AWS credentials stored in _~/.aws_ and are mapped to _/root/.aws_ in an container running _awscli_
