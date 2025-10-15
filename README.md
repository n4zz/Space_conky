![Platform](https://img.shields.io/badge/platform-manjaro-green)
![WM](https://img.shields.io/badge/window%20manager-Wayland-blue)
![Desktop](https://img.shields.io/badge/desktop-KDE6-blueviolet)

# Space_conky
This is Space conky, aka Universe conky for laptop with battery status and without SW object.    
      
----       
      
For a long time, I struggled with why images (various frames, icons, etc.)      
were not displaying correctly in Conky when switching from X11 to Wayland.     
     
It seems that I have discovered the culprit, which is the KWin window manager.      
When night lighting is enabled, KWin turns off frames and icons.      
     
It's actually an unwanted hack, where I have everything during the day and only text at night.      
If I want frames at night, I just need to turn off the night light. :D      
     
----     

For more my conky.config for x11 go to: [Codehack.cz](https://codehack.cz/conky.html#gsc.tab=0)     
Conky project [Homepage](https://github.com/brndnmtthws/conky/wiki)       
     
<img src="spy_ntb_final" alt="Screenshot_Space_conky_for_laptop" width="600">
