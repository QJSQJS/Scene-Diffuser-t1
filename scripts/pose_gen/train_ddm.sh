EXP_NAME=$1

CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=4 --nnodes=1 --use_env train_ddm.py \
                hydra/job_logging=none hydra/hydra_logging=none \
                exp_name=${EXP_NAME} \
                diffuser=ddpm \
                model=unet \
                task=pose_gen