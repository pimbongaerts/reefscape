## Folder structure of lab's NAS server

### Overall organization of the `coral3d` shared folder

| Folder hierarchy                            | Naming convention             | Naming syntax          | Examples                           |
| ------------------------------------------- | ----------------------------- | ---------------------- | ---------------------------------- |
| 1.  Region & plot type                      | `curacao`                     | `region_type`          | `curacao_focal` or `curacao_large` |
| 2. Specific plot                            | Region, location, depth       | `reg_loc_xxm`          | `cur_kal_05m`                      |
| 3. Specific timepoint (and section) of plot | Region, location, depth, date | `reg_loc_xxm_yyyymmdd` | `cur_kal_05m_20190203`             |

```bash
.
├── curacao_focal									# Region & plot type
│   ├── cur_kal_05m								# Specific focal plot
|   |   ├── cur_kal_05m_20190203	# Specific timepoint of focal plot
|   |   ├── cur_kal_05m_20191103
|   |   └── cur_kal_05m_20200203
|   ├── cur_kal_10m
|   |   ├── cur_kal_10m_20190203
|   |   ├── cur_kal_10m_20190203
|   |   └── cur_kal_10m_20190203
|   ├──...etc
|   |   ├── ...etc
│   └── cur_sla_05m
|       ├── cur_kal_05m_20190203
|       ├── cur_kal_05m_20191103
|       └── cur_kal_05m_20200203
└── curacao_large									# Region & plot type
│   ├── cur_kal										# Specific large area plot
|       ├── cur_kal_Q1_20190203		# Specific quarter/time of large plot
|       ├── cur_kal_Q2_20190203
|       ├── cur_kal_Q3_20190203
|       ├── cur_kal_Q4_20190203
|   └── cur_sna
|       ├── cur_sna_Q1_20190203
|       ├── cur_sna_Q2_20190203
|       ├── cur_sna_Q3_20190203
|       └── cur_sna_Q4_20190203
```

For focal plots - the following naming conventions are used:

```shell
.
├── curacao_focal
│   ├── cur_kal_05m
|   |   ├── cur_kal_05m_20190203
|   |   |		├── cur_kal_05m_20190203.raw		# Photos (RAW/CR2)
|   |   |		├── cur_kal_05m_20190203.photos	# Photos (JPEG version)
|   |   |		├── cur_kal_05m_20190203.files	# Agisoft Project files
|   |   |		├── cur_kal_05m_20190203.psx		# Agisoft Project
|   |   |		├── cur_kal_05m_20190203.pty		# Exported dense point cloud
|   |   |		├── cur_kal_05m_20190203.cams.xml		# Exported cameras
|   |   |		├── cur_kal_05m_20190203.meta.json	# Exported metadata
```

For large area plots - the following naming conventions are used:

```shell
└── curacao_large
│   ├── cur_kal
|       ├── cur_kal_Q1_20190203
|       ├── cur_kal_Q2_20190203
|       ├── cur_kal_Q3_20190203
|       ├── cur_kal_Q4_20190203
|   └── cur_sna
|       ├── cur_sna_Q1_20190203
|       ├── cur_sna_Q2_20190203
|       ├── cur_sna_Q3_20190203
|       └── cur_sna_Q4_20190203
```

