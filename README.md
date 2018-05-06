```
git clone http://github.com/metacoma/tmuxinator-jinja2
cd tmuxinator-jinja2
alias tj2='docker run -v `pwd`/inventory.yml:/opt/tmuxinator-j2/inventory.yml:ro --rm -i metacoma/tmuxinator-j2'
cat tmuxinator-example.yml | tj2 | ssh hw2 bash -
```
