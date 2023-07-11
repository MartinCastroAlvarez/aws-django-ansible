# aws-django-ansible
Running a Django application in AWS using Ansible

![wallpaper.jpg](wallpaper.jpg)

## Ansible

Ansible is an open-source automation tool designed for managing and configuring computer systems and software applications. It simplifies the process of automating tasks such as provisioning servers, deploying applications, and configuring network devices. Ansible uses a declarative language, based on YAML (Yet Another Markup Language), to describe the desired state of a system.

The main idea behind Ansible is to provide a simple and agentless approach to automation. It connects to remote systems via SSH (Secure Shell) or other remote management protocols, without requiring any additional software or agents to be installed on the target systems. This makes it easy to use and lightweight compared to other configuration management tools.

## References

- [Installing Ansible](https://www.ansible.com/)
- [Using Ansible With AWS – Creating EC2 Instances](https://geektechstuff.com/2020/07/06/using-ansible-with-aws-creating-ec2-instances-aws-ansible/)
- [Various Ways to Launch Amazon EC2 Instance Using Ansible](https://dev.to/aws-builders/launch-amazon-ec2-using-ansible-1mpf)
- [Ansible Built-In Yum Module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_module.html)
- [Ansible Django Deployment](https://github.com/baxeico/django_ansible/tree/master/ansible)

## Installation

Install `ansible`:

```bash
brew install ansible
brew install hudochenkov/sshpass/sshpass
```

Verify the installation of `ansible-playbook`:
```bash
ansible-playbook --version
```

Install `boto3`:

```bash
pip3 install boto3
```

Setup AWS credentials:

```bash
export AWS_ACCESS_KEY_ID="AKIA335HOYDC3WI76RGH"
export AWS_SECRET_ACCESS_KEY="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"
export ANSIBLE_CONFIG=ansible.cfg
```

## Deployment

Run the following command to deploy an EC2 instance:

```bash
ansible-playbook -i local.yml ec2.yml
```

Run the following command to deploy a Django application:

```bash
ansible-playbook -i production.yml deploy.yml
```

Run the following command to start a local Ubuntu server:

```bash
docker build -t ubuntu-ssh .
docker run -d -p 2222:22 -p 8888:80 ubuntu-ssh 
```

```bash
ansible-playbook -i ubuntu.yml deploy.yml
```