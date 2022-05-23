FROM ubuntu:18.04

LABEL org.opencontainers.image.source="https://github.com/AlessandroBiaggi/catkin-ws"

RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list

ADD https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc /tmp/ros.asc
# https://stackoverflow.com/a/51752997
RUN apt-get update && apt-get install -y gnupg2
RUN apt-key add /tmp/ros.asc

RUN apt-get update &&  apt-get install -y ros-melodic-desktop-full
