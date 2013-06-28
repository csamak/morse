Haskell-Morse
=============

Haskell-Morse is a remake of morse from bsd-games, though it may develop some slight improvements. 

Converts text --> Morse code and Morse code --> text.


Possible Future Features
------------------------

*   Clever data structure(s) taking advantage of patterns in Morse code.
*   Given a Morse code "transmission" with *incorrect* spacing, find all the possible translations (and possibly sort by likeliness using lexigraphic analysis)
*   Different pretty-printing options, such as the Morse with the corresponding letters on the side.
*   Output transmission sound at varying rates.
*   Output visual transmissions at varying rates.
*   [Unlikely] Input audio/visual transmissions.

Additional Notes
----------------

*   This trivial project solely exists for me to familiarize myself with certain parts of Haskell.
*   Optimal library/package usage is *not* a goal of this project. 

    For example, data structures exist for finite bijections (e.g. Data.Bitmap), but have chosen to implement a simple one instead for the learning experience.