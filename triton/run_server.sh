docker run -ti --rm \
    --shm-size=1g \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    --gpus all \
    -p 8000:8000 \
    -p 8001:8001 \
    -p 8002:8002 \
    --name triton_server \
    -v /home/ernestlwt/workspace/github/ScaledYOLOv4/triton/models:/models \
    -v /home/ernestlwt/workspace/github/ScaledYOLOv4/models:/models/yolov4/1/models \
    -v /home/ernestlwt/workspace/github/ScaledYOLOv4/utils:/models/yolov4/1/utils \
    -v /home/ernestlwt/workspace/github/ScaledYOLOv4/weights/yolov4-p5.pt:/weights.pt \
    -v /home/ernestlwt/workspace/github/ScaledYOLOv4/yolov4_env.tar.gz:/yolov4_env.tar.gz \
yolov4_triton tritonserver --model-repository /models