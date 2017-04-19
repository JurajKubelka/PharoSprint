| bits |

Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint:$BRANCH$/src';
    load.

Smalltalk wordSize = 8
    ifTrue: [ bits := '64bit' ]
    ifFalse: [ bits := '32bit' ].

"Smalltalk cleanUp: true except: #() confirming: false."
Smalltalk saveAs: 'PharoSprint', bits, '-', SystemVersion current highestUpdate asString, '-$REVISION$'.
Smalltalk snapshot: true andQuit: true.
