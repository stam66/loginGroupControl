# loginGroupControl
A LiveCode group that provides a login widget.<br>
Current version: 0.2 - see changelog



**skLoginGroupWidget** is a group that can be copied as a self-contained entity into any card. It provides the necessary fields, decoration and buttons to create a login interface.<br>
It is up to the developer to populate the two handlers 
- `on login pUsername, pPassword` and 
- `on resetPasswordForUsername pUsername` within the group's script.<br>
All of the group's code is encapsulated in a hidden button "loginBehavior", assigned as a behavior to the group (right-clik to edit).

<img width="460" alt="Screenshot 2023-09-12 at 19 05 14" src="https://github.com/stam66/loginGroupControl/assets/5677273/dea143c7-a59a-4af2-ae04-12b8131177df">

### Features
- Resizing the group will resize fields, decorations and buttons as well as scale the text
- The password field is obfuscated with circles that are scaled with resizing the text. Obfuscation can be toggled as expected
- Both username and password fields show placeholder text if empty and not in focus
- If escape key hit, focus is removed from all elements and if fields are empty, placeholder text is shown
- Almost all settings (eg button style, background style, colors etc) are properties of the group that can be get/set
- The stack allows direct manipulation of properties of any selected loginGroup - if none are selected, the default is used for changes and can be copied to any stack

### Notes
- If adding to a card, ensure the openControl message is sent to the group to ensure correct function
- Fields are not opaque - currently textColor selection is based on luminosity of the backgroundColor of graphic "background" of the group
- Longer term plan is to convert this to a script widget - the big step of moving all code to a single script is now done
