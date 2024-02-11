# MSGNet (AAAI2024)

Paper Link:[MSGNet: Learning Multi-Scale Inter-Series Correlations for Multivariate Time Series Forecasting](https://arxiv.org/abs/2401.00423)

## Usage

- Train and evaluate MSGNet
  - You can use the following command:`sh ./scripts/ETTh1.sh`.

- Train your model
  - Add model file in the folder `./models/your_model.py`.
  - Add model in the ***class*** Exp_Main.

- Flight dataset
  - You can obtain the dataset from [Google Drive](https://drive.google.com/drive/folders/1JSZByfM0Ghat3g_D3a-puTZ2JsfebNWL?usp=sharing). Then please place it in the folder `./dataset`.

## Model

MSGNet employs several ScaleGraph blocks, each encompassing three pivotal modules: an FFT module for multi-scale data identification, an adaptive graph convolution module for inter-series correlation learning within a time scale, and a multi-head attention module for intra-series correlation learning.

<div align=center>
<img src="https://github.com/YoZhibo/MSGNet/blob/main/pic/model1.jpg" width='45%'> <img src="https://github.com/YoZhibo/MSGNet/blob/main/pic/model2.jpg" width='47%'>
</div>

## Main Results

Forecast results with 96 review window and prediction length {96, 192, 336, 720}. The best result is represented in bold, followed by underline.

<div align=center>
<img src="https://github.com/YoZhibo/MSGNet/blob/main/pic/main_result.jpg" width='75%'>
</div>

## Citation

```
@article{cai2023msgnet,
  title={MSGNet: Learning Multi-Scale Inter-Series Correlations for Multivariate Time Series Forecasting},
  author={Cai, Wanlin and Liang, Yuxuan and Liu, Xianggen and Feng, Jianshuai and Wu, Yuankai},
  journal={arXiv preprint arXiv:2401.00423},
  year={2023}
}
```

## Acknowledgement

We appreciate the valuable contributions of the following GitHub.

- LTSF-Linear (https://github.com/cure-lab/LTSF-Linear)
- TimesNet (https://github.com/thuml/TimesNet)
- Time-Series-Library (https://github.com/thuml/Time-Series-Library)
- MTGnn (https://github.com/nnzhan/MTGNN)
- Autoformer (https://github.com/thuml/Autoformer)
- Informer (https://github.com/zhouhaoyi/Informer2020)
