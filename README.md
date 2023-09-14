# Hyper-AVZL
This repository is for implementing frameworks introduced in the following paper:  
**Hyperbolic Audio-visual Zero-shot Learning**

## Paper and Citation  
If you find our paper/code is useful, please cite:
```
@article{hong2023hyperbolic,
         title={Hyperbolic Audio-visual Zero-shot Learning},
         author={Hong, Jie and Hayder, Zeeshan and Han, Junlin and Fang, Pengfei and Harandi, Mehrtash and Petersson, Lars},
         journal={arXiv preprint arXiv:2308.12558},
         year={2023}
        }
```

## Curvature Settings
Curvature values on VGGSound-GZSL/UCF-GZSL/ActivityNet-GZSL (main):
| Hyper_Framework | Curvature  | Num of adaptive curvatures  |
| ------- | :---: | :---: |
| Hyper-alignment | 0.46/0.15/0.20 | 0 |
| Hyper-single    | // | 1 |
| Hyper-multiple  | // | 2/3/2 |

Curvature values on VGGSound-GZSL/UCF-GZSL/ActivityNet-GZSL (cls):
| Hyper_Framework | Curvature  | Num of adaptive curvatures  |
| ------- | :---: | :---: |
| Hyper-alignment | 0.09/0.19/0.22 | 0 |
| Hyper-single    | // | 1 |
| Hyper-multiple  | // | 3/2/3 |
