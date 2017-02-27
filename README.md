# Linux-Scripts
This folder contains linux shell scripts that can make your life easy

<b>screenshot.sh</b><br><br>
The main object here was to mimic the quick screen capture and paste feature inside Microsoft OneNote. 
This feature in OneNote was very useful in making notes.

Inside Libre Office , you can make a macro and call the script . You make make this as a button and even make a shortcut
like shift + space .

Create a new macro and paste this code . Just replace PATH_TO_SCRIPT with whatever path you have to reach your script.
<pre>
Sub ScreenCapture
shell "PATH_TO_SCRIPT/screenshot.sh"
End Sub 
</pre>
