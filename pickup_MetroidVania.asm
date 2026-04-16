;;; Pickup scripts.
;;; Right now, we need to look at the type of object that is in X.
;;; Then, we have to do pickup behavior accordingly.

;; Here is an example of how to set variable myAmmo to 5 if the pickup type
;; is gameobject 2.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	LDA Object_type,x
	CMP #$02 ;;What object is your pickup?  00 - 0f
	BNE +notThisPickup
		LDA #1
		STA powerUpGhostBullet
		JMP +endPickups
+notThisPickup:

	CMP #$03
	BNE +notThisPickup
		INC myHealth
		LDA myHealth
		CMP #$04 ;; one more than the max
		BNE +dontNormalizeValue
			LDA #$03 ;; normalize the value to 3 if it got bigger than 3
			STA myHealth
		+dontNormalizeValue
		UpdateHudElement #$02
		JMP +endPickups
+notThisPickup:



+endPickups

	;;; object will already destroy based on type.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;