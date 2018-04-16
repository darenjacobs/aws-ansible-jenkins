# Jenkins Ansible

```
By default this will create 1 Jenkins master and 2 Jenkins slaves, with the application, log and cache directories stored on EFS
```


### Playbook deployment
```
As root do the following:

Export env vars for AWS credentials
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt
export AWS_SECRET_ACCESS_KEY="VALUE"
export AWS_ACCESS_KEY_ID="VALUE"
get $VALUE from vault/vault.yml

run jenkins.sh
```


### Playbook vars
The files containing variables are:

- group_vars/all
- install-jenkins-master/vars/main.yml
  - edit this file to add plugins and jobs
- install-jenkins-slave/vars/main.yml
- vault/vault.yml

```
vault.yml has the following variables:

aws_region:
aws_id:
aws_key:
ssh_keyname:
security_group:
standard_ami:
vpc_subnet:

jenkins_user_credentials_id:
credentials_id:
credentials_username:
credentials_password:
shared_library_id:
```
