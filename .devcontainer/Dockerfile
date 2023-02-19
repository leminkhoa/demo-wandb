FROM mcr.microsoft.com/devcontainers/miniconda:0-3

# Set timezone for image
RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Saigon /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
ENV TZ="Asia/Saigon"

# Copy environment.yml (if found) to a temp location so we update the environment. Also
# copy "noop.txt" so the COPY instruction does not fail if no environment.yml exists.
COPY environment.yml* .devcontainer/noop.txt /tmp/conda-tmp/
RUN if [ -f "/tmp/conda-tmp/environment.yml" ]; then umask 0002 && /opt/conda/bin/conda env update -n base -f /tmp/conda-tmp/environment.yml; fi \
    && rm -rf /tmp/conda-tmp
