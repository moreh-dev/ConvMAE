# 실행 방법

* 아래와 같이 작성된 run.sh를 환경에 맞게 수정하여 실행할 수 있습니다.
  * `--batch_size` 인자를 수정하여 batch size를 조절 할 수 있습니다.
* SDA별 권장 batch size는 다음과 같습니다.

    | SDA            | batch size |
    |----------------|------------|
    | Small.64GB     | 200        |
    | Medium.128GB   | 400        |
    | Large.256GB    | 800        |
    | xLarge.512GB   | 1600       |
    | 2xLarge.1024GB | 3200       |
    | 4xLarge.2048GB | 6400       |

```
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

```
