if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/exchange" ]; then
    mkdir ./logs/exchange
fi

export CUDA_VISIBLE_DEVICES=2

seq_len=96
label_len=48
model_name=MSGNet

pred_len=96
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path exchange_rate.csv \
    --model_id exchange'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 3 \
    --dropout 0.2 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


pred_len=192
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path exchange_rate.csv \
    --model_id exchange'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --node_dim 30 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


pred_len=336
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path exchange_rate.csv \
    --model_id exchange'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --node_dim 30 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


pred_len=720
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path exchange_rate.csv \
    --model_id exchange'_'$seq_len'_'$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len $seq_len \
    --label_len $label_len \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log