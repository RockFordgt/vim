VIM
=========

A brief description of the role goes here. Setups vim and .vimrc 


Downloads the following plugins:
  - pathogen
  - NERDTree
  - indentguides

Colorchemas:
  - solarized8
  - summerfruit

Syntax files:
  - qml

if pass is installed also adds `redact_pass.vim`


Requirements
------------

Vim and Git are downloaded via repository manager 

How to run 
----------

Clone the repo
```
git clone https://github.com/RockFordgt/vim.git
```
Notice: do not `cd` into the vim direcotry.

Run ansible-playbook:

```
$ansible-playbook -i vim/inventory.txt --connection local --ask-become-pass vim/playbook.yml
```

The files should one level outside this repository not within it
