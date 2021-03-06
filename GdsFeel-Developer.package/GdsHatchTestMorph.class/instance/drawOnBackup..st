as yet unclassified
drawOnBackup: aCanvas
	| t step from to stepPoint i maxSide |
	super drawOn: aCanvas.
	maxSide := self innerBounds width max: self innerBounds height.
	t := MatrixTransform2x3 identity .
	"t := t composedWithLocal: ( MatrixTransform2x3 withOffset: (self innerBounds extent // 2)negated ).	"
	t := t composedWithLocal: ( MatrixTransform2x3 withOffset: ( self innerBounds origin) ).
	t := t composedWithLocal: ( MatrixTransform2x3 withAngle: hatch angle).	
	step := (maxSide ) // (hatch linesPerScreen).	
		from := 0@0.
		to := (maxSide) @(from y).
		stepPoint := 0@step.
	stepPoint isZero ifTrue: [^self].
	aCanvas asBalloonCanvas transformBy: t during: [:localCanvas |
		i := 0.
		(0 to: (maxSide) by: step)
			do: [:v|
				i := i + 1.
				i > 2000 ifTrue: [^self].
				from := from + stepPoint.
				to :=to + stepPoint.
				localCanvas line:  from to: to color: Color black. ]
		].