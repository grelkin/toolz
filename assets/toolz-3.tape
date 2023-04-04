Set Shell "FISH_PROMPT=min /usr/bin/fish -PC 'cd ~/'"
Set FontSize 24
Set Width 850
Set Height 500
Set Theme "Gruvbox Dark"
Set Padding 10
Set TypingSpeed 150ms

Type "too" Sleep 500ms Tab
Sleep 1s
Type "e" Sleep 500ms Tab
Sleep 1s
Type "my-cmd" Sleep 500ms Enter
Sleep 1s
Type `GVcsource "$(toolz src my-lib)"` Enter Enter Type `say_hello "World"ii` Sleep 3s Type ":wq" Sleep 200ms Enter
Sleep 1s
Type "too" Sleep 500ms Tab
Sleep 1s
Type "ru" Sleep 500ms Tab Tab Enter
Sleep 1s
Type "t " Sleep 200ms Tab Sleep 200ms Enter
Sleep 3s
