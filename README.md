# PharoSprint

Pharo Sprint Application to support coordination and collaboration during Bug Days a.k.a. Pharo Sprint Days.

Implemented in [Pharo](http://pharo.org). 

[![Build Status](https://travis-ci.org/JurajKubelka/PharoSprint.svg?branch=master)](https://travis-ci.org/JurajKubelka/PharoSprint)
[![Build status](https://ci.appveyor.com/api/projects/status/8h36ia1y8a9j8kv1/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/pharosprint/branch/master)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/PharoSprint/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/PharoSprint?branch=master)
[![Download](https://api.bintray.com/packages/jurajkubelka/PharoSprint/build/images/download.svg)](https://bintray.com/jurajkubelka/PharoSprint/build/_latestVersion#files)

## Introduction

You can open the application from the World menu. Currently, there are two options:
- simplified UI that displays only lists of all, proposed, taken, and done cases
- detailed UI that displays the same lists and details for a selected case below

### Simplified UI

As you can see below, you can also filter cases according to case title, state, and participated users.

![Main application window](assets/img/main-window.png)

### Detailed UI

![Detailed application window](assets/img/detailed-window.png)

### Case Info and Details

You can also browse case details in a new window. 

![Main application window](assets/img/case-info.png)

![Main application window](assets/img/case-events.png)

## Installation

You can download [the latest image from Bintray](https://bintray.com/jurajkubelka/PharoSprint/build/_latestVersion#files) or install it in the latest Pharo 6 image using:

```
Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint/src';
    load.
```
