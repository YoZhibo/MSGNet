if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Flight" ]; then
    mkdir ./logs/Flight
fi

export CUDA_VISIBLE_DEVICES=2

seq_len=96
label_len=48
model_name=MSGNet

for pred_len in 96 192 336 720
do
  python -u run_longExp.py \
      --is_training 1 \
      --root_path ./dataset/ \
      --data_path Flight.csv \
      --model_id Flight'_'$seq_len'_'$pred_len \
      --model $model_name \
      --data custom \
      --features M \
      --freq h \
      --target 'UUEE' \
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
      --itr 1 \
      --d_model 16 \
      --d_ff 32 \
      --top_k 5 \
      --conv_channel 32 \
      --skip_channel 32 \
      --node_dim 100 \
      --batch_size 32  #>logs/Flight/$model_name'_'Flight_$seq_len'_'$pred_len.log

done

