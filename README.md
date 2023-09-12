# loginGroupControl
A LiveCode group that provides a login widget.<br>
Current version: 0.1

**skLoginGroupWidget** is a group that can be copied as a self-contained entity into any card. It provides the necessary fields, decoration and buttons to create a login interface.<br>
It is up to the developer to populate the two handlers `on login pUsername, pPassword` and `on resetPasswordForUsername pUsername` within the group's script.<br>
All of the group's code is encapsulated in a hidden button "loginBehavior", assigned as a behavior to the group (right-clik to edit).


### Features
- Resizing the group will resize fields, decorations and buttons as well as scale the text
- The password field is obfuscated with circles that are scaled with resizing the text. Obfuscation can be toggled as expected.
- Both username and password fields show placeholder text if empty and not selected
- If both fields have text (other than placeholder text) then return or enter in field triggers the loging handler, otherwise moves the selection from username to password and vice versa
- If escape key hit, focus is removed from all elements and if fields are empty, placeholder text is shown
- Change the backgroundColor of the graphic "background" of the group as needed - the text/placeholderText/circle color will be changed appropriately to either light or dark based on this backgroundColor
- To change the encircling box from roundRect to rect or hidden simply edit the graphic "background" of the group. Future plan is to add this as a property to control in an API


### Notes
- Currently colors are implemented as constants in the behavior script; edit the group's behavior directly from the contextual menu to change these
- Fields are not opaque - currently textColor selection is based on luminosity of the backgroundColor of graphic "background" of the group
- Plan is to change constants to get/set functions that service up a default if empty
- Longer term plan is to conver this to a script widget - the big step of moving all code to a single script is now done
