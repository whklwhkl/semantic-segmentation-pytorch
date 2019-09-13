python -u test.py \
	--imgs ../Person_ReID_feature/assets/$1 \
	--cfg config/lip-htl-hrnetv2.yaml \
		DIR lip-htl-hrnetv2-c1/ \
		TEST.result ../Person_ReID_feature/outputs/$1 \
		TEST.checkpoint epoch_2.pth
