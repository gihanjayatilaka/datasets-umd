git clone git@github.com:open-mmlab/mmdetection.git
cd mmdetection

mkdir data
mkdir data/coco
mkdir data/coco/images
ln -s /fs/vulcan-datasets/coco/images/val2017/ data/coco/images/val2017
ln -s /fs/vulcan-datasets/coco/images/train2017/ data/coco/images/train2017
ln -s /fs/vulcan-datasets/coco/annotations data/coco/annotations




# mkdir data/cityscapes
# cd ../
# git clone git@github.com:TillBeemelmanns/cityscapes-to-coco-conversion.git
# cd cityscapes-to-coco-conversion
# pip install -r requirements.txt 
# cd ../mmdetection/
# python ../cityscapes-to-coco-conversion/main.py --dataset cityscapes --datadir /fs/vulcan-datasets/cityscapes --outdir data/cityscapes/annotations
# ln -s /fs/vulcan-datasets/cityscapes/gtFine data/cityscapes/gtFine
# ln -s /fs/vulcan-datasets/cityscapes/leftImg8bit data/cityscapes/leftImg8bit



mkdir data/cityscapes
ln -s /fs/vulcan-datasets/cityscapes/gtFine data/cityscapes/gtFine
ln -s /fs/vulcan-datasets/cityscapes/leftImg8bit data/cityscapes/leftImg8bit
# https://mmdetection.readthedocs.io/en/latest/user_guides/dataset_prepare.html
pip install cityscapesscripts
python tools/dataset_converters/cityscapes.py \
    ./data/cityscapes \
    --nproc 8 \
    --out-dir ./data/cityscapes/annotations



mkdir data/VOCdevkit
ln -s /fs/vulcan-datasets/VOCdevkit/VOC2007/  data/VOCdevkit/VOC2007
