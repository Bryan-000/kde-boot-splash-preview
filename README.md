some bash things to preview the boot splash screen youve selected without needing to restart ur pc
(dont mind the comments its my first time doing stuff with bash)

you can also just run (might only work on arch tho..)
```
sudo plymouthd --mode=shutdown
sudo plymouth --show-splash
sleep 3
sudo plymouth --quit
```
or uh
```
sudo plymouthd --mode=shutdown; sudo plymouth --show-splash; sleep 3; sudo plymouth --quit
```
if you hate readability ig :P

and also some screenshots of default themes for like cachyos, if any1 else wants to upload more screenshots for other distros and such just do a pr since i only have cachy on my machines :3
