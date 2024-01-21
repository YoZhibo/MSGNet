# MSGNet (AAAI2024)

Paper Link:[MSGNet: Learning Multi-Scale Inter-Series Correlations for Multivariate Time Series Forecasting](https://arxiv.org/abs/2401.00423)

## Usage

- Train and evaluate MSGNet
  - You can use the following command:`sh ./scripts/ETTh1.sh`.

- Train your model
  - Add model file in the folder `./models/.py`.
  - Add model in the ***class*** Exp_Main.

## Model

MSGNet employs several ScaleGraph blocks, each encompassing three pivotal modules: an FFT module for multi-scale data identification, an adaptive graph convolution module for inter-series correlation learning within a time scale, and a multi-head attention module for intra-series correlation learning.

<img src="https://github.com/YoZhibo/MSGNet/blob/main/pic/model1.jpg" width='47%'> <img src="https://github.com/YoZhibo/MSGNet/blob/main/pic/model2.jpg" width='47%'>


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
