### EGEOFFREY ###

### define base image
ARG SDK_VERSION
ARG ARCHITECTURE
FROM egeoffrey/egeoffrey-sdk-raspbian:${SDK_VERSION}-${ARCHITECTURE}

### install module's dependencies
RUN apt-get update && apt-get install -y mpg123 flac libttspico-utils bluetooth bluez bluez-tools alsa-utils pulseaudio-module-bluetooth sox && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade setuptools && pip install gTTS

### copy files into the image
COPY . $WORKDIR

