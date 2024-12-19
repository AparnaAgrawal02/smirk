#!/bin/bash
#SBATCH -A aparna
#SBATCH -c 10
#SBATCH -w gnode078
#SBATCH --gres=gpu:1
#SBATCH --mem-per-cpu=2G
#SBATCH --time=10-00:00:00
#SBATCH --mail-type=END
#SBATCH --output=trasfer5.txt

#rsync -r jayasree_saha@preon.iiit.ac.in:/home/rudrabha_mukhopadhyay/SPEAKER_EMBEDDING_VOX2/speaker_embedding /scratch/aparna/ -p cvit@1234 --progress --ignore-existing
#tar -cf /scratch/aparna/VoxCeleb2_dev_test/dev/voceleb2.tar.gz  /scratch/aparna/VoxCeleb2_dev_test/dev/mp4 
#tar -xf /scratch/aparna/vox2_train_val.tar /scratch/aparna/     --checkpoint=.10000  
#mkdir /scratch/aparna
#rsync -r aparna@ada.iiit.ac.in:/share3/dataset/VoxCeleb2_dev_test/vox2_train_val.tar /scratch/aparna  --progress --ignore-existing
python demo_video.py --input_path samples/dafoe.mp4 --out_path results/ --checkpoint pretrained_models/SMIRK_em1.pt --crop
