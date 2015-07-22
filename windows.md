My personal alias commands for Windows _Command Prompt_.

All these alias are enabled by [DOSKEY](https://msdn.microsoft.com/en-us/library/windows/desktop/ms682057(v=vs.85).aspx) native command.

####Doskey commands
`doskey /MACROS` - List registered macros

`doskey {alias}={command}` - Add a new macro

###Install
1. Save 'doskey.bat' file to %userprofile% folder.
1. [windows + R] > regedit > HKEY_CURRENT_USER\Software\Microsoft\Command Processo
1. [RightClick] > New > String value
1. Set key: "Autorun"
1. Set value: "%userprofile%\doskey.bat"

###Shell environment
* `clear` - Unix equivalent sintax
* `ls` - Unix equivalent sintax. Clear command then list current dir
* `ll` - Unix equivalent sintax. Clear command then list current dir folders
* `..` - Return one folder up
* `...` - Return two folders up
* `...` - Return three folders up

###Shell Development
* `master` - Git checkout to master branch
* `http` - Start simple HTTP local server with Python
* `serve` - Clear command run default Grunt task

###Programs
* `st` - Open Sublime Text 3 editor
* `chrome` - Open Chrome browser
* `vpn` - Open OpenVPN
