if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/ETTh2" ]; then
    mkdir ./logs/ETTh2
fi
export CUDA_VISIBLE_DEVICES=1

seq_len=96
label_len=48
model_name=MSGNet

pred_len=96
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh2.csv \
    --model_id ETTh2'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh2 \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 16 \
    --d_ff 32 \
    --conv_channel 32 \
    --skip_channel 32 \
    --top_k 5 \
    --batch_size 32 \
    --itr 1 #>logs/ETTh2/$model_name'_'ETTh2_$seq_len'_'$pred_len.log

pred_len=192
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh2.csv \
    --model_id ETTh2'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh2 \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 16 \
    --d_ff 32 \
    --conv_channel 32 \
    --skip_channel 32 \
    --top_k 5 \
    --batch_size 32 \
    --itr 1 #>logs/ETTh2/$model_name'_'ETTh2_$seq_len'_'$pred_len.log

pred_len=336
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh2.csv \
    --model_id ETTh2'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh2 \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 16 \
    --d_ff 32 \
    --conv_channel 32 \
    --skip_channel 32 \
    --top_k 5 \
    --batch_size 32 \
    --itr 1 #>logs/ETTh2/$model_name'_'ETTh2_$seq_len'_'$pred_len.log

pred_len=720
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh2.csv \
    --model_id ETTh2'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh2 \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 16 \
    --d_ff 32 \
    --conv_channel 32 \
    --skip_channel 32 \
    --top_k 5 \
    --batch_size 32 \
    --itr 1 #>logs/ETTh2/$model_name'_'ETTh2_$seq_len'_'$pred_len.log