primitives
number
	^ ($- asParser optional , #digit asParser) and , [ :stream | 
		[ Number readFrom: stream ] 
			on: Error
			do: [ :err | PPFailure message: err messageText at: stream position ] ] 
				asParser