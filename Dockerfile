FROM registry.fedoraproject.org/fedora:latest

MAINTAINER kwizart@gmail.com

RUN dnf install -qy \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm ; \
  dnf install -qy --setopt=install_weak_deps=False \
  fdkaac \
  ffmpeg \
  intel-media-driver \
  libva-intel-hybrid-driver \
  libva-intel-driver \
  libva-utils \
  mesa-va-drivers-freeworld \
  mesa-vdpau-drivers-freeworld \
  vdpauinfo \
  x264 \
  x265 \
  && dnf clean -q all

