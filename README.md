This image continually streams [this demo video](https://www.sample-videos.com/video123/mp4/480/big_buck_bunny_480p_10mb.mp4) to any given output topic.

Use like this:

`docker run -it shaderobotics/video-simulator --ros-args -r /image/image_raw:=/any/new/topic`

Example:

If an output topic is not specified, it defaults to `/image/image_raw`
