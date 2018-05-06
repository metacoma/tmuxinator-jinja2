FROM williamyeh/ansible:alpine3
ENV TMUXINATOR_DIR=/root/.tmuxinator
RUN apk update && apk add ruby tmux && gem install --no-document tmuxinator && mkdir -p ${TMUXINATOR_DIR}
ENV PLAYBOOK_PATH=/opt/tmuxinator-j2/playbook.yml
ADD files/playbook.yml $PLAYBOOK_PATH
ADD files/entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /opt/tmuxinator-j2
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
