# My Batch Script Tricks

Hello, this is a respiratory dedicated whenever I manage to create some cool batch (.bat) scripts that help me out in many situations and I decide to share them with you to use wherever you might need it

Some might be buggy while some might not

I *may or may not* update them from time to time if I see the need to
In other words, if I have a feature I want to add to it, or there is a major bug with it that can be easily fixed, I might modify the script. If not, then I will probably not update it

There might be other scripts developed by someone else that can achieve similar features, or even do it better than what I have.
I have written these scripts because I either could not find the feature I want in batch properly or what I found is too complicated and this might be a simpler solution.

So Here are the scripts and their purposes



## SyncSystemEnvPathToCMD.bat

Don't you hate that after a system environmental variable you have to somehow find a way of launching a script file with the new environmental variables?

This script basically gets the latest environmental variables from the registry and sets them to the current batch script path variable to be used.
In other words, say you install a version of an app, and you don't know where it was installed, and you need to run it as if it was already part of the path in the next command...
This script basically fixes that small problem.

I still have to play around with it to know whether it can be used  as a call argument (ex: call :syncevpath), but otherwise, it can be used as many times in the script directly.

**Note:** This does not modify the system environmental variable, it only reads it and sets the current running console's path variable to the latest one.
