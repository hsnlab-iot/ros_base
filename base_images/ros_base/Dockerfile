FROM ros:jazzy-ros-base
ARG TARGETARCH

RUN apt update && apt install -y --no-install-recommends \
   dialog apt-utils curl software-properties-common apt-transport-https wget \
   git build-essential gdb \
   iputils-ping net-tools iproute2 tcpdump iftop \
   vim ssh tmux busybox

RUN \
 busybox --install

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y --no-install-recommends \
  ros-jazzy-rmw-zenoh-cpp

SHELL ["/bin/bash", "-c"]

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
