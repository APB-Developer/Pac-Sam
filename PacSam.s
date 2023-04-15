;********************************************************************
;* PROJECT      : PacSam
;* DATE         : 03/04/2023
;* DESCRIPTION  : Main project file for PacSam
;* NOTES        :
;********************************************************************

                            DUMP    1, &0000
                            ORG     &8000
                            AUTOEXEC

;********************************************************************

Start:                      di

                            ; Set the new stack pointer
                            ld      sp, StackEnd

                            ; Set the palette
                            ld      hl, PAL_Game+PAL_Game_Length-1
                            ld      b, PAL_Game_Length
                            ld      c, 248
                            otdr

                            ; Set our draw page and view page - First LMPR to render page
                            ld      a, (RenderPage)
                            or      &20
                            out     (250), a

                            ; Set the view page
                            ld      a, (RenderPage)
                            or      &60
                            out     (252), a

                            ; Now draw the tilemap
                            ld      hl, TILEMAP_Maze
                            ld      de, MazeTileLookup
                            ld      b, TILEMAP_Maze_Height
                            ld      c, TILEMAP_Maze_Width
                            call    TILEMAP_Render

                            ; Clear the background store
                            ld      hl, BackgroundStore
                            ld      a, 255
                            ld      (hl), a
                            ld      (BackgroundStoreAddress), hl

Loop:
                            ld      bc, 5000
_Delay:                     nop
                            dec     bc
                            ld      a, b
                            or      c
                            jr      nz, _Delay

                            ; Erase all sprites
                            ld      hl, BackgroundStore
                            ld      (BackgroundStoreAddress), hl
                            call    SPRITE_EraseAll
                            
                            ; Render the sprites
                            ld      hl, SPR_Closed
                            ld      a, (PacMan_X)
                            ld      e, a
                            ld      a, (PacMac_Y)
                            ld      d, a

                            call    SPRITE_Render12x12

                            ld      hl, SPR_Left1
                            ld      a, (PacMan_X)
                            add     a, 10
                            ld      e, a
                            ld      a, (PacMac_Y)
                            add     a, 20
                            ld      d, a

                            call    SPRITE_Render12x12

                            ld      a, (PacMan_X)
                            inc     a
                            ld      (PacMan_X), a

                            jr      Loop

;********************************************************************
; HL = Address of the restore buffer
SPRITE_EraseAll:                    
                            ; Check there is some data
                            ld      a, (hl)
                            cp      255
                            ret     z
                            
                            ; We do so get the address in de
                            ld      d, a
                            inc     hl
                            ld      e, (hl)
                            inc     hl

                            ; Replace 12x12 pixels
                            ld      b, 12
.YLoop:
                            push    bc
                            ldi
                            ldi
                            ldi
                            ldi
                            ldi
                            ldi

                            ex      de, hl
                            ld      bc, 128-6
                            add     hl, bc
                            ex      de, hl

                            pop     bc
                            djnz    .YLoop

                            ; Loop back and clear the next background
                            jr      SPRITE_EraseAll

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
                            push    de
                            exx
                            ld      hl, (BackgroundStoreAddress)
                            pop     de
                            ld      (hl), d
                            inc     hl
                            ld      (hl), e
                            inc     hl
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
                            exx     
                            ld      a, 255
                            ld      (hl), a
                            ld      (BackgroundStoreAddress), hl
                            exx

                            ; Exit
                            ret

;********************************************************************
;* Include the extra files
                            include "Includes\Tilemaps.s"
                            include "Includes\LookupTables.s"
                            include "Includes\Variables.s"

                            include "Data\Maze.s"

;********************************************************************

