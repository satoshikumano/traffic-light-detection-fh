#!/bin/bash

# /tf_models : mount point of object detection api.
# /udacity-sim : mount point include config and model, training data.
# 
export PYTHONPATH=$PYTHONPATH:/tf_models:/tf_models/research:/tf_models/research/slim
export PATH=$PATH:$PYTHONPATH

python ../tf_models/research/setup.py build
python ../tf_models/research/setup.py install

python /tf_models/research/object_detection/train.py --logtostderr --train_dir=/output/ --pipeline_config_path=/udacity-sim/ssd_mobilenet-traffic-udacity_sim.config
