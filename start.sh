rm finetune_model/*
CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$(pwd)  python3 train/train_wc.py --input_file=dataset/train_data/train.tfrecord --output_dir=/data/gpt2-ml-finetune --init_checkpoint=/data/gpt2-ml-model/model.ckpt-220000
