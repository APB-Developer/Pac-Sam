;********************************************************************
;* Variables
;********************************************************************

RenderPage:             db      14

; PacMan Data
PacMan_X:               db      0
PacMac_Y:               db      0

; BackgroundStore
BackgroundStoreAddress: dw      0
BackgroundStore:        ds      1024

Stack:                  ds      64*2
StackEnd: