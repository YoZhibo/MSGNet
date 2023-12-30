import numpy as np

def MAE(pred, true):
    return np.mean(np.abs(pred - true))

def MAPE(pred, true):
    return np.mean(np.abs((pred - true) / true))

def ND(pred, true):
    return np.mean(np.abs(true - pred)) / np.mean(np.abs(true))

def MSE(pred, true):
    return np.mean((pred - true) ** 2)

def RMSE(pred, true):
    return np.sqrt(MSE(pred, true))

def NRMSE(pred, true):
    return np.sqrt(np.mean(np.power((pred - true), 2))) / (np.mean(np.abs(true)))

def RSE(pred, true):
    return np.sqrt(np.sum((true - pred) ** 2)) / np.sqrt(np.sum((true - true.mean()) ** 2))


def CORR(pred, true):
    u = ((true - true.mean(0)) * (pred - pred.mean(0))).sum(0)
    d = np.sqrt(((true - true.mean(0)) ** 2 * (pred - pred.mean(0)) ** 2).sum(0))
    d += 1e-12
    return 0.01*(u / d).mean(-1)


def MSPE(pred, true):
    return np.mean(np.square((pred - true) / true))


def metric(pred, true):
    mae = MAE(pred, true)
    mse = MSE(pred, true)
    rmse = RMSE(pred, true)
    mape = MAPE(pred, true)
    mspe = MSPE(pred, true)
    rse = RSE(pred, true)
    corr = CORR(pred, true)
    nd = ND(pred,true)
    nrmse = NRMSE(pred,true)

    return mae, mse, rmse, mape, mspe, rse , corr, nd, nrmse

def metric2(pred, true):
    mae = MAE(pred, true)
    mse = MSE(pred, true)
    rmse = RMSE(pred, true)
    mape = MAPE(pred, true)
    mspe = MSPE(pred, true)
    rse = RSE(pred, true)
    nd = ND(pred,true)
    nrmse = NRMSE(pred,true)

    return mae, mse, rmse, mape, mspe, rse , nd, nrmse