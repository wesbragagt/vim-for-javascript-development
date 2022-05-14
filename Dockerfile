FROM linuxbrew/brew AS base

ARG ${DEVELOPER_USER:-"test_user"}

RUN apt-get update && \
    apt-get install -y -q --allow-unauthenticated \
    git \
    sudo \ 
    vim
RUN echo "Defaults env_editor,editor=/usr/bin/vi:/usr/bin/nano:/usr/bin/vim" >> /etc/sudoers


# Create ubuntu user with sudo privileges
RUN useradd -ms /bin/bash $DEVELOPER_USER && \
    usermod -aG sudo $DEVELOPER_USER
# New added for disable sudo password
RUN echo '$DEVELOPER_USER ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set as default user
USER $DEVELOPER_USER
ENV HOME="/home/$DEVELOPER_USER"

ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
RUN sudo chown -R $DEVELOPER_USER /home/linuxbrew/.linuxbrew

WORKDIR /home/$DEVELOPER_USER
