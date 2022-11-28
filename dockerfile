FROM ubuntu:22.04
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-distutils python3-apt \
    curl wget git mercurial diffutils vim build-essential libpython3-dev m4 unzip uuid zip \
    python3-dev \
    libssl-dev \
    libffi-dev \
    python3-setuptools \
    python3-wheel \
    python3-cffi \
    sudo ccache libtinfo5 libncurses5 libxml2-dev

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN groupadd -g ${GROUP_ID} aosp &&\
    useradd -l -u ${USER_ID} -g aosp aosp &&\
    install -d -m 0755 -o aosp -g aosp /home/aosp
RUN echo "aosp ALL=NOPASSWD: /usr/bin/apt,/usr/bin/apt-get" >> /etc/sudoers
USER aosp
WORKDIR /home/aosp
