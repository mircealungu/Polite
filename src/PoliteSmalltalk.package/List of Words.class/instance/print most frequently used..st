accessing
print most frequently used: count
	| freqs |
	freqs := Bag, new from: words.
	(freqs, sorted counts, get first: count), do: [:word|
		Transcript, show: word; cr.
	].