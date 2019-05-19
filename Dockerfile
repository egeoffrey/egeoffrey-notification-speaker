### MYHOUSE ###

### define base image
ARG MYHOUSE_SDK_VERSION
ARG ARCHITECTURE
FROM myhouseproject/myhouse-sdk-raspbian:${ARCHITECTURE}-${MYHOUSE_SDK_VERSION}

### install module's dependencies
RUN apt-get update && apt-get install -y mpg123 flac libttspico-utils bluetooth bluez bluez-tools alsa-utils pulseaudio-module-bluetooth && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install gTTS

### copy files into the image
COPY . $WORKDIR

### define the modules provided which needs to be started
ENV MYHOUSE_MODULES="notification/speaker"
