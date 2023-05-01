;********************************************************************
;* PROJECT      : PacSam
;* DATE         : 01/05/2023
;* DESCRIPTION  : Sprite Handler
;* NOTES        :
;********************************************************************

;********************************************************************
SPRITE_EraseAll:            
                            ; Get to the start of the restore data        
                            ld      hl, (BackgroundStoreAddress)
                            dec     hl

@EraseLoop:
                            ; Check there is some data
                            push    hl
                            ld      de, BackgroundStore
                            xor     a
                            sbc     hl, de
                            pop     hl
                            ret     c
                            
                            ; We do so get the address in de
                            ld      d, (hl)
                            dec     hl
                            ld      e, (hl)
                            dec     hl

                            ; Replace 12x12 pixels
                            ld      b, 12
.YLoop:
                            push    bc

                            ex      de, hl
                            ld      bc, 128-6
                            xor     a
                            sbc     hl, bc
                            ex      de, hl

                            ldd
                            ldd
                            ldd
                            ldd
                            ldd
                            ldd

                            pop     bc
                            djnz    .YLoop

                            ; Loop back and clear the next background
                            jr      @EraseLoop

;********************************************************************
; HL = Address of the sprite data
; D = Y Coordinate
; E = X Cooordinate
SPRITE_Render12x12:
                            ; Work out the screen coordinates
                            ld      a, d
                            srl     a
                            ld      d, a

                            ld      a, e
                            rra
                            ld      a, e

                            ; Store the address to restore to
                            exx
                            ld      hl, (BackgroundStoreAddress)
                            exx

                            ; Copy the data
                            ld      b, 12
_YLoop:
                            push    bc
                            ld      b, 6
_XLoop:
                            ; Read a byte from the screen
                            ld      a, (de)

                            ; Store the screen data for replacement
                            exx
                            ld      (hl), a
                            inc     hl
                            exx

                            ; Mask out the areas for the sprite
                            and     (hl)
                            inc     hl

                            ; Or in the graphics
                            or      (hl)
                            inc     hl

                            ; Write back to the screen
                            ld      (de), a
                            inc     de
                            djnz    _XLoop

                            ; Step to the next row
                            ex      de, hl
                            ld      bc, 128-6
                            add     hl, bc
                            ex      de, hl

                            pop     bc
                            djnz    _YLoop

                            ; Terminate the sprite redraw
                            push    de
                            exx     
                            pop     de
                            dec     de
                            ld      (hl), e
                            inc     hl
                            ld      (hl), d
                            inc     hl
                            ld      (BackgroundStoreAddress), hl
                            exx

                            ; Exit
                            ret

;********************************************************************
