"This script builds MQTTChat for server in order to share list of the
proposed, taken, and done cases."

| bits |

Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint:$BRANCH$/src';
    load: #'mqtt-server'.

Smalltalk wordSize = 8
    ifTrue: [ bits := '64bit' ]
    ifFalse: [ bits := '32bit' ].

"Smalltalk cleanUp: true except: #() confirming: false."
Smalltalk saveAs: 'PharoSprintServer', bits, '-', SystemVersion current highestUpdate asString, '-$REVISION$'.
Smalltalk snapshot: true andQuit: true.
