###### MUST INSTALL FOLLOWING THIS ORDER!!!! ######
# conda create -n LFD python=3.9 -y
# conda activare LFD


conda create -n LFD_10 python=3.10 -y   # If cooperate with hamer!!!!
conda activare LFD_10


### ========== OUTSIDE OF VISION_MODULE FOLDER ========== ###

## MUST INSTALL pytorch3d before GroundingDINO!!!!!!!!!!!!!!!!!!!
conda install -y pytorch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0 pytorch-cuda=11.8 -c pytorch -c nvidia
# conda install -y fvcore iopath -c conda-forge -c iopath -c fvcore
# conda install -y pytorch3d -c pytorch3d


# For faster installation -- Install mamba first
conda install mamba -c conda-forge
mamba install -c conda-forge opencv

## REQUIRES TO INSTALL THE FULL TRIMESH[ALL] PACKAGE
pip install hydra-core wandb open3d chardet trimesh[all] natsort ffmpeg imageio[ffmpeg] ipykernel

### ==========INSIDE OF VISION_MODULE FOLDER ========== ###

######### CodeBase ############
cd utils/

## Customized_Grounded_SAM_EXT (SAM + GroundingDINO)
# git clone git@github.com:Zi-ang-Cao/Customized_Grounded_SAM_EXT.git

cd Customized_Grounded_SAM_EXT/

env CUDA_HOME=/usr/local/cuda
env BUILD_WITH_CUDA=True
env AM_I_DOCKER=False

pip install -e GroundingDINO

pip install -e segment_anything
pip install -e segment-anything-fast

cd ../

## Downloading the pretrained models
# wget -q -P ./saves/ https://github.com/hkchengrex/Tracking-Anything-with-DEVA/releases/download/v1.0/DEVA-propagation.pth
# wget -q -P ./saves/ https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth
# wget -q -P ./saves/ https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth
# wget -q -P ./saves/ https://github.com/hkchengrex/Tracking-Anything-with-DEVA/releases/download/v1.0/GroundingDINO_SwinT_OGC.py