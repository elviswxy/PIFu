Process

total model: 904
prt process: 893 generated, 11 left, `trimesh` error.
```
rp_alison_posed_009
rp_alison_posed_015
rp_andrew_posed_002
rp_andrew_posed_009
rp_nagy_posed_001
rp_nina_posed_007
rp_pierre_posed_003
rp_pierre_posed_004
rp_ramon_posed_008
rp_rosy_posed_005
rp_stephen_posed_047
```
img generation: 891 generated, 2 left, `load_obj_mesh` error.
```
rp_karl_posed_014
rp_sharon_posed_005
```

All the error related to *_100k.obj files.

Train model shape
```text
python -m apps.train_shape --dataroot /ssd2/xwu/data --random_flip --random_scale --random_trans --gpu_id 1 --num_sample_inout 10000 --batch_size 8 --name test
```

Train model color
```text
python -m apps.train_color --dataroot /ssd2/xwu/data --num_sample_inout 0 --num_sample_color 15000 --sigma 0.1 --random_flip --random_scale --random_trans --gpu_id 2 --batch_size 12 --name test
```

