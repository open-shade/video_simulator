FROM ros:humble

WORKDIR /home/shade/shade_ws/src

RUN  apt update && \
    apt install -y \
    python3-natsort \
    curl \
    python3-pip ffmpeg libsm6 libxext6 ros-humble-cv-bridge ros-humble-vision-opencv && \
    python3 -m pip install opencv-python && \
    curl https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_10mb.mp4 --output ~/video.mp4

COPY . ./video_simulator

WORKDIR /home/shade/shade_ws

RUN colcon build

COPY ./stream.sh ./stream.sh

RUN chmod +x /home/shade/shade_ws/stream.sh

ENTRYPOINT ["/home/shade/shade_ws/stream.sh"]
