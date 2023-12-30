if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/ETTm1" ]; then
    mkdir ./logs/ETTm1
fi

export CUDA_VISIBLE_DEVICES=2

seq_len=96
label_len=48
model_name=MSGNet

pred_len=96
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTm1.csv \
    --model_id ETTm1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTm1 \
    --features M \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm1/$model_name'_'ETTm1_$seq_len'_'$pred_len.log

pred_len=192
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTm1.csv \
    --model_id ETTm1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTm1 \
    --features M \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm1/$model_name'_'ETTm1_$seq_len'_'$pred_len.log


pred_len=336
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTm1.csv \
    --model_id ETTm1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTm1 \
    --features M \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm1/$model_name'_'ETTm1_$seq_len'_'$pred_len.log


pred_len=720
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTm1.csv \
    --model_id ETTm1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTm1 \
    --features M \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 1 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm1/$model_name'_'ETTm1_$seq_len'_'$pred_len.log