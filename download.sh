#!/bin/bash

PWD=$(pwd)

# download tensorflow model
MODEL=$PWD/model
mkdir $MODEL
wget http://download.tensorflow.org/models/object_detection/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz \
    -O $MODEL/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz
tar zxvf $MODEL/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz -C $MODEL
rm -rf $MODEL/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz

# download text graph
wget https://raw.githubusercontent.com/opencv/opencv_extra/master/testdata/dnn/mask_rcnn_inception_v2_coco_2018_01_28.pbtxt \
    -O $MODEL/mask_rcnn_inception_v2_coco_2018_01_28/frozen_text_graph.pbtxt

# download labels
# DATA=$PWD/data
# mkdir $DATA
# wget https://raw.githubusercontent.com/amikelive/coco-labels/master/coco-labels-paper.txt \
#     -O $DATA/mscoco_labels.txt
