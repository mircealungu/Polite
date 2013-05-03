Polite
======

(Warning: Polite is a prototype, and work in progress)

We are nothing, if not polite. And sice every polite person talks in sentences, Polite is a programming language
which encourages developers to name their methdos and classes with sentences. Indeed, every method in a class 
denotes an action, which is best expressed as a sentence not as a terribly long camelcase identifier 
(which might still be preferred by the German people :)

Thus, a snippet which in a popular programming language would be written as: 

    kingArthur = new PoliteHero('King Arthur');
    superHero.beatTheHellOutOfAndSaveThe(theBadGuys, theLady)

is written in Polite like:

    king Arthur := Polite Hero, named: 'King Arthur'.
    king Arthur, beat the hell out of: (the bad guys) and save: (the lady). 

See more at: http://scg.unibe.ch/research/Polite

Installation
------------
To get a taste of Polite run in your OS X terminal, or Linux console:

    git clone git@github.com:mircealungu/PoliteSmalltalk.git
    ./base-image/get-polite.sh
