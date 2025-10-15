#!/bin/sh
echo "+.......................................+"
echo "|           -W-E-L-C-O-M-E-             |"
echo "+.......................................+"
echo "|         Space Conky by n4zz           |"
echo "|       https://codehack.cz/conky       |"
echo "|       https://github.com/n4zz         |"
echo "+.......................................+"
sleep 3s
echo "| For visible Battery widget uncommnet  |"
echo "|  two lines 'Battery' in this script.  |"
echo "+..........   H    F   .................+"

killall conky
sleep 5s

cd "$HOME/.config/conky/space/"
conky -q -c time.conf &

cd "$HOME/.config/conky/space/"
conky -q -c cal.conf &

cd "$HOME/.config/conky/space/"
conky -q -c sys.conf &

cd "$HOME/.config/conky/space/"
conky -q -c processes.conf &

cd "$HOME/.config/conky/space/"
conky -q -c hw.conf &

cd "$HOME/.config/conky/space/"
conky -q -c net.conf &

cd "$HOME/.config/conky/space/"
conky -q -c disk.conf &

cd "$HOME/.config/conky/space/"
conky -q -c weather.conf &

cd "$HOME/.config/conky/space/"
conky -q -c sunrise.conf &

cd "$HOME/.config/conky/space/"
conky -q -c sunset.conf &

cd "$HOME/.config/conky/space/"
conky -q -c skull.conf &

cd "$HOME/.config/conky/space/"
conky -q -c logo.conf &

#...................................
#......  B A T T E R Y  ............
#...................................
cd "$HOME/.config/conky/space/"
conky -q -c battery.conf &

exit 0


