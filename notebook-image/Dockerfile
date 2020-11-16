FROM jupyter/scipy-notebook:584e9ab39d22

USER root

RUN rm /etc/dpkg/dpkg.cfg.d/excludes \
    && apt-get update \
    && apt-get install -y \
    libproj-dev \
    proj-data \
    proj-bin \
    libgeos-dev \
    libgraphviz-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt \
    && fix-permissions $CONDA_DIR \
    && fix-permissions /home/$NB_USER


CMD [ "start.sh", "jupyter", "lab", "--port=8889", "" ]
