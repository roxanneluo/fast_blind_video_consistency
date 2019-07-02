set -ex
dataset=$1  #jk_videos
video_name=$2 #ayush.mp4
#python process.py -in_dir data//data/test/processed//HMC//${dataset}_concat/${video_name} -out_dir data//data/test/processed//HMC/${dataset}/${video_name}
echo ${video_name} > lists/${dataset}_test.txt
#python test_pretrained.py -dataset ${dataset} -task HMC 

# generate ffmpeg
out_dir=results/${dataset}/
mkdir -p ${out_dir} 
ffmpeg -i data/data/test/ECCV18//HMC/${dataset}/${video_name}/frame_%03d.png -c:v libx264 -vf fps=25 -pix_fmt yuv420p ${out_dir}/${video_name} 
