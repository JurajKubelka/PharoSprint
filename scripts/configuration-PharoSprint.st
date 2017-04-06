Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint:$BRANCH$/src';
    load.

Smalltalk saveAs: 'PharoSprint-', SystemVersion current highestUpdate asString, '-$REVISION$'.
Smalltalk snapshot: true andQuit: true.
