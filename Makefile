DATASET=/home/wanghao/datasets/market1501

segm:
	for s in query bounding_box_train bounding_box_test ;do \
		bash scripts/test_htl_seg.sh \
			${DATASET}/$$s \
			${DATASET}/seg/$$s ; \
	done

view:
	if [ ! -e ${DATASET}/viz ]; then \
	  mkdir ${DATASET}/viz ; \
	fi
	for s in query bounding_box_train bounding_box_test ;do \
		if [ ! -e ${DATASET}/viz/$$s ]; then \
			mkdir ${DATASET}/viz/$$s ; \
		fi; \
		for i in `ls ${DATASET}/seg/$$s` ;do \
			convert -enhance -equalize -contrast \
				${DATASET}/seg/$$s/$$i \
				${DATASET}/viz/$$s/$$i ; \
		done; \
	done
