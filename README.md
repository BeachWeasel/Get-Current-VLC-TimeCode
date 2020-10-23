# Get-Current-VLC-TimeCode
Bash script for getting the current time code from an instance of the vlc player via keyboard shortcut.

Ubuntu, Focal
requires vlc, xmllist, and xclip:

apt install vlc
apt install libxml2-utils
apt install xclip

This leverages VLC's http remote control feature(when activated) by requesting and accessing the status.xml produced by VLC. 

CONFIGURE VLC:
1. Open vlc
2. Select tools from the main menu
3. Select preferences
4. In the bottom left select "All"
5. On the left side scroll down to interface
6. Select Main interfaces 
7. Check the box next to "web"
8. On the left select "Lua" from the tree. 
9. Under the Lua HTTP group enter a password. I used "vlc" (no quotes). Be sure to update the script if your password is different.
10.Select the save button at the bottom of the dialog and restart vlc.

CONFIGURE KEYBOARD SHORTCUTS:
1. Go to settings > keyboard shortcuts. 
2. Scroll down and select the '+' button to create a new custom shortcut
3. Give it a name
4. The command should be similar to this but for your username: bash /home/<user>/MyBin/GetCurrentVLCTimeCode.sh (Please note that I don't have spaces for the command field)
5. Ceate a shortcut key combo. I set mine to Alt+c

The time code will be in the following format: hour:minute:second with a '0' padding and will be saved to the user's clipboard. 
