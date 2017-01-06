Time-stamp: <2017-01-06 19:43:48 hamada>

# Utilization Design Information

Autoware for FPGA project: (c) Copyright 2017 by Tsuyoshi Hamada. All rights reserved.

## Table of Contents

1. [Slice Logic](##Slice_Logic)
1. [Summary of Registers by Type](##Summary_of_Registers_by_Type)
1. [Memory](##Memory)
1. [DSP](##DSP)
1. [IO and GT Specific](##IO_and_GT_Specific)
1. [Clocking](##Clocking)
1. [Specific Feature](##Specific Feature)
1. [Primitives](##Primitives)
1. [Black Boxes](##Black_Boxes)
1. [Instantiated Netlists](##Instantiated_Netlists)

## Slice Logic


|        Site Type        | Used | Fixed | Available | Util% |
|-------------------------|------|-------|-----------|-------|
| Slice LUTs*             | 9339 |     0 |     41000 | 22.78 |
|   LUT as Logic          | 9339 |     0 |     41000 | 22.78 |
|   LUT as Memory         |    0 |     0 |     13400 |  0.00 |
| Slice Registers         | 1058 |     0 |     82000 |  1.29 |
|   Register as Flip Flop | 1058 |     0 |     82000 |  1.29 |
|   Register as Latch     |    0 |     0 |     82000 |  0.00 |
| F7 Muxes                | 1654 |     0 |     20500 |  8.07 |
| F8 Muxes                |  144 |     0 |     10250 |  1.40 |


## Summary of Registers by Type


| Total | Clock Enable | Synchronous | Asynchronous |
|-------|--------------|-------------|--------------|
| 0     |            _ |           - |            - |
| 0     |            _ |           - |          Set |
| 0     |            _ |           - |        Reset |
| 0     |            _ |         Set |            - |
| 0     |            _ |       Reset |            - |
| 0     |          Yes |           - |            - |
| 0     |          Yes |           - |          Set |
| 576   |          Yes |           - |        Reset |
| 0     |          Yes |         Set |            - |
| 482   |          Yes |       Reset |            - |


## Memory


|    Site Type   | Used | Fixed | Available | Util% |
|----------------|------|-------|-----------|-------|
| Block RAM Tile |    0 |     0 |       135 |  0.00 |
|   RAMB36/FIFO* |    0 |     0 |       135 |  0.00 |
|   RAMB18       |    0 |     0 |       270 |  0.00 |


## DSP


| Site Type | Used | Fixed | Available | Util% |
|-----------|------|-------|-----------|-------|
| DSPs      |    0 |     0 |       240 |  0.00 |


## IO and GT Specific


|          Site Type          | Used | Fixed | Available |  Util% |
|-----------------------------|------|-------|-----------|--------|
| Bonded IOB                  | 2570 |     0 |       300 | 856.67 |
| Bonded IPADs                |    0 |     0 |        26 |   0.00 |
| Bonded OPADs                |    0 |     0 |        16 |   0.00 |
| PHY_CONTROL                 |    0 |     0 |         6 |   0.00 |
| PHASER_REF                  |    0 |     0 |         6 |   0.00 |
| OUT_FIFO                    |    0 |     0 |        24 |   0.00 |
| IN_FIFO                     |    0 |     0 |        24 |   0.00 |
| IDELAYCTRL                  |    0 |     0 |         6 |   0.00 |
| IBUFDS                      |    0 |     0 |       288 |   0.00 |
| GTXE2_COMMON                |    0 |     0 |         2 |   0.00 |
| GTXE2_CHANNEL               |    0 |     0 |         8 |   0.00 |
| PHASER_OUT/PHASER_OUT_PHY   |    0 |     0 |        24 |   0.00 |
| PHASER_IN/PHASER_IN_PHY     |    0 |     0 |        24 |   0.00 |
| IDELAYE2/IDELAYE2_FINEDELAY |    0 |     0 |       300 |   0.00 |
| ODELAYE2/ODELAYE2_FINEDELAY |    0 |     0 |       100 |   0.00 |
| IBUFDS_GTE2                 |    0 |     0 |         4 |   0.00 |
| ILOGIC                      |    0 |     0 |       300 |   0.00 |
| OLOGIC                      |    0 |     0 |       300 |   0.00 |


## Clocking


|  Site Type | Used | Fixed | Available | Util% |
|------------|------|-------|-----------|-------|
| BUFGCTRL   |    1 |     0 |        32 |  3.13 |
| BUFIO      |    0 |     0 |        24 |  0.00 |
| MMCME2_ADV |    0 |     0 |         6 |  0.00 |
| PLLE2_ADV  |    0 |     0 |         6 |  0.00 |
| BUFMRCE    |    0 |     0 |        12 |  0.00 |
| BUFHCE     |    0 |     0 |        96 |  0.00 |
| BUFR       |    0 |     0 |        24 |  0.00 |


## Specific Feature


|  Site Type  | Used | Fixed | Available | Util% |
|-------------|------|-------|-----------|-------|
| BSCANE2     |    0 |     0 |         4 |  0.00 |
| CAPTUREE2   |    0 |     0 |         1 |  0.00 |
| DNA_PORT    |    0 |     0 |         1 |  0.00 |
| EFUSE_USR   |    0 |     0 |         1 |  0.00 |
| FRAME_ECCE2 |    0 |     0 |         1 |  0.00 |
| ICAPE2      |    0 |     0 |         2 |  0.00 |
| PCIE_2_1    |    0 |     0 |         1 |  0.00 |
| STARTUPE2   |    0 |     0 |         1 |  0.00 |
| XADC        |    0 |     0 |         1 |  0.00 |


## Primitives


| Ref Name | Used | Functional Category |
|----------|------|---------------------|
| LUT6     | 3645 |                 LUT |
| LUT5     | 2959 |                 LUT |
| LUT4     | 2259 |                 LUT |
| MUXF7    | 1654 |               MuxFx |
| OBUF     | 1440 |                  IO |
| IBUF     | 1130 |                  IO |
| LUT3     |  905 |                 LUT |
| FDCE     |  576 |        Flop & Latch |
| FDRE     |  482 |        Flop & Latch |
| LUT2     |  260 |                 LUT |
| MUXF8    |  144 |               MuxFx |
| LUT1     |    2 |                 LUT |
| BUFG     |    1 |               Clock |


## Black Boxes


| Ref Name | Used |



9. Instantiated Netlists


| Ref Name | Used |


