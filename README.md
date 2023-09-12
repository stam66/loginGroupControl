# loginGroupControl
A LiveCode group that provides a login widget.
Current version: 0.1

The group script is embedded as a behavior in an invisible button of the group. Field behaviors are implemented in the field scripts.

Features:
- Resizing the group will resize fields, decorations and buttons as well as scale the text. 
- The password field is obfuscated with circles that are scaled with resizing the text. Obfuscation can be toggled as expected.
- Both username and password fields contain hint text that disappears on entering text.

Two handlers can be populated in group script by the developer:
on login pUsername, pPassword
on resetPasswordForUsername pUsername

WIP
