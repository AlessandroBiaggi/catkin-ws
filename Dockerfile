FROM ubuntu:18.04

LABEL org.opencontainers.image.source="https://github.com/AlessandroBiaggi/catkin-ws"

RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list

ADD https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc /tmp/ros.asc
RUN cat /tmp/ros.asc | apt-key add -

RUN apt-get update
RUN apt-get install ros-melodic-desktop-full