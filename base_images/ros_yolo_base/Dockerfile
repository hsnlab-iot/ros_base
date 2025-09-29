FROM ghcr.io/hsnlab-iot/ros_base:main

ARG TARGETARCH

RUN apt update && apt install -y --no-install-recommends \
  python3 python3-venv python3-pip

SHELL ["/bin/bash", "-c"]

RUN \
  python3 -m venv /opt/yolo.venv && \
  source /opt/yolo.venv/bin/activate && \
  python -m pip install --upgrade pip && \
  pip install ultralytics

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
