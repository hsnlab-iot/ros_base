FROM ros:jazzy-ros-base
ARG TARGETARCH

RUN apt update && apt install -y --no-install-recommends \
   dialog apt-utils curl software-properties-common apt-transport-https wget git iputils-ping net-tools iproute2 vim build-essential ssh tmux tcpdump gdb busybox

RUN \
 busybox --install

ENV DEBIAN_FRONTEND=noninteractive

#RUN apt update && apt install -y --no-install-recommends \
#  ros-jazzy-rmw-zenoh-cpp

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
  if [ "$TARGETARCH" = "amd64" ]; then \
    mkdir -p /opt/zenoh_ws/rmw_zenoh/src && cd /opt/zenoh_ws/rmw_zenoh/src && \
    git clone https://github.com/ros2/rmw_zenoh.git -b jazzy && \
    cd /opt/zenoh_ws/rmw_zenoh && rosdep install --from-paths src --ignore-src --rosdistro jazzy -y && \
    source /opt/ros/jazzy/setup.bash && colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-skip gtest_vendor gmock_vendor --install-base /opt/ros/jazzy --merge-install && \
    rm -rf build/ log/ ; \
  elif [ "$TARGETARCH" = "arm64" ]; then \
    apt-get install -y --no-install-recommends ros-jazzy-rmw-zenoh-cpp ; \
  else \
    echo "Unsupported architecture: $TARGETARCH"; \
    exit 1; \
  fi

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
