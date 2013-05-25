private
print on Transcript
	
	sorted , do: [:tag |
			(tags, at: tag), size, times repeat: [Transcript, show: '+'.].
			Transcript, show: tag; cr.
		].