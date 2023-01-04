# Linux-Scripts
This folder contains linux shell scripts that can make your life easy

<b>Libre Office Screen Capture Extension</b><br>

### 1. screenshot.sh

The main object here was to mimic the quick screen capture and paste feature inside Microsoft OneNote. 
This feature in OneNote was very useful in making notes.

Inside Libre Office , you can make a macro and call the script . You make make this as a button and even make a shortcut
like shift + space .

So first make sure you have the required tools that are used in the script
download 
    wmctrl,gnome-screenshot and xdotool

Create a new macro and paste this code . Just replace PATH_TO_SCRIPT with whatever path you have to reach your script.
<pre>
Sub ScreenCapture
shell "PATH_TO_SCRIPT/screenshot.sh"
End Sub 
</pre>

### 2. check-server.sh 
checks if internet is up.

### 3. .rc
common utility  run commands for bashrc, zshrc etc


### 4. Change Battey Full Charge limit
For longer battery life, it is recommended that we dont charge the battery to full 100%. But we keep the charger hooked on most of the time. To change the charge limit the following command can be used. 
`echo 60 | sudo tee /sys/class/power_supply/BAT1/charge_control_end_threshold`
This makes sure the charging never goes above 60% which is good for battery life. 

### 5. Download all files from a url expect index.html
`wget -r -np -nH -R "index.html*" -P . http://169.254.81.22:8081/Silicon%20Valley/    `

### 6. SCP files faster to a remote machine, 
Create a tar and transfer. This is soo sooo much faster than normal scp. 
`tar czf - cap_* | ssh user@host tar xvzfC - dir`
[reference](https://unix.stackexchange.com/questions/238152/why-is-scp-so-slow-and-how-to-make-it-faster/238207?newreg=b4818e0217b640389f6304a94d7d8430)


