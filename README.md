VIM
=========

A brief description of the role goes here. Setups vim and .vimrc 


Downloads the following plugins:
  - NERDTree


Requirements
------------

Vim and Git are downloaded via repository manager 

How to run 
----------

After clone Prepare the following playbook.yml file with the content
```
- hosts: all
  connection: local
  become: yes
  roles:
    - vim 
```
Please also prepare the inventory file call it 'inventory' with the content as follows:
```
[local]
127.0.0.1
```

Finally run ansible-playbook:

```
$ansible-playbook -i inventory.txt --connection local --ask-become-pass playbook.yml
```

The files should one level outside this repository not within it
