cd .../Hyper-AVZSL-online
ROOT_DIR=.../avgzsl_benchmark_datasets/ActivityNet

## First stage training for cls/main features
python main.py --root_dir $ROOT_DIR --feature_extraction_method main_features --input_size_audio 512 --input_size_video 512 --epochs 50 --lr_scheduler --dataset_name ActivityNet --zero_shot_split main_split --lr 0.001 --n_batches 500 --embeddings_hidden_size 512  --decoder_hidden_size 512 --embedding_dropout 0.2 --decoder_dropout 0.2 --additional_dropout 0.1 --depth_transformer 1 --additional_triplets_loss --first_additional_triplet 1  --second_additional_triplet 1  --momentum 0.99 --reg_loss --exp_name attention_activity_val_main --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0

python main.py --root_dir $ROOT_DIR --feature_extraction_method cls_features --input_size_audio 128 --input_size_video 4096 --epochs 50 --lr_scheduler --dataset_name ActivityNet --zero_shot_split cls_split --lr 0.001 --n_batches 500 --embeddings_hidden_size 512  --decoder_hidden_size 512 --embedding_dropout 0.2 --decoder_dropout 0.2 --additional_dropout 0.1 --depth_transformer 1 --additional_triplets_loss --first_additional_triplet 1  --second_additional_triplet 1  --momentum 0.99 --reg_loss --exp_name attention_activity_val_cls --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0

## Second stage training for cls/main features
python main.py --root_dir $ROOT_DIR --feature_extraction_method main_features --input_size_audio 512 --input_size_video 512  --epochs 50 --lr_scheduler --dataset_name ActivityNet --zero_shot_split main_split --retrain_all --lr 0.001 --n_batches 500 --embeddings_hidden_size 512  --decoder_hidden_size 512 --save_checkpoints --embedding_dropout 0.2 --decoder_dropout 0.2 --additional_dropout 0.1 --depth_transformer 1 --additional_triplets_loss --first_additional_triplet 1  --second_additional_triplet 1  --momentum 0.99 --reg_loss  --exp_name attention_activity_all_main --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0

python main.py --root_dir $ROOT_DIR --feature_extraction_method cls_features --input_size_audio 128 --input_size_video 4096  --epochs 50 --lr_scheduler --dataset_name ActivityNet --zero_shot_split cls_split --retrain_all --lr 0.001 --n_batches 500 --embeddings_hidden_size 512  --decoder_hidden_size 512 --save_checkpoints --embedding_dropout 0.2 --decoder_dropout 0.2 --additional_dropout 0.1 --depth_transformer 1 --additional_triplets_loss --first_additional_triplet 1  --second_additional_triplet 1  --momentum 0.99 --reg_loss  --exp_name attention_activity_all_cls --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0

## Evaluation scripts
python get_evaluation.py --load_path_stage_A runs/attention_activity_val_main --load_path_stage_B runs/attention_activity_all_main  --dataset_name ActivityNet --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0

python get_evaluation.py --load_path_stage_A runs/attention_activity_val_cls --load_path_stage_B runs/attention_activity_all_cls  --dataset_name ActivityNet --Hyper_AVCA --hyper_framework 'Hyper-alignment' --curvature 0.01 --num_curvature 0
