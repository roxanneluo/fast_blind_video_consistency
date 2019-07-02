#!/bin/bash

URL=http://vllab.ucmerced.edu/wlai24/video_consistency/models
MODEL_DIR=pretrained_model

wget -N $URL/ECCV18_blind_consistency.pth -P ${MODEL_DIR}
wget -N $URL/ECCV18_blind_consistency_opts.pth -P ${MODEL_DIR}
wget -N $URL/FlowNet2_checkpoint.pth.tar -P ${MODEL_DIR}
