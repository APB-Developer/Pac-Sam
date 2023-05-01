;********************************************************************
;* Variables
;********************************************************************

RenderPage:             db      SCR_Buffer1
ViewPage:               db      SCR_Buffer2

VBCounter:              db      0

TestDelay:              db      0
TestFrame:              db      0
TestList:               dw      PAC_LeftAnim
                        dw      PAC_UpAnim
                        dw      PAC_RightAnim
                        dw      PAC_DownAnim

; PacMan Data
PacMan_X:               db      0
PacMan_Y:               db      0
PacMan_AnimOffset:      db      0
PacMan_AnimDelay:       db      0
PacMan_Frame:           dw      0

Stack:                  ds      64*2
StackEnd:

;********************************************************************
