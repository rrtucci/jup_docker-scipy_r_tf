# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=rrtucci/jup_docker-scipy_r
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

# Install Tensorflow
RUN pip install --quiet \
    'tensorflow==2.1.0' && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
