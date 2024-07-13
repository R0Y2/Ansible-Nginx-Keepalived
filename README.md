Ansible Playbook for HA Nginx+Keepalived setup

---

Lint
```shell
ansible-lint . --exclude .github -x var-naming,name[prefix],fqcn[action-core]
```

Run
```shell
ansible-playbook -i <inventory> site.yml --extra-vars "ansible_sudo_pass=<pass>" 

or

ansible-playbook -i <inventory> site.yml -K
```
