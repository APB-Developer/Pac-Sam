;*********************************************************
;* File: Data\Maze.s
;* Automatically generated file - please do not edit
;*********************************************************

SPR_Closed_Width:                    EQU	12
SPR_Closed_Height:                   EQU	12
SPR_Closed_DataSize:                 EQU	144

SPR_Left1_Width:                     EQU	12
SPR_Left1_Height:                    EQU	12
SPR_Left1_DataSize:                  EQU	144

SPR_Left2_Width:                     EQU	12
SPR_Left2_Height:                    EQU	12
SPR_Left2_DataSize:                  EQU	144

SPR_Up1_Width:                       EQU	12
SPR_Up1_Height:                      EQU	12
SPR_Up1_DataSize:                    EQU	144

SPR_Up2_Width:                       EQU	12
SPR_Up2_Height:                      EQU	12
SPR_Up2_DataSize:                    EQU	144

SPR_Right1_Width:                    EQU	12
SPR_Right1_Height:                   EQU	12
SPR_Right1_DataSize:                 EQU	144

SPR_Right2_Width:                    EQU	12
SPR_Right2_Height:                   EQU	12
SPR_Right2_DataSize:                 EQU	144

SPR_Down1_Width:                     EQU	12
SPR_Down1_Height:                    EQU	12
SPR_Down1_DataSize:                  EQU	144

SPR_Down2_Width:                     EQU	12
SPR_Down2_Height:                    EQU	12
SPR_Down2_DataSize:                  EQU	144


PAL_Game_Length:                     EQU	15


TILESET_Maze_TileWidth:              EQU	6
TILESET_Maze_TileHeight:             EQU	6
TILESET_Maze_NumTiles:               EQU	34


TILEMAP_Maze_Width:                  EQU	28
TILEMAP_Maze_Height:                 EQU	31


SPR_Closed:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Left1:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Left2:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Up1:
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x02, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xF0, 0x02, 0xFF, 0x00, 0x00, 0x12, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Up2:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0xFF, 0x00, 0xF0, 0x01, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0xFF, 0x00, 0xF0, 0x02, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0xFF, 0x00, 0xF0, 0x02
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x0F, 0x10, 0x00, 0x12, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Right1:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Right2:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Down1:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0xFF, 0x00, 0xF0, 0x02
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x02, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00

SPR_Down2:
                                     DB	0xFF, 0x00, 0xF0, 0x01, 0x00, 0x22, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22
                                     DB	0x00, 0x22, 0xFF, 0x00, 0x00, 0x12, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x10
                                     DB	0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22
                                     DB	0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22, 0x00, 0x22, 0x0F, 0x20, 0x00, 0x22
                                     DB	0x00, 0x22, 0x0F, 0x20, 0x00, 0x12, 0x00, 0x22, 0x0F, 0x10, 0x00, 0x12, 0x00, 0x22, 0x0F, 0x10
                                     DB	0xF0, 0x02, 0x00, 0x22, 0xFF, 0x00, 0xF0, 0x02, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x22
                                     DB	0xFF, 0x00, 0xF0, 0x02, 0x0F, 0x20, 0xFF, 0x00, 0xFF, 0x00, 0xF0, 0x01, 0xFF, 0x00, 0xF0, 0x01
                                     DB	0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00


PAL_Game:
                                     DB	0x00, 0x60, 0x6E, 0x06, 0x22, 0x77, 0x19, 0x7B, 0x6A, 0x55, 0x62, 0x44, 0x1D, 0x7A, 0x7E


