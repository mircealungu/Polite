Polite
======

"We are nothing if not polite." 
(Don Ysidro, B.H. Rogers)

Since every polite person talks in sentences, Polite is a programming language
which encourages developers to name their method names in the most natural manner. Indeed, every method in a class 
denotes an action, which is best expressed as a sentence not as a terribly long camelcase identifier 
 (which might still be preferred by the germanic people). 

However, in order to use sentences instead of identifiers, we need to make sure that our language grammar allows the code to be parsed unambiguously. A snippet which in a popular programming language would be written as:

    protagonist = new PoliteHero('De Rode Ridder');
    protagonist.beatTheHellOutOfAndSaveThe(theBadGuys, theLady);

is written in Polite like:

    protagonist := Polite Hero, named: 'De Rode Ridder'.
    protagonist, beat the hell out of: (the bad guys) and save: (the lady). 

In our opinion a syntax like the one of Polite will encourage people to write nicer and more readable code. And since we spend much more time reading existing code than writing new code, this might make everybody happier in the long run. 

Finally, Polite is a modified Smalltalk; so all the power, and meta-power of that language is available to the Polite programmer. 

See more at: http://scg.unibe.ch/research/Polite

Installation
------------
(Warning: Polite is a prototype, and work in progress)

To get a taste of Polite run in your OS X terminal, or Linux console:

    git clone https://github.com/mircealungu/polite.git
    cd polite/base-image && ./get-polite.sh
