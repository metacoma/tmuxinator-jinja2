#!/bin/sh

TMUXINATOR_TEMPLATE="rendered"
OUT="${TMUXINATOR_DIR}/${TMUXINATOR_TEMPLATE}.yml"
IN="/tmp/in"

tee ${IN} > /dev/stderr

ansible-playbook -i ./inventory.yml -e source=${IN} -e dest="${OUT}" "${PLAYBOOK_PATH}" 2>&1 > /tmp/ansible.log \
  && (cat ${OUT} >/dev/stderr && tmuxinator debug ${TMUXINATOR_TEMPLATE})                                                                    \
  || cat /tmp/ansible.log > /dev/stderr



