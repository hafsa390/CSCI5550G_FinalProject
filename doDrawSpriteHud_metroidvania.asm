;;; Here is an example of how to do a sprite hud.
;;; Arg5, the one that has the value of myVar, must correspond to a user variable you have in your game.
;;; Don't forget, you can only draw 8 sprites per scanline, so a sprite hud can only be 8 sprites wide max.


;DrawSpriteHud #$08, #$08, #$11, #$10, #$10, myVar, #$00
	; arg0 = starting position in pixels, x
	; arg1 = starting position in pixels, y
	; arg2 = sprite to draw, EMPTY CONTAINER
	; arg3 = MAX	
	; arg4 = sprite to draw, FILLED CONTAINER
	; arg5 = variable.
	; arg6 = attribute
	
;;;DrawSpriteHud #16, #16, #$78, #$03, #$76, myHealth, #%00000001  ;;;; this draws health

DrawSpriteHud #16, #16, #$7E, myMaxHealth, #$7D, myHealth, #%00000001  ;;;; this draws health

DrawSpriteHud #16, #24, #$7F, #$03, #$7C, myLives, #%00000001 ;; this draws lives