TILESET_Maze:
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDD, 0x00, 0x00, 0xDD, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x0E, 0xEE, 0xE0, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0xEE, 0x0E
                                     DB	0xEE, 0xE0
                                     DB	0x00, 0x66, 0x66, 0x06, 0x00, 0x00, 0x60, 0x06, 0x66, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60
                                     DB	0x60, 0x00
                                     DB	0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x66, 0x60, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00
                                     DB	0x06, 0x00
                                     DB	0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00, 0x06, 0x66, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00
                                     DB	0x60, 0x00
                                     DB	0x66, 0x66, 0x00, 0x00, 0x00, 0x60, 0x66, 0x60, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00
                                     DB	0x06, 0x06
                                     DB	0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60
                                     DB	0x60, 0x00
                                     DB	0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00
                                     DB	0x06, 0x00
                                     DB	0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00
                                     DB	0x60, 0x00
                                     DB	0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00
                                     DB	0x06, 0x06
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x00, 0x06, 0x00, 0x00
                                     DB	0x06, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00
                                     DB	0x60, 0x00
                                     DB	0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x60, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00
                                     DB	0x06, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x66, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00
                                     DB	0x60, 0x00
                                     DB	0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x06, 0x66, 0x06, 0x00, 0x00, 0x00
                                     DB	0x66, 0x66
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x66
                                     DB	0x66, 0x66
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x60, 0x00, 0x00, 0x60, 0x00, 0x60
                                     DB	0x60, 0x00
                                     DB	0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x06, 0x66, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x00, 0x66, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x66, 0x00, 0x06, 0x00, 0x00
                                     DB	0x06, 0x06
                                     DB	0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x66, 0x60, 0x06, 0x00, 0x00, 0x60, 0x66
                                     DB	0x66, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x00
                                     DB	0x00, 0x00
                                     DB	0x60, 0x60, 0x00, 0x00, 0x60, 0x00, 0x66, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x00, 0x06, 0x06, 0x00, 0x06, 0x00, 0x00, 0x06, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00
                                     DB	0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60, 0x06, 0x66, 0x60, 0x00, 0x00, 0x60
                                     DB	0x00, 0x00
                                     DB	0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x66, 0x60, 0x06, 0x00, 0x00, 0x06, 0x00
                                     DB	0x00, 0x06
                                     DB	0x60, 0x00, 0x00, 0x60, 0x00, 0x00, 0x60, 0x06, 0x66, 0x60, 0x60, 0x00, 0x60, 0x60, 0x00, 0x60
                                     DB	0x60, 0x00
                                     DB	0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x66, 0x60, 0x06, 0x00, 0x06, 0x06, 0x00, 0x06, 0x06, 0x00
                                     DB	0x06, 0x06


