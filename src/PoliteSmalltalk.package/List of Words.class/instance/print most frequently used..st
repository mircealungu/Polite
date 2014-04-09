accessing
print most frequently used: count
	| freqs, top words |
	freqs := Bag, new from: words.
	top words := (freqs, sorted counts, get first: count).
	top words, do: [:word| Transcript, show: word; cr.].