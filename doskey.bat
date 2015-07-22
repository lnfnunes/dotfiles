doskey clear=cls $1
doskey ls=cls $T dir $1
doskey ll=cls $T dir $1
doskey ..=cd ../
doskey ...=cd ../../
doskey ...=cd ../../../

doskey master=git checkout master $1
doskey http=python -m http.server $1
doskey serve=cls $T grunt serve $1

doskey st="%programfiles%\Sublime Text 3\sublime_text.exe" $1
doskey chrome="%programfiles%\Google\Chrome\Application\chrome.exe" $1
doskey vpn="%programfiles%\OpenVPN\bin\openvpn-gui.exe" $1

cls
