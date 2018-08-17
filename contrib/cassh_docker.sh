#!/usr/bin/env bash

docker run --rm -it \
  --log-driver="none" \
  -u $(id -u) \
  -e HOME=${HOME} \
  --volume=${HOME}/.cassh:${HOME}/.cassh:ro \
  --volume=${HOME}/.ssh:${HOME}/.ssh \
  --workdir=${HOME} \
  leboncoin/cassh "$@"
