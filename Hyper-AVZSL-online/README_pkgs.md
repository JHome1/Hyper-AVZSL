conda create -n Hyper_AVZL python=3.8.3

source ~/.bashrc

conda activate Hyper_AVZL

conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=11.0 -c pytorch
conda install numpy=1.20.3
pip install ptflops==0.6.8
pip install matplotlib==3.1.3
conda install tensorboard
pip install einops==0.3.2
