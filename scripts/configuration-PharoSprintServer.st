"This script builds MQTTChat for server in order to share list of the
proposed, taken, and done cases."

Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint:$BRANCH$/src';
    load: #'mqtt-server'.

Smalltalk saveAs: 'PharoSprintServer'.
Smalltalk snapshot: true andQuit: true.
