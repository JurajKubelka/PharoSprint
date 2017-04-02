Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint/src';
    load.

Smalltalk saveAs: 'PharoSprint-', SystemVersion current highestUpdate asString.
Smalltalk snapshot: true andQuit: true.
