CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Train --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=300 --eval  --label="Fuel Type"  --test-frac=0.3 --num-eval-try=5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Retrain --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=300 --eval --eval-deleted  --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Stale --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=0 --eval --eval-deleted --label="Fuel Type" --hist-atts=Elevation --hist-num-samples=100000 --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Finetune --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=10 --eval --eval-deleted --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=NegGrad+ --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=3 --alpha=0.9999999 --eval --eval-deleted --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
#CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=NegGrad --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=1 --alpha=0 --eval --eval-deleted --label="Fuel Type"  --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1


CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Retrain --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=300 --eval --eval-deleted  --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --delete-frac=0.5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Stale --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=0 --eval --eval-deleted --label="Fuel Type" --hist-atts=Elevation --hist-num-samples=100000 --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --delete-frac=0.5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=Finetune --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=10 --eval --eval-deleted --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --delete-frac=0.5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=NegGrad+ --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=3 --alpha=0.9999999 --eval --eval-deleted --label="Fuel Type" --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --delete-frac=0.5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1
#CUDA_VISIBLE_DEVICES=1 python train_tvae.py --mode=NegGrad --dataset=dmv --datafile=data/dmv_small_train.csv --metadatafile=data/dmv.json --epochs=1 --alpha=0 --eval --eval-deleted --label="Fuel Type"  --test-frac=0.3 --num-eval-try=5 --pre-model=models/dmv_Train.pkl --filters=data/dmv_filters1.json --delete-frac=0.5 --wandb-mode=online --wandb-project=tvae-unlearning-largerbench --wandb-entity=USERNAME --wandb-group-name=dmv-v1