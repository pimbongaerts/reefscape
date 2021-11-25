PSX:   Agisoft file present
CR2:   Number of unconverted cameras (CR2)
PLY:   Explorted PLY present
CAM:   Camera position file (for viscore) present
MET:   Camera metadata file (for viscore) present
VIS:   Viscore file present & number of aligned models (>1 means reference)
SCALE: Number of Viscore scalers
DEPTH: Number of Viscore depth markers for orientation
D_IMG: Number of images for depth markers
```shell
├── cur_kal
│   ├──cur_kal_20m
│   │   ├──cur_kal_20m_20190308         PSX JPG:1196 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_20m_20200214         PSX JPG:1053 PLY CAM MET VIS:04 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_20m_20191113         PSX JPG:1048 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_20m_20201209         PSX JPG:1241 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_20m_20210219         CR2:1183 PSX 
│   ├──cur_kal_40m
│   │   ├──cur_kal_40m_20190224         PSX JPG:0488 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_40m_20191113         PSX JPG:1024 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_40m_20200214         PSX JPG:0900 PLY CAM MET VIS:04 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_40m_20201214         PSX JPG:1086 PLY CAM MET VIS:01 SCALE:01 DEPTH:04 
│   │   ├──cur_kal_40m_20210214         CR2:1066 PSX JPG:1066 PLY CAM MET 
│   ├──cur_kal_10m
│   │   ├──cur_kal_10m_20190309         PSX JPG:1345 PLY CAM MET VIS:01 SCALE:02 DEPTH:09 
│   │   ├──cur_kal_10m_20191113         PSX JPG:1204 PLY CAM MET VIS:01 SCALE:02 DEPTH:10 
│   │   ├──cur_kal_10m_20200214         PSX JPG:1106 PLY CAM MET VIS:04 SCALE:02 DEPTH:10 
│   │   ├──cur_kal_10m_20201209         PSX JPG:1825 PLY CAM MET VIS:01 SCALE:02 DEPTH:10 D_IMG:11 
│   │   ├──cur_kal_10m_20210219         CR2:1507 PSX JPG:1507 PLY CAM MET 
│   ├──cur_kal_05m
│   │   ├──cur_kal_05m_20190309         PSX JPG:0494 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_05m_20200214         PSX JPG:0809 PLY CAM MET VIS:04 SCALE:02 DEPTH:05 
│   │   ├──cur_kal_05m_20191113         PSX JPG:0914 PLY CAM MET VIS:01 SCALE:02 DEPTH:04 
│   │   ├──cur_kal_05m_20201209         PSX JPG:1401 PLY CAM MET VIS:01 SCALE:02 DEPTH:05 D_IMG:05 
│   │   ├──cur_kal_05m_20210219         CR2:1057 PSX JPG:1057 PLY CAM MET 
│   ├──cur_kal_60m
│   │   ├──cur_kal_60m_20190224         PSX JPG:0512 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_kal_60m_20200214         PSX JPG:0949 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_kal_60m_20191113         PSX JPG:0708 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_kal_60m_20201214         PSX JPG:1017 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_kal_60m_20210214         CR2:1093 PSX JPG:1093 PLY CAM MET 
├── cur_sna
│   ├──cur_sna_20m
│   │   ├──cur_sna_20m_20190310         PSX JPG:1121 PLY CAM MET VIS:02 SCALE:02 DEPTH:04 
│   │   ├──cur_sna_20m_20200303         PSX PLY CAM MET JPG:0940 VIS:03 SCALE:02 DEPTH:04 
│   │   ├──cur_sna_20m_20191111         PSX JPG:0929 PLY CAM MET VIS:03 SCALE:02 DEPTH:04 PLY PLY 
│   │   ├──cur_sna_20m_20201202         PSX JPG:1356 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_20m_20210305         PSX JPG:1132 PLY CAM MET 
│   ├──cur_sna_10m
│   │   ├──cur_sna_10m_20200303         PSX JPG:1164 PLY CAM MET VIS:04 SCALE:02 DEPTH:12 
│   │   ├──cur_sna_10m_20190305         PSX JPG:1048 PLY CAM MET VIS:01 SCALE:02 DEPTH:10 
│   │   ├──cur_sna_10m_20191111         PSX JPG:0864 PLY CAM MET VIS:01 SCALE:03 DEPTH:12 
│   │   ├──cur_sna_10m_20201202         PSX JPG:1249 PLY CAM MET VIS:01 SCALE:02 DEPTH:12 D_IMG:13 
│   │   ├──cur_sna_10m_20210305         CR2:1339 PSX JPG:1339 
│   ├──cur_sna_05m
│   │   ├──cur_sna_05m_20190307         PSX JPG:0951 PLY CAM MET VIS:01 SCALE:02 DEPTH:06 
│   │   ├──cur_sna_05m_20200303         PSX JPG:0699 PLY CAM MET VIS:04 SCALE:01 DEPTH:10 
│   │   ├──cur_sna_05m_20191110         PSX JPG:0612 PLY CAM MET VIS:01 SCALE:02 DEPTH:10 
│   │   ├──cur_sna_05m_20201202         PSX JPG:1187 PLY CAM MET VIS:01 SCALE:02 DEPTH:10 D_IMG:11 
│   │   ├──cur_sna_05m_20210305         CR2:1399 
│   ├──cur_sna_40m
│   │   ├──cur_sna_40m_20200216         PSX JPG:0807 PLY MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_40m_20190222         PSX JPG:0645 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_40m_20191110         PSX JPG:0918 CAM PLY MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_40m_20201205         PSX JPG:1107 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_sna_40m_20210307         PSX JPG:0900 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   ├──cur_sna_60m
│   │   ├──cur_sna_60m_20200216         PSX JPG:0804 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_60m_20191111         PSX JPG:0838 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_60m_20190222         PSX JPG:0497 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sna_60m_20201205         JPG:0757 PSX CR2:0757 
│   │   ├──cur_sna_60m_20201227         PSX JPG:1140 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   ├──@eaDir
├── cur_sea
│   ├──cur_sea_10m
│   │   ├──cur_sea_10m_20200221         PSX JPG:0833 PLY CAM MET VIS:03 SCALE:02 DEPTH:11 
│   │   ├──cur_sea_10m_20191112         PSX JPG:0985 PLY CAM MET VIS:01 SCALE:02 DEPTH:12 
│   │   ├──cur_sea_10m_20190319         PSX JPG:1270 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_10m_20201210         PSX JPG:1228 PLY CAM MET VIS:01 SCALE:02 DEPTH:12 D_IMG:13 
│   │   ├──cur_sea_10m_20210302         CR2:1662 
│   ├──cur_sea_20m
│   │   ├──cur_sea_20m_20200221         PSX JPG:0883 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_sea_20m_20191112         PSX JPG:1020 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_20m_20201210         PSX JPG:0990 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_20m_20210302         CR2:1244 
│   ├──cur_sea_40m
│   │   ├──cur_sea_40m_20200221         PSX JPG:0929 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_sea_40m_20190220         PSX JPG:0483 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_40m_20191112         PSX JPG:0869 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_40m_20201223         PSX JPG:0945 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_sea_40m_20210228         CR2:1249 
│   ├──cur_sea_60m
│   │   ├──cur_sea_60m_20191112         PSX JPG:0819 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_60m_20200221         CR2:0829 CAM MET PLY PSX VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_60m_20190219         PSX JPG:0504 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_sea_60m_20201223         PSX JPG:0991 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_sea_60m_20210228         CR2:1269 
├── cur_dir
│   ├──cur_dir_05m
│   │   ├──cur_dir_05m_20200227         PSX JPG:0816 PLY CAM MET VIS:02 SCALE:02 DEPTH:12 
│   │   ├──cur_dir_05m_20201219         PSX JPG:0761 PLY CAM MET VIS:01 SCALE:02 DEPTH:12 D_IMG:13 
│   │   ├──cur_dir_05m_20201130         PSX JPG:1737 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_05m_20210221         CR2:1199 
│   ├──cur_dir_10m
│   │   ├──cur_dir_10m_20200227         PSX JPG:1006 PLY CAM MET VIS:03 SCALE:02 DEPTH:09 
│   │   ├──cur_dir_10m_20201219         PSX JPG:0577 PLY CAM MET VIS:01 SCALE:02 DEPTH:09 D_IMG:12 
│   │   ├──cur_dir_10m_20201130         PSX JPG:1716 PLY CAM MET VIS:01 SCALE:02 DEPTH:09 
│   │   ├──cur_dir_10m_20210221         CR2:1402 
│   ├──cur_dir_20m
│   │   ├──cur_dir_20m_20200227         PSX JPG:1131 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_20m_20201219         PSX JPG:0626 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_20m_20201130         PSX JPG:1438 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_20m_20210221         CR2:1201 
│   ├──cur_dir_40m
│   │   ├──cur_dir_40m_20200227         PSX JPG:1199 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_40m_20201219         PSX JPG:1131 PLY CAM MET VIS:01 SCALE:01 DEPTH:00 
│   │   ├──cur_dir_40m_20210221         CR2:1726 
│   ├──cur_dir_60m
│   │   ├──cur_dir_60m_20200227         PSX JPG:1094 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_dir_60m_20201219         PSX JPG:1472 PLY CAM MET 
│   │   ├──cur_dir_60m_20210213         CR2:1441 
├── cur_wat
│   ├──cur_wat_05m
│   │   ├──cur_wat_05m_20200225         JPG:0861 CAM PLY PSX MET VIS:02 SCALE:02 DEPTH:15 
│   │   ├──cur_wat_05m_20210218         JPG:0954 CR2:0954 
│   │   ├──cur_wat_05m_20210218_temp    PSX 
│   │   ├──cur_wat_05m_20201201         PSX JPG:1180 PLY CAM MET VIS:01 SCALE:02 DEPTH:15 D_IMG:16 
│   ├──cur_wat_10m
│   │   ├──cur_wat_10m_20200225         JPG:0864 CAM MET PLY PSX VIS:02 SCALE:02 DEPTH:09 
│   │   ├──cur_wat_10m_20201201         PSX JPG:1390 PLY CAM MET VIS:01 SCALE:02 DEPTH:09 D_IMG:10 
│   │   ├──cur_wat_10m_20210218         CR2:1135 
│   ├──cur_wat_20m
│   │   ├──cur_wat_20m_20200225         JPG:0915 CAM MET PLY PSX VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_wat_20m_20201201         PSX JPG:1203 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_wat_20m_20210218         CR2:1003 
│   ├──cur_wat_40m
│   │   ├──cur_wat_40m_20200225         PSX JPG:0878 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   ├──cur_wat_60m
│   │   ├──cur_wat_60m_20200225         PSX JPG:0802 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
├── cur_hul
│   ├──cur_hul_05m
│   │   ├──cur_hul_05m_20200301         PSX JPG:0766 PLY CAM MET VIS:02 SCALE:02 DEPTH:07 
│   │   ├──cur_hul_05m_20201206         PSX JPG:1321 PLY CAM MET VIS:01 SCALE:02 DEPTH:07 D_IMG:07 D_IMG:07 
│   │   ├──cur_hul_05m_20210223         CR2:1090 
│   ├──cur_hul_10m
│   │   ├──cur_hul_10m_20200301         PSX JPG:1042 PLY CAM MET VIS:02 SCALE:02 DEPTH:14 
│   │   ├──cur_hul_10m_20201206         PSX JPG:1552 PLY CAM MET VIS:01 SCALE:02 DEPTH:14 D_IMG:15 
│   │   ├──cur_hul_10m_20210223         CR2:1336 
│   ├──cur_hul_20m
│   │   ├──cur_hul_20m_20200301         PSX JPG:1391 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_hul_20m_20201206         PSX JPG:1304 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_hul_20m_20210223         CR2:1555 
│   ├──cur_hul_40m
│   │   ├──cur_hul_40m_20200301         PSX JPG:1345 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   ├──cur_hul_60m
│   │   ├──cur_hul_60m_20200301         PSX JPG:1103 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   ├──@eaDir
├── cur_est
│   ├──cur_est_05m
│   │   ├──cur_est_05m_20200219         PSX JPG:1021 PLY CAM MET VIS:02 SCALE:02 DEPTH:08 
│   │   ├──cur_est_05m_20201127         PSX JPG:1422 PLY CAM MET VIS:01 SCALE:02 DEPTH:08 
│   │   ├──cur_est_05m_20210216         CR2:0974 
│   ├──cur_est_10m
│   │   ├──cur_est_10m_20200219         PSX JPG:1281 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_est_10m_20201127         JPG:1709 PSX CR2:1709 D_IMG:08 
│   │   ├──cur_est_10m_20210216         CR2:1278 
│   ├──cur_est_20m
│   │   ├──cur_est_20m_20200219         PSX JPG:1287 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_est_20m_20201127         PSX JPG:1220 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_est_20m_20210216         CR2:1182 
│   ├──cur_est_40m
│   │   ├──cur_est_40m_20200219         CR2:1362 PSX JPG:1362 
│   ├──cur_est_60m
│   │   ├──cur_est_60m_20200302         PSX JPG:1064 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
├── cur_sam
│   ├──cur_sam_05m
│   │   ├──cur_sam_05m_20200222         PSX JPG:0712 PLY CAM MET 
│   ├──cur_sam_10m
│   │   ├──cur_sam_10m_20200222         PSX JPG:0908 PLY CAM MET 
│   ├──cur_sam_20m
│   │   ├──cur_sam_20m_20200222         PSX JPG:1074 PLY CAM MET 
│   ├──cur_sam_40m
│   │   ├──cur_sam_40m_20200222         PSX JPG:1037 PLY CAM MET 
├── cur_cas
│   ├──cur_cas_05m
│   │   ├──cur_cas_05m_20190401         PSX JPG:0730 PLY CAM MET VIS:01 SCALE:02 DEPTH:05 
│   │   ├──cur_cas_05m_20201212         PSX JPG:0879 PLY CAM MET VIS:02 SCALE:02 DEPTH:05 D_IMG:06 
│   │   ├──cur_cas_05m_20210225         CR2:1122 
│   ├──cur_cas_10m
│   │   ├──cur_cas_10m_20190401         PSX JPG:0824 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_cas_10m_20201212         PSX JPG:0893 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_cas_10m_20210225         CR2:0973 
│   ├──cur_cas_20m
│   │   ├──cur_cas_20m_20190331         PSX JPG:1237 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_cas_20m_20201212         PSX JPG:0949 PLY CAM MET VIS:01 SCALE:02 DEPTH:00 
│   │   ├──cur_cas_20m_20210225         CR2:1070 
├── cur_seb
│   ├──cur_seb_10m
│   │   ├──cur_seb_10m_20190319         PSX JPG:1265 PLY CAM MET 
│   │   ├──cur_seb_10m_20201210         PSX JPG:0605 PLY CAM MET VIS:01 SCALE:00 DEPTH:00 
│   │   ├──cur_seb_10m_20210302         CR2:0895 
│   ├──cur_seb_20m
│   │   ├──cur_seb_20m_20190319         PSX JPG:1000 PLY CAM MET VIS:01 SCALE:00 DEPTH:00 
│   │   ├──cur_seb_20m_20190319_copy    CR2:1000 PSX JPG:1000 PLY CAM MET 
│   │   ├──cur_seb_20m_20201210         PSX JPG:0713 PLY CAM MET VIS:01 SCALE:00 DEPTH:00 
│   │   ├──cur_seb_20m_20210302         CR2:0720 
├── @eaDir
├── org
│   ├──org
│   ├──org.aux
│   │   ├──bk                           
│   │   ├──repl_p                       
│   │   ├──image_cache                  
│   │   ├──share                        
│   │   ├──web                          
│   ├──org.rugo
│   │   ├──r0                           
```
