;********************************************************************
;* PROJECT      : PacSam
;* DATE         : 03/04/2023
;* DESCRIPTION  : Main project file for PacSam
;* NOTES        :
;********************************************************************

;********************************************************************
;* Various Equates
SCR_Buffer1:                EQU     14
SCR_Buffer2:                EQU     12

;********************************************************************
                            
                            DUMP    1, &0000
                            ORG     &8000
                            AUTOEXEC

;********************************************************************

Start:                      di

                            ; Set the new stack pointer
                            ld      sp, StackEnd

                            ; Setup the interrupt handler
                            call    InitInterruptHandler

                            ; Set the palette
                            ld      hl, PAL_Game+PAL_Game_Length-1
                            ld      b, PAL_Game_Length
                            ld      c, 248
                            otdr

                            ; Flip the buffers
                            call    FlipBuffers

                            ; Now draw the tilemap
                            ld      hl, TILEMAP_Maze
                            ld      de, MazeTileLookup
                            ld      b, TILEMAP_Maze_Height
                            ld      c, TILEMAP_Maze_Width
                            call    TILEMAP_Render

                            ; Clear the background store
                            ld      hl, BackgroundStore
                            ld      (BackgroundStoreAddress), hl
                            
                            ; Flip the buffers
                            call    FlipBuffers

                            ; Now draw the tilemap
                            ld      hl, TILEMAP_Maze
                            ld      de, MazeTileLookup
                            ld      b, TILEMAP_Maze_Height
                            ld      c, TILEMAP_Maze_Width
                            call    TILEMAP_Render

                            ; Clear the background store
                            ld      hl, BackgroundStore
                            ld      (BackgroundStoreAddress), hl

                            ; Clear the VB Counter
                            xor     a
                            ld      (VBCounter), a
                            ld      (PacMan_AnimOffset), a
                            ld      (TestFrame), a

                            ld      a, 1
                            ld      (TestDelay), a
                            ld      (PacMan_AnimDelay), a


Loop:                       ; Wait for next vertical blank
                            ld      a, (VBCounter)
                            and     a
                            jr      nz, Loop                            

                            ; Reset VB Counter
                            ld      a, 1
                            ld      (VBCounter), a

                            ; Flip the buffers
                            call    FlipBuffers

                            ; Erase all sprites
                            call    SPRITE_EraseAll

                            ; Reset the background buffer
                            ld      hl, BackgroundStore
                            ld      (BackgroundStoreAddress), hl

                            ld      a, (TestDelay)
                            dec     a
                            ld      (TestDelay), a
                            jr      nz, @SkipAnim

                            ld      a, 50
                            ld      (TestDelay), a

                            ld      a, (TestFrame)
                            inc     a
                            and     3
                            ld      (TestFrame), a

@SkipAnim:
                            ld      a, (TestFrame)
                            add     a, a
                            ld      e, a
                            ld      d, 0
                            ld      hl, TestList
                            add     hl, de
                            ld      a, (hl)
                            inc     hl
                            ld      h, (hl)
                            ld      l, a

                            ; Animation the sprite
                            call    ANIM_Update

                            ; Render the sprites
                            ld      hl, (PacMan_Frame)
                            ld      a, (PacMan_X)
                            ld      e, a
                            ld      a, (PacMan_Y)
                            ld      d, a

                            call    SPRITE_Render12x12

                            ld      a, (PacMan_X)
                            ;inc     a
                            ld      (PacMan_X), a

                            jp      Loop

;********************************************************************
; Animation Update
; HL = Current Animation
ANIM_Update:
                            ; Do we need to update
                            ld      a, (PacMan_AnimDelay)
                            dec     a
                            ld      (PacMan_AnimDelay), a
                            ret     nz

                            ; Get number of frames
                            ld      b, (hl)
                            inc     hl
                            ld      a, (hl)
                            inc     hl
                            ld      (PacMan_AnimDelay), a
                            ld      a, (PacMan_AnimOffset)
                            add     a, a
                            ld      e, a
                            ld      d, 0
                            add     hl, de

                            ; Read the animation frame
                            ld      e, (hl)
                            inc     hl
                            ld      d, (hl)
                            ld      (PacMan_Frame), de

                            ; Move onto the next frame
                            ld      a, (PacMan_AnimOffset)
                            inc     a
                            cp      b
                            jr      nz, @NoReset

                            ; Back to the start
                            xor     a
@NoReset:
                            ld      (PacMan_AnimOffset), a                            

                            ret

;********************************************************************

InitInterruptHandler:
                            ; Setup the interupts
                            di

                            ; Address of the interrupt routine
                            ld      a, &fe
                            ld      hl, &fd00
                            ld      de, &fd01
                            ld      bc, 256
                            ld      (hl), a
                            ldir    

                            ; Set the interrupt vector
                            ld      a, &fd
                            ld      i, a
                            im      2

                            ; Write the jump to the IM handler
                            ld      hl, &fefe
                            ld      (hl), &c3
                            inc     hl
                            ld      (hl), IM2Handler \ 256
                            inc     hl
                            ld      (hl), IM2Handler / 256

                            ; Finally enable the interrupts
                            ei
                            ret

;********************************************************************

FlipBuffers:
                            ; Swap over the buffers
                            ld      a, (ViewPage)
                            ld      b, a
                            ld      a, (RenderPage)
                            ld      (ViewPage), a
                            ld      a, b
                            ld      (RenderPage), a

                            ; Set our draw page and view page - First LMPR to render page
                            ld      a, (RenderPage)
                            or      &20
                            out     (250), a

                            ; Set the view page
                            ld      a, (ViewPage)
                            or      &60
                            out     (252), a
                            ret

;********************************************************************

IM2Handler:                 push    af
                            
                            ; Read the status register
                            in      a, (249)
                            and     &08
                            jr      z, @VBInterrupt
@VBReturn:
                            pop     af
                            ei
                            reti

@VBInterrupt:
                            ; Decrease our VB Counter
                            ld      a, (VBCounter)
                            and     a
                            jr      z, @VBReturn

                            ; Decrease it and store it
                            dec     a
                            ld      (VBCounter), a

                            ; Say we are done
                            jp      @VBReturn

;********************************************************************
;* Include the extra files
                            include "Includes\Tilemaps.s"
                            include "Includes\Sprites.s"
                            include "Includes\LookupTables.s"
                            include "Includes\AnimationTables.s"
                            include "Includes\Variables.s"

                            include "Data\Maze.s"

;********************************************************************
;* Variables at the top of the screen
                            DUMP    15, &2000
                            ORG     &6000

                            include "Includes\ScreenVariables.s"
                        
;********************************************************************

