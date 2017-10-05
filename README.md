Magic string
```
$EDITOR env_sample.yml
docker run -v`pwd`:/data --rm vikingco/jinja2cli --format=yaml /data/sample.yml /data/env_sample.yml > rendered_sample.yml && docker run -v`pwd`:/root/.tmuxinator --rm stevenaldinger/tmuxinator:latest debug rendered_sample | bash -
tmux attach -t sample
```


Another remote magic  string
```
$EDITOR env_sample.yml
docker run -v`pwd`:/data --rm vikingco/jinja2cli --format=yaml /data/sample.yml /data/env_sample.yml > rendered_sample.yml && docker run -v`pwd`:/root/.tmuxinator --rm stevenaldinger/tmuxinator:latest debug rendered_sample | ssh some_server bash -
ssh -t some_server tmux attach -t sample
``
