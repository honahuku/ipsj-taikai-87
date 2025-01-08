FROM paperist/texlive-ja@sha256:25eeaf8310f32bf6640c18e840c4dc961180c21be489e64e61aeaf5b05ea1189
RUN apt-get update && apt-get install --no-install-recommends -y make=4.3-4.* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
