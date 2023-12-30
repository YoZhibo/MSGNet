if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/weather" ]; then
    mkdir ./logs/weather
fi
export CUDA_VISIBLE_DEVICES=2

seq_len=96
label_len=48
model_name=MSGNet

pred_len=96
python -u run_longExp.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path weather.csv \
    --model_id weather'_'$seq_len'_'$pred_len \
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
    --enc_in 21 \
    --dec_in 21 \
    --c_out 21 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --conv_channel 32 \
    --skip_channel 32 \
    --batch_size 32 \
    --train_epochs 3 \
    --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log

pred_len=192
python -u run_longExp.py \
   --is_training 1 \
   --root_path ./dataset/ \
   --data_path weather.csv \
    --model_id weather'_'$seq_len'_'$pred_len \
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
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log

pred_len=336
python -u run_longExp.py \
   --is_training 1 \
   --root_path ./dataset/ \
   --data_path weather.csv \
    --model_id weather'_'$seq_len'_'$pred_len \
   --model $model_name \
   --data custom \
   --features M \
   --freq h \
   --target 'OT' \
   --seq_len $seq_len \
   --label_len $label_len \
   --pred_len $pred_len \
   --e_layers 1 \
   --d_layers 1 \
   --factor 3 \
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log

pred_len=720
python -u run_longExp.py \
   --is_training 1 \
   --root_path ./dataset/ \
   --data_path weather.csv \
    --model_id weather'_'$seq_len'_'$pred_len \
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
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log


