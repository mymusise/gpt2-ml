CUDA_VISIBLE_DEVICES=0  python train/train_wc.py --input_file=dataset/train_data/train.tfrecord --output_dir=finetune_model --init_checkpoint=/data/gpt2-ml-model/model.ckpt-220000
