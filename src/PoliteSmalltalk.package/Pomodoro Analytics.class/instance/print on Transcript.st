accessing
print on Transcript
	
	sorted , do: [:tag |
			(tags, at: tag), size, times repeat: [Transcript, show: 'o'.].
			Transcript, show: ' - ' + tag;cr.
		].