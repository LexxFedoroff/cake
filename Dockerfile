FROM microsoft/dotnet:latest

ARG path

COPY $path /usr/share/cake

RUN echo "alias cake='dotnet /usr/share/cake/Cake.dll'" >> ~/.bashrc

WORKDIR /home