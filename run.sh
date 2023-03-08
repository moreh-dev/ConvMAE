mkdir -p ./checkpoint

python main_pretrain.py \
    --batch_size 1600 \
    --model convmae_convvit_base_patch16 \
    --norm_pix_loss \
    --mask_ratio 0.75 \
    --epochs 1600 \
    --warmup_epochs 40 \
    --blr 1.5e-4 --weight_decay 0.05 \
    --data_path ./data
mkdir -p ./output_dir
