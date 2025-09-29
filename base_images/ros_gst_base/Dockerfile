FROM ghcr.io/hsnlab-iot/ros_base:2509

ARG TARGETARCH

RUN apt update && apt install -y --no-install-recommends \
  python3 python3-venv python3-pip python3-pkgconfig pkg-config

RUN  apt-get install -y \
    libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly gstreamer1.0-plugins-base-apps gstreamer1.0-libav 

RUN apt-get install -y --no-install-recommends \
    ros-jazzy-depth-image-proc

