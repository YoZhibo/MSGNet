if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/ETTh1" ]; then
    mkdir ./logs/ETTh1
fi
export CUDA_VISIBLE_DEVICES=0

seq_len=96
label_len=48
model_name=MSGNet

pred_len=96
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh1.csv \
    --model_id ETTh1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh1 \
    --features M \
    --freq h \
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
    --d_ff 64 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.1 \
    --batch_size 32 \
    --itr 1  #>logs/ETTh1/$model_name'_'ETTh1_$seq_len'_'$pred_len.log


pred_len=192
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh1.csv \
    --model_id ETTh1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh1 \
    --features M \
    --freq h \
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
    --d_ff 64 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.1 \
    --batch_size 32 \
    --itr 1  #>logs/ETTh1/$model_name'_'ETTh1_$seq_len'_'$pred_len.log

pred_len=336
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh1.csv \
    --model_id ETTh1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh1 \
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
    --d_model 32 \
    --d_ff 64 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.1 \
    --batch_size 32 \
    --itr 1 #>logs/ETTh1/$model_name'_'ETTh1_$seq_len'_'$pred_len.log


pred_len=720
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path ETTh1.csv \
    --model_id ETTh1'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data ETTh1 \
    --features M \
    --freq h \
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
    --d_model 16 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.1 \
    --batch_size 32 \
    --itr 1  #>logs/ETTh1/$model_name'_'ETTh1_$seq_len'_'$pred_len.log