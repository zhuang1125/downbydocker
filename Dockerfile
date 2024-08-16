FROM mcr.microsoft.com/dotnet/aspnet:6.0-bullseye-slim AS base

RUN apt-get update && apt-get remove libgdiplus -y && apt autoremove -y && apt-get install -y apt-transport-https dirmngr gnupg ca-certificates 
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF 
RUN echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt-get update && apt-get install -y mono-devel


RUN apt-get install git libgif-dev autoconf libtool automake build-essential gettext libglib2.0-dev libcairo2-dev libtiff-dev libexif-dev libpango1.0-dev -y
RUN git clone https://github.com/mono/libgdiplus.git \
&& cd libgdiplus \
&& ./autogen.sh --with-pango --prefix=/usr \
&& make \
&& make install \
