# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Debajit Adhikary**

Time spent: **12** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
- [x] Light and dark theme, configurable as a user preference.

Some code highlights:
- [x] Separate Bill model class for tip calculation business logic, so that presentation code is cleanly decoupled from the business logic, which becomes easily unit-testable. The tip amounts themselves, for instance, are controlled by a simple array in this class.
- [x] Settings class with user preference properties that encapsulates UserDefaults reading and writing.

## Video Walkthrough

Here's a walkthrough of implemented user stories and features:

<img src="http://i.imgur.com/IUE4Xa1.gif" title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).


## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development
platform so far? How would you describe outlets and actions to another
developer? Bonus: any idea how they are being implemented under the
hood? (It might give you some ideas if you right-click on the
Storyboard and click Open As->Source Code")

**Answer:**

I found the iOS app development platform to be mature and easy to
learn. In half a day I was able to get started with Swift (which was
completely new to me), and create a decent iPhone application in half
a day, which was a pleasant surprise.

Outlets are references to view objects, that allow them to be
programmatically controlled from a controller. Actions are methods
that are invoked (in the controller) when an event happens on the
associated view object.

The metadata for an outlet or action is saved in the view XML (i.e. in
the storyboard), and the code in the ViewController. The view XML
references the right ViewController and its method/property name. When
the view is loaded, the view objects are instantiated and bindings
(i.e. observers) are set up between the view objects and the
controller actions and outlets.

**Question 2:**  "Swift
uses
[Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC),
which is not a garbage collector, to manage memory. Can you explain
how you can get a strong reference cycle for closures? (There's a
section explaining this concept in the link, how would you summarize
as simply as possible?)"

**Answer:**

A strong reference cycle for closures would happen when a closure and
another reference type hold a strong reference to one another
(resulting in a cyclical reference). Such a case may happen when for
instance, a closure is assigned to a class property, and inside the
closure there is a call to one of the class methods, or one of the
class properties. Because of this, the closure “captures” the instance
of the class, meaning that it holds a reference to the state of the
class instance (properties etc). Since the class instance also holds a
reference back to this closure, this results in a strong reference
cycle for the closure.


## License

    Copyright 2017 Debajit Adhikary

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
