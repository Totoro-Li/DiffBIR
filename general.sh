#!/bin/bash

# Usage: ./general.sh <input_folder_path>

input_folder_path="$1"

# Extract the last part of the input path (e.g., 'original' from 'inputs/original')
folder_name=$(basename "$input_folder_path")

# Construct the output path
output_folder_path="results/$folder_name"

python inference.py \
--input "$input_folder_path" \
--config configs/model/cldm.yaml \
--ckpt weights/general_full_v1.ckpt \
--reload_swinir --swinir_ckpt weights/general_swinir_v1.ckpt \
--steps 50 \
--sr_scale 2 \
--color_fix_type wavelet \
--output "$output_folder_path" \
--device cuda \
--tiled --tile_size 1280 --tile_stride 640
