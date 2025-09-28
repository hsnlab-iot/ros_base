FROM ros:jazzy-ros-base

RUN apt update && apt install -y --no-install-recommends \
   dialog apt-utils curl software-properties-common apt-transport-https wget git iputils-ping net-tools iproute2 vim build-essential ssh tmux tcpdump gdb busybox

RUN \
 busybox --install

ENV DEBIAN_FRONTEND=noninteractive

#RUN apt update && apt install -y --no-install-recommends \
#  ros-jazzy-rmw-zenoh-cpp

SHELL ["/bin/bash", "-c"]

RUN \
    apt update && \
    mkdir -p /opt/ws/rmw_zenoh/src && cd /opt/ws/rmw_zenoh/src && \
    git clone https://github.com/ros2/rmw_zenoh.git -b jazzy && \
    cd /opt/ws/rmw_zenoh && rosdep install --from-paths src --ignore-src --rosdistro jazzy -y
RUN \
    source /opt/ros/jazzy/setup.bash && colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-skip gtest_vendor gmock_vendor && \
    rm -rf build/ log/ && \
    echo "source /opt/ws/rmw_zenoh/install/setup.bash" >> /root/.bashrc

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
