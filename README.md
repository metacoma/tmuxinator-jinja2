[![asciicast](https://asciinema.org/a/W6uz52dy1nT1gy1w1ObE7BDSR.png)](https://asciinema.org/a/W6uz52dy1nT1gy1w1ObE7BDSR)
```
git clone http://github.com/metacoma/tmuxinator-jinja2
cd tmuxinator-jinja2
docker pull metacoma/tmuxinator-j2
alias tj2='docker run -v `pwd`/inventory.yml:/opt/tmuxinator-j2/inventory.yml:ro --rm -i metacoma/tmuxinator-j2'
cat tmuxinator-example.yml | tj2 | ssh hw2 bash -
```

