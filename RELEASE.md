Release Comments

## Version 0.2.0

- Release date: Apr 27, 2017

![Main Window](https://github.com/JurajKubelka/PharoSprint/raw/2ec35ce7f30c8f747965ed84fc109652c97bd94e/assets/img/main-window.png)

![Context Menus](https://github.com/JurajKubelka/PharoSprint/raw/2ec35ce7f30c8f747965ed84fc109652c97bd94e/assets/img/context-menus.png)

For other screenshots and details check [README.md](https://github.com/JurajKubelka/PharoSprint/blob/763e26e5a796c4bc657827be809d638f85a09051/README.md).

The tool was announced publicly in [pharo-users](http://forum.world.st/Ann-Pharo-Sprint-App-to-improve-coordination-during-Pharo-Sprints-td4943467.html#a4943677) mailing list, and tweeted by [Stephan Eggermont](https://twitter.com/stonsoftware/status/856239547042209799) and [Tudor Girba](https://twitter.com/girba/status/856760171850330112).

The [Contributing to Pharo](http://pharo.org/contribute-events) is updated and the application is mentioned here. Thanks to Marcus Denker for the effort!

Right after the announcement, several ideas and issues were posted, see [the list](https://github.com/JurajKubelka/PharoSprint/issues?utf8=✓&q=is%3Aissue%20created%3A2017-04-23..2017-04-27)

### Summary of Changes

Closed issues are visible in the corresponding milestone [0.2.0](https://github.com/JurajKubelka/PharoSprint/milestone/1?closed=1)

#### Simplified Main Window

The main application windows is simplified, and event list is replaced by status bar that displays case title, when it was opened, who opened it, and contributor names.contributors are sorted by number of contributions (edits and other actions). By clicking on a user name, a corresponding activity web page on FogBugz is opened, for example [Juraj's activity page](https://pharo.fogbugz.com/f/personInfo/activity/169). There is the complete example:

> Float>>round: should be deprecated, opened 179 days ago by Stephane Ducasse, and contributed by Stephane Ducasse (6x), Vincent Blondeau (3x), Marcus Denker (2x), Pavel Krivanek (2x).

We decided for this, because in the previous version, users reported that long titles are not readable and the case list is not useful. In this version, the details are accessible in an extra window, that can be opened from the case context menu.

#### Other Remarks

Issues can be sorted according to several criteria, case details can be displayed in dedicated GT-Inspector views, the tool mentions user activities in FogBugz and Discord. The screenshot are available in the previously mentioned [README.md](https://github.com/JurajKubelka/PharoSprint/blob/763e26e5a796c4bc657827be809d638f85a09051/README.md).

The deployment process is automated and 32bit and 64bit builds are stored on [Bintray](https://bintray.com/jurajkubelka/PharoSprint). There are stable and development releases.

A MQTT client is deployed on `gc.dcc.uchile.cl` server in order to persist (in memory) user activities.

## Version 0.1

- Release date: Mar 31, 2017
- Tested during Pharo Sprint, Mar 31, 2017 at DCC, Santiago, Chile

### Introduction

Tha main application window looks like this:

![Main Window](https://github.com/JurajKubelka/PharoSprint/raw/7d2aa6677520fa707dd495668da6cb8f09bf3c09/assets/img/main-window.png)

It displays all, proposed, taken, and done cases. Each one is possible to select and move to another column.

### Feedback

Users submitted the following issues: #1, #2, #3, #4, #5, #6 (see [the list](https://github.com/JurajKubelka/PharoSprint/issues?utf8=✓&q=is%3Aissue%20created%3A%3C2017-04-02%20), and the following comments:

#### What do you like about the current Pharo Sprint Application?

- Help coordinating the sprint. Seeing issues being moved around gives a nice dynamic
- The interface is much more cleaner. I like the idea of watching in what issue the people is working on
- Estaba familiarizandome con otras cosas asi que no la llegue a usar pero por lo que vi me parecio un diseño amigable y claro
- Simple to use, focussed on specific task

#### What are missing features of the current Pharo Sprint Application?

- Many :-) Currently, an issue has only one contributor. Several people should be associated to an issue (**notes:** same as issue #2)
- I miss some kind of backup about what is happening. Whenever I close the image, I lose information about pass issue (**notes:** since the version 0.2.0 visible in Discord channel, not in the application itself, converted to issue #25)
- When a case is taken, it should add a new changeset named "<case>-<author>" and fill in the preamble. A menu item on the case could open this change in the ChangeSorter for easy review and approval. (**notes:** converted to issue #22)

#### Any other thoughts to share with us about Pharo Sprint event and the application usage?

It is nice to see everything there ready to work with, but the web page still hold more information about the issue, maybe put that information on the program or a link to FogBuz would be nice. (**notes:** since the version 0.2.0, the details are available in a dedicated case windows, but the fogBugz webpage presents the case activities more uniformly, it will be improved, converted to issue #26)
