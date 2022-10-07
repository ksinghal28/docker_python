FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
LABEL Image for python packages - k.singhal@wustl.edu


RUN apt-get update -y && apt-get install -y --no-install-recommends \
    ack-grep \
    bzip2 \
    curl \
    bsdmainutils \ 
    dbus \
    default-jre \
    emacs \
    emacs-goodies-el \
    ess \
    gawk \
    git \
    grep \
    less \
    tmux \
    rsync \
    unzip \
    wget \
    zip \
    python3-pip \
    python3-numpy \
    python3-scipy \
    cython3 \
    python3-pyfaidx \
    python3-pybedtools \
    python3-cyvcf2 \
    python3-pandas \
    python3-pysam \
    python3-seaborn \
    tzdata

# a few python libs that weren't available through apt-get
RUN pip install cruzdb==0.5.6 \
    intervaltree_bio==1.0.1 \
    multiqc==1.11 \
    pyensembl==1.9.4 \
    regex

# timezone env with default
ENV TZ=America/Chicago

