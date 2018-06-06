#!/bin/bash

# /tf_models : mount point of object detection api.
# /trained : mount point include trained model.
# 
export PYTHONPATH=$PYTHONPATH:/tf_models:/tf_models/research:/tf_models/research/slim
export PATH=$PATH:$PYTHONPATH

python ../tf_models/research/setup.py build
python ../tf_models/research/setup.py install

python /tf_models/research/object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path /trained/pipeline.config \
    --trained_checkpoint_prefix /trained/model.ckpt-5000 \
    --output_directory /output/
