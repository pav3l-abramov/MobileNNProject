docker run \ 
	-it \ 
	--name train_guitar_detector \
	-v $2:/train_dataset \
	-v $3:/train_dataset 	\
	--mount type=bind,source=./,target=/app/results\train\weights\best.torchscript