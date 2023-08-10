# syntax=docker/dockerfile:1
FROM ubuntu:14.04
WORKDIR /app
COPY app/server_Data /app/server_Data
COPY app/server.x86_64 /app/
COPY app/UnityPlayer.so /app/
EXPOSE 7777/udp
RUN cd /app
RUN sudo chmod +x server.x86_64
CMD ["./server.x86_64"]