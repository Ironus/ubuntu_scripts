# BatteryLife<br />
Bash script for checking battery percentage level and giving proper notification when it reaches 40% or 80%.<br />
Loading your battery like that SHOULD* extend your battery life duration. <br />
<br />
*I'm not taking any responsibility for no results or possible worse battery life.<br />
I wrote that script only to help you to track your battery level and it's your decision if you're using that piece of software or not.*<br />
<br />
## Installation:
You might need to install acpi package first.
```
sudo apt-get install acpi
```
If you already have acpi package installed, then just add script to your startup applications and restart your laptop.

## Troubleshooting:<br />
- Script is not showing battery images on notifications<br />
  - It's using default images from ubuntu's files (/usr/share/icons/gnome/32x32/status/). If you can't see any of them or you're getting error saying that there is no such file, then you should change that path accordingly to your system.<br />
- Script is not playing sound on notifications<br />
  - It's using default sounds from ubuntu's files (/usr/share/sounds/ubuntu/stereo/). If you can't hear any of them or you're getting error saying that there is no such file, thenn you should change that path accordingly to your system.<br />
- Script is showing notification on different battery levels than 40% and 80%<br />
  - It's because default script refresh rate is set on 150 seconds (2 and a half minute). It's possible that it's going off right before your battery level will be on desired number and then it's going into freeze on next 2,5 min. If you want to make it more precise, then change sleep value to lower.<br />
- Script is getting me battery drain<br />
  - It's possible to get battery drain if your sleep time is too low and script is going off really frequently. Try changing sleep time to higher number, if that doesn't help - let me know.<br />
- Script is still showing me notigication if I don't react to battery level<br />
  - It's supposed to inform you all the time if your battery level is below 40% or over 80% and you didn't take proper action. It's not a bug ;)

Any feedback is more than welcome. Let me know what you think about that application!<br />
~Ironus
