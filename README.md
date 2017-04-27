# PharoSprint

Pharo Sprint Application to support coordination and collaboration during Bug Days a.k.a. **Pharo Sprint Days**.

[![](https://img.shields.io/badge/language-Smalltalk-blue.svg?style=flat)](https://en.wikipedia.org/wiki/Smalltalk)
[![](https://img.shields.io/badge/platform-Pharo-blue.svg?style=flat)](http://pharo.org/)
[![](https://img.shields.io/badge/pharo%20version-6.0-blue.svg?style=flat)](http://get.pharo.org)
[![](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://opensource.org/licenses/MIT/)

[![Build Status](https://travis-ci.org/JurajKubelka/PharoSprint.svg?branch=master)](https://travis-ci.org/JurajKubelka/PharoSprint)
[![Build status](https://ci.appveyor.com/api/projects/status/8h36ia1y8a9j8kv1/branch/master?svg=true)](https://ci.appveyor.com/project/JurajKubelka/pharosprint/branch/master)
[![Test Status](https://api.bob-bench.org/v1/badgeByUrl?branch=master&hosting=github&ci=travis-ci&repo=JurajKubelka%2FPharoSprint)](https://bob-bench.org/r/gh/JurajKubelka/PharoSprint)
[![Coverage Status](https://coveralls.io/repos/github/JurajKubelka/PharoSprint/badge.svg?branch=master)](https://coveralls.io/github/JurajKubelka/PharoSprint?branch=master)

[![Stable](https://img.shields.io/badge/stable%20release-:-gray.svg?style=flat)](https://bintray.com/jurajkubelka/PharoSprint/release/_latestVersion#files)
[![Download](https://api.bintray.com/packages/jurajkubelka/PharoSprint/release/images/download.svg)](https://bintray.com/jurajkubelka/PharoSprint/release/_latestVersion#files)
[![Development](https://img.shields.io/badge/development%20release-:-gray.svg?style=flat)](https://bintray.com/jurajkubelka/PharoSprint/build/_latestVersion#files)
[![Download](https://api.bintray.com/packages/jurajkubelka/PharoSprint/build/images/download.svg)](https://bintray.com/jurajkubelka/PharoSprint/build/_latestVersion#files)

## Table Of Contents

- [Introduction](#introduction)
- [Pharo Sprint App Description](#pharo-sprint-app)
- [Discord and FogBugz Integration](#discord-and-fogbugz-integration)
- [How To Use It](#how-to-use-it)
- [Installation](#installation-in-a-fresh-pharo-image)
- [Contribution & Ideas](#contribution--ideas)

## Introduction

Pharo community regularly organize a Pharo Sprint event. The **Pharo Sprint** is a regular (monthly) event when developers and users meet together to fix bugs. This usually takes place in a physical location but people are welcomed to participate from any place. This is a great opportunity for novices to get involved and learn from experts!

When developers meet in a physical location, they typically use a whiteboard with three columns like this:

![Whiteboard](assets/img/whiteboard.jpg)

The **TODO** column is a list of *cases* (issues, bugs), that are proposed to solve during the event. This list is usually written by organizers, but anyone can fill it. The **TAKEN** column is a list of cases, that someone decided to take. Typically, a developer crosses (or deletes) the number from the *TODO* list and writes it down to the *TAKEN* list. Once the developer is done, he or she crosses the number and puts it to the **DONE** column. This is a great way to organize the event smoothly.

As the Pharo community grows, Pharo Sprint events are organized at the same day in different places around the world. And this is the moment, when the *Pharo Sprint App* become handy. The *physical whiteboard* is moved to the internet and shared among the dislocated groups. Moreover, developers see who is working on what and contact him or her on Pharo's Discord server.

## Pharo Sprint App

You can open the application from the World menu. The application follows the structure that was successfully used on the physical whiteboard with three columns: proposed, taken, and done. In addition, it add the *all* column where all open cases are listened and can be sorted in various ways.

First of all, you need to login to FogBugz, using your FogBugz account

![Main application window](assets/img/login.png)

Once, you are successfully authenticated, the application updates the list of open cases. Currently it takes about 40 seconds to receive and parse the FogBugz response. So be patient, you need to do it just once :-) Developers then can choose cases from *proposed* and *all* columns, using filters and sorting options.

![Main application window](assets/img/main-window.png)

The following figure shows other actions, that are available for each column.

![Context menus](assets/img/context-menus.png)

### Case Info and Details

You can also browse case details in a new window. 

![Case info example](assets/img/case-info.png)

![Case events example](assets/img/case-events.png)

### Discord and FogBugz Integration

Pharo Sprint Application is integrated with [Discord](http://discordapp.com) and [FogBugz](http://www.fogcreek.com/fogbugz/) and is able to inform about user activities (and case changes).

![Discord integration example](assets/img/discord-integration.png)

![FogBugz integration example](assets/img/fogbugz-integration.png)

The application does not change case states on FogBugz. In means, that developers have to *produce slices* (commit changes) and *resolve* cases independently on the Pharo Sprint App.

## How To Use It

What to do during the Pharo Sprints?

- Download [the latest image from Bintray](https://bintray.com/jurajkubelka/PharoSprint/build/_latestVersion#files)
- Execute the image, using the corresponding VM for Pharo 6
- Run the application from `World Menu` / `Communication` / `Pharo Sprint`
- Login, using your FogBugz account, wait a bit (about 40 seconds), then you should see all open cases.
- Choose one and have a happy programming :-)

Everybody participating in the sprint should use the Pharo Sprint image.

## Installation in a Fresh Pharo Image

Install it in the latest Pharo 6 image using:

```Smalltalk
Metacello new
    baseline: #PharoSprint;
    repository: 'github://JurajKubelka/PharoSprint/src';
    load.
```

It is up to you if you use the Pharo Sprint App inside of the same image where you fix other cases. It may be worth having it in a separate image, especially if the bug kills the Pharo image.

## Contribution & Ideas

The Pharo Sprint App provides two buttons in order to provide a valuable feedback.

![Feedback](assets/img/feedback.png)

The first button is a form where you can express what you like, what you do not like about the current application and provide any idea how to improve it or how to organize Pharo Sprint events better. The second button is a link to the application's [issue tracker](https://github.com/JurajKubelka/PharoSprint/issues). And you are welcome to clone this repository and make the contribution too :-)
