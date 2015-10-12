#BatteryLife

Summary:
Bash script for checking battery percentage level and giving proper notification when it reaches 40% or 80%.
Loading your battery like that SHOULD* extend your battery life duration. 

* I'm not taking any responsibility for no results or possible worse battery life. 
I wrote that script only to help you to track your battery level and it's your decision if you're using that piece of software or not.

Troubleshooting:
        Script is not showing battery images on notifications
          It's using default images from ubuntu's files (/usr/share/icons/gnome/32x32/status/). If you can't see any of them or you're getting error saying that there is no such file, then you should change that path accordingly to your system.
        Script is not playing sound on notifications
          It's using default sounds from ubuntu's files (/usr/share/sounds/ubuntu/stereo/). If you can't hear any of them or you're getting error saying that there is no such file, thenn you should change that path accordingly to your system.
        Script is showing notification on different battery levels than 40% and 80%
          It's because default script refresh rate is set on 150 seconds (2 and a half minute). It's possible that it's going off right before your battery level will be on desired number and then it's going into freeze on next 2,5 min. If you want to make it more precise, then change sleep value to lower.
        Script is getting me battery drain
          It's possible to get battery drain if your sleep time is too low and script is going off really frequently. Try changing sleep time to higher number, if that doesn't help - let me know.
        Script is still showing me notigication if I don't react to battery level
          It's supposed to inform you all the time if your battery level is below 40% or over 80% and you didn't take proper action. It's not a bug ;)

Any feedback is more than welcome. Let me know what you think about that application!

~Ironus
