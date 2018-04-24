~/tmp/tmuxinator-jinja2
echo "env_id: $1" > k8s/env_slave_docker.yml
docker run -v`pwd`:/data --rm vikingco/jinja2cli --format=yaml /data/k8s/slave_docker.yml /data/k8s/env_slave_docker.yml > slave_docker_rendered.yml && docker run -v`pwd`:/root/.tmuxinator --rm stevenaldinger/tmuxinator:latest debug slave_docker_rendered | ssh rundeck bash -
ssh -t rundeck tmux attach -t $1
