python -u test.py \
	--imgs $1 \
	--cfg config/lip-htl-hrnetv2.yaml \
		DIR lip-htl-hrnetv2-c1/ \
		TEST.result $2 \
		TEST.checkpoint epoch_30.pth
