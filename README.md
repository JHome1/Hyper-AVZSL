# Hyper-AVZSL
This repository is for implementing frameworks introduced in the following paper:  
**"Hyperbolic Audio-visual Zero-shot Learning"**

<p align="center">
  <img width="900" src="https://github.com/JHome1/Hyper-AVZL/blob/main/Figure1.png"> 
</p>

## Paper and citation  
If you find our paper/code is useful, please cite:
```
@inproceedings{hong2023hyperbolic,
               title={Hyperbolic Audio-visual Zero-shot Learning},
               author={Hong, Jie and Hayder, Zeeshan and Han, Junlin and Fang, Pengfei and Harandi, Mehrtash and Petersson, Lars},
               booktitle={Proceedings of the IEEE/CVF International Conference on Computer Vision},
               pages={7873--7883},
               year={2023}
               }
```

## Datasets and environments
* Download the datasets following the project [```AVCA-GZSL```](https://github.com/ExplainableML/AVCA-GZSL).
* Install the environment and packages following commands in ```README_pkgs.md```.
* 1 NVIDIA GeForce RTX 3090

## Curvature settings
* Curvature values on VGGSound-GZSL/UCF-GZSL/ActivityNet-GZSL (main feature):

| Hyper_Framework | Curvature  | Num of adaptive curvatures  |
| ------- | :---: | :---: |
| Hyper-alignment | 0.46/0.15/0.20 | 0 |
| Hyper-single    | 0.03/0.34/0.37 | 1 |
| Hyper-multiple  | 0.36/0.50/0.37 | 2/3/2 |

* Curvature values on VGGSound-GZSL/UCF-GZSL/ActivityNet-GZSL (cls feature):
  
| Hyper_Framework | Curvature  | Num of adaptive curvatures  |
| ------- | :---: | :---: |
| Hyper-alignment | 0.09/0.19/0.22 | 0 |
| Hyper-single    | 0.05/0.13/0.11 | 1 |
| Hyper-multiple  | 0.04/0.43/0.13 | 3/2/3 |

* Curvatures should be finetuned if the model of GPU is not NVIDIA GeForce RTX 3090.

## Running the codes
Run ```.sh``` files in ```./run_scripts``` using curvature settings
