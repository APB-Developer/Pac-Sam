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
                            ld      hl, PAL_Maze+PAL_Maze_Length-1
                            ld      b, PAL_Maze_Length
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
                            call    RENDER_Tilemap

Loop:
                            jr      Loop

;********************************************************************
; HL = Tilemap Address
; DE = Tileset Lookup Address
; B = Width in tiles
; C = Height in tiles
RENDER_Tilemap:
                            ; Store some details
                            ld      (_TileLookupSMC + 1), de
                            ld      d, 0
                            
                            ; Loop through all the vertical tiles
_HeightLoop:
                            push    bc

                            ; Reset the width counter
                            ld      b, c
                            ld      e, 0

                            ; Loop through all the horizontal tiles
_WidthLoop:
                            ; Read the tile we want
                            ld      a, (hl)
                            inc     hl
                            push    hl

_TileLookupSMC:             ld      hl, 0
                            call    RENDER_DrawTile6x6

                            pop     hl

                            ; Move onto next tile
                            inc     e

                            djnz    _WidthLoop

                            ; Move onto next line
                            inc     d

                            pop     bc
                            djnz    _HeightLoop

                            ret

;********************************************************************
; A = Tile Number
; HL = Tileset lookup address
; D = Y Position in tiles
; E = X Position in tiles
RENDER_DrawTile6x6:         
                            ; Remember the x/y & tileset lookup
                            push    de
                            push    hl
                            push    bc

                            ; Get the position of the tile lookup
                            ld      b, 0
                            ld      c, a     
                            add     hl, bc
                            add     hl, bc
                            ld      a, (hl)
                            inc     hl
                            ld      h, (hl)
                            ld      l, a

                            ; HL is now the start of the graphics, Now multiply D by (128*6)
                            ld      a, d
                            add     a, a
                            add     a, d
                            ld      d, a

                            ; Multiply the x position by 6 pixels (3 bytes)
                            ld      a, e
                            add     a, a
                            add     a, e
                            ld      e, a

                            ; Copy the data
                            ldi
                            ldi
                            ldi
                            ex      de, hl
                            ld      bc, 128-3
                            add     hl, bc
                            ex      de, hl
                            ldi
                            ldi
                            ldi
                            ex      de, hl
                            ld      bc, 128-3
                            add     hl, bc
                            ex      de, hl
                            ldi
                            ldi
                            ldi
                            ex      de, hl
                            ld      bc, 128-3
                            add     hl, bc
                            ex      de, hl
                            ldi
                            ldi
                            ldi
                            ex      de, hl
                            ld      bc, 128-3
                            add     hl, bc
                            ex      de, hl
                            ldi
                            ldi
                            ldi
                            ex      de, hl
                            ld      bc, 128-3
                            add     hl, bc
                            ex      de, hl
                            ldi
                            ldi
                            ldi

                            ; Exit
                            pop     bc
                            pop     hl
                            pop     de

                            ret


;********************************************************************
;* Include the extra files
                            include "Data\Maze.s"

                            include "Includes\LookupTables.s"
                            include "Includes\Variables.s"

;********************************************************************

