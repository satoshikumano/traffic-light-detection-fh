floyd run --cpu --env tensorflow-1.4 \
    --data satoshikumano/datasets/tl-detection-sim-trained/1:/trained \
    --data satoshikumano/datasets/tf-models/2:/tf_models \
    bash run-export.sh