TILEMAP_Maze:
                                     DB	0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x05, 0x06, 0x04
                                     DB	0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x07, 0x08, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x0B, 0x08, 0x01, 0x0C, 0x0D, 0x0D, 0x0E, 0x01, 0x0C
                                     DB	0x0D, 0x0D, 0x0D, 0x0E, 0x01, 0x09, 0x0A, 0x01, 0x0C, 0x0D, 0x0D, 0x0D, 0x0E, 0x01, 0x0C, 0x0D
                                     DB	0x0D, 0x0E, 0x01, 0x0B, 0x08, 0x02, 0x09, 0x00, 0x00, 0x0A, 0x01, 0x09, 0x00, 0x00, 0x00, 0x0A
                                     DB	0x01, 0x09, 0x0A, 0x01, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x01, 0x09, 0x00, 0x00, 0x0A, 0x02, 0x0B
                                     DB	0x08, 0x01, 0x0F, 0x10, 0x10, 0x11, 0x01, 0x0F, 0x10, 0x10, 0x10, 0x11, 0x01, 0x0F, 0x11, 0x01
                                     DB	0x0F, 0x10, 0x10, 0x10, 0x11, 0x01, 0x0F, 0x10, 0x10, 0x11, 0x01, 0x0B, 0x08, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x0B, 0x08, 0x01, 0x0C, 0x0D, 0x0D, 0x0E, 0x01, 0x0C
                                     DB	0x0E, 0x01, 0x0C, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0E, 0x01, 0x0C, 0x0E, 0x01, 0x0C, 0x0D
                                     DB	0x0D, 0x0E, 0x01, 0x0B, 0x08, 0x01, 0x0F, 0x10, 0x10, 0x11, 0x01, 0x09, 0x0A, 0x01, 0x0F, 0x10
                                     DB	0x10, 0x12, 0x13, 0x10, 0x10, 0x11, 0x01, 0x09, 0x0A, 0x01, 0x0F, 0x10, 0x10, 0x11, 0x01, 0x0B
                                     DB	0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01
                                     DB	0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x0B, 0x14, 0x15, 0x15, 0x15
                                     DB	0x15, 0x16, 0x01, 0x09, 0x17, 0x0D, 0x0D, 0x0E, 0x00, 0x09, 0x0A, 0x00, 0x0C, 0x0D, 0x0D, 0x18
                                     DB	0x0A, 0x01, 0x19, 0x15, 0x15, 0x15, 0x15, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x09
                                     DB	0x13, 0x10, 0x10, 0x11, 0x00, 0x0F, 0x11, 0x00, 0x0F, 0x10, 0x10, 0x12, 0x0A, 0x01, 0x0B, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x09, 0x0A, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x0A, 0x01, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x09, 0x0A, 0x00, 0x19, 0x15, 0x15, 0x1B, 0x1B, 0x15
                                     DB	0x15, 0x16, 0x00, 0x09, 0x0A, 0x01, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04
                                     DB	0x04, 0x1C, 0x01, 0x0F, 0x11, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x0F
                                     DB	0x11, 0x01, 0x1D, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
                                     DB	0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x15, 0x15, 0x15, 0x15, 0x15, 0x16, 0x01, 0x0C, 0x0E, 0x00, 0x0B, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x0C, 0x0E, 0x01, 0x19, 0x15, 0x15, 0x15, 0x15, 0x15
                                     DB	0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x09, 0x0A, 0x00, 0x1D, 0x04, 0x04, 0x04, 0x04, 0x04
                                     DB	0x04, 0x1C, 0x00, 0x09, 0x0A, 0x01, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                     DB	0x00, 0x08, 0x01, 0x09, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09
                                     DB	0x0A, 0x01, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0x09
                                     DB	0x0A, 0x00, 0x0C, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D, 0x0E, 0x00, 0x09, 0x0A, 0x01, 0x0B, 0x00
                                     DB	0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x04, 0x04, 0x04, 0x1C, 0x01, 0x0F, 0x11, 0x00, 0x0F, 0x10
                                     DB	0x10, 0x12, 0x13, 0x10, 0x10, 0x11, 0x00, 0x0F, 0x11, 0x01, 0x1D, 0x04, 0x04, 0x04, 0x04, 0x07
                                     DB	0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x0B, 0x08, 0x01, 0x0C, 0x0D
                                     DB	0x0D, 0x0E, 0x01, 0x0C, 0x0D, 0x0D, 0x0D, 0x0E, 0x01, 0x09, 0x0A, 0x01, 0x0C, 0x0D, 0x0D, 0x0D
                                     DB	0x0E, 0x01, 0x0C, 0x0D, 0x0D, 0x0E, 0x01, 0x0B, 0x08, 0x01, 0x0F, 0x10, 0x12, 0x0A, 0x01, 0x0F
                                     DB	0x10, 0x10, 0x10, 0x11, 0x01, 0x0F, 0x11, 0x01, 0x0F, 0x10, 0x10, 0x10, 0x11, 0x01, 0x09, 0x13
                                     DB	0x10, 0x11, 0x01, 0x0B, 0x08, 0x02, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x02, 0x0B
                                     DB	0x1E, 0x0D, 0x0E, 0x01, 0x09, 0x0A, 0x01, 0x0C, 0x0E, 0x01, 0x0C, 0x0D, 0x0D, 0x0D, 0x0D, 0x0D
                                     DB	0x0D, 0x0E, 0x01, 0x0C, 0x0E, 0x01, 0x09, 0x0A, 0x01, 0x0C, 0x0D, 0x1F, 0x20, 0x10, 0x11, 0x01
                                     DB	0x0F, 0x11, 0x01, 0x09, 0x0A, 0x01, 0x0F, 0x10, 0x10, 0x12, 0x13, 0x10, 0x10, 0x11, 0x01, 0x09
                                     DB	0x0A, 0x01, 0x0F, 0x11, 0x01, 0x0F, 0x10, 0x21, 0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x09
                                     DB	0x0A, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01, 0x01, 0x09, 0x0A, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x0B, 0x08, 0x01, 0x0C, 0x0D, 0x0D, 0x0D, 0x0D, 0x18, 0x17, 0x0D, 0x0D, 0x0E
                                     DB	0x01, 0x09, 0x0A, 0x01, 0x0C, 0x0D, 0x0D, 0x18, 0x17, 0x0D, 0x0D, 0x0D, 0x0D, 0x0E, 0x01, 0x0B
                                     DB	0x08, 0x01, 0x0F, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x11, 0x01, 0x0F, 0x11, 0x01
                                     DB	0x0F, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x11, 0x01, 0x0B, 0x08, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
                                     DB	0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x0B, 0x14, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15
                                     DB	0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15
                                     DB	0x15, 0x15, 0x15, 0x1A


