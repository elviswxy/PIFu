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
python -m apps.train_shape --dataroot /ssd2/xwu/data --random_flip --random_scale --random_trans --gpu_id 4 --num_sample_inout 10000 --batch_size 16 --name test
python -m apps.train_shape --dataroot /ssd2/xwu/data --random_flip --random_scale --random_trans --gpu_id 4 --num_sample_inout 10000 --batch_size 16 --name pifu_test_2 --load_netG_checkpoint_path /home/xwu/project/PIFu/checkpoints/net_G
python -m apps.train_shape --dataroot /ssd2/xwu/toy_data --random_flip --random_scale --random_trans --num_sample_inout 10000 --batch_size 64 --name pifu_para_test --load_netG_checkpoint_path /home/xwu/project/PIFu/checkpoints/net_G
python -m apps.train_shape --dataroot /ssd2/xwu/toy_data --random_flip --random_scale --random_trans --gpu_id 6 --num_sample_inout 5000 --batch_size 2 --name pifu_multi_test --load_netG_checkpoint_path /home/xwu/project/PIFu/checkpoints/net_G --num_views 3
python -m apps.train_shape_parallel --dataroot /ssd2/xwu/toy_data --random_flip --random_scale --random_trans --num_sample_inout 5000 --batch_size 14 --name pifu_para_test

python -m apps.train_shape --dataroot /ssd2/xwu/toy_data --random_flip --random_scale --random_trans --gpu_id 6 --num_sample_inout 5000 --batch_size 2 --name pifu_3_view_test --num_views 3
```

Train model color
```text
python -m apps.train_color --dataroot /ssd2/xwu/data --num_sample_inout 0 --num_sample_color 15000 --sigma 0.1 --random_flip --random_scale --random_trans --gpu_id 2 --batch_size 12 --name test
```

```text
calc error (test) ...
100%|████████████████████████████████████████████████████████████████████| 100/100 [00:34<00:00,  2.91it/s]
eval test MSE: 0.090907 IOU: 0.792757 prec: 0.897853 recall: 0.870246
calc error (train) ...
100%|████████████████████████████████████████████████████████████████████| 100/100 [00:33<00:00,  2.97it/s]
eval train MSE: 0.036659 IOU: 0.903424 prec: 0.944849 recall: 0.953614
```

