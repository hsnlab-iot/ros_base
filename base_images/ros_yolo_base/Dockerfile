FROM ghcr.io/hsnlab-iot/ros_base:main

ARG TARGETARCH

RUN apt update && apt install -y --no-install-recommends \
  python3 python3-venv python3-pip

SHELL ["/bin/bash", "-c"]

RUN \
  python3 -m venv /opt/yolo.venv && \
  /opt/yolo.venv/bin/pip install --upgrade pip && \
  /opt/yolo.venv/bin/pip install ultralytics

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
