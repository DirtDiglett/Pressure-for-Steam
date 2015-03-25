Pressure for Steam
==================

Pressure is a skin for Valve's Steam client that seeks to improve the visuals and aesthetics of Steam beyond the default skin. 

Pressure for Steam is currently a Work-In-Progress so expect it to change a lot between now and the official public release of the skin. Pressure is currently in BETA so expect bugs. Please report them on the Issues page.

###IMPORTANT
It is extremely important you follow the instructions below, and absolutely critical that you install the Bebas Neue Bold font by FontFabric or this skin will not look as intended. FontFabric have generously given me permission to include it in the Git Download so you can install it there or via their website.

You must also ensure that you are using the current BETA version of Steam, as otherwise this skin will not work correctly. You can do this by going into Steam Settings, Choose Account on the left and on the right click "Change..." under the BETA Participation and opt-in to Steam Beta. After restarting Steam you'll be ready for Pressure.


###Images
Here are a couple images of the skin. The look and feel of the skin can change at any time, so what you see in these images might not be what you see when you download the skin. For even more images, go to the [main album on Imgur](http://imgur.com/a/To4mp).

* [**Game Details**](http://i.imgur.com/vmR10CM.png)
* [**List View**](http://i.imgur.com/Qa3FUFS.png)
* [**Grid View**](http://i.imgur.com/SiVfHjC.png)
* [**Client Browser**](http://i.imgur.com/7goVjVA.png)
* [**In-Game Overlay**](http://i.imgur.com/pCTjpUW.png)
* [**Friends List**](http://i.imgur.com/H2yAVDn.png)
* [**Chat & Group Chat**](http://i.imgur.com/CvuqKnQ.png)

## Downloading and Installing

Because the skin is still in development, you can only download the skin here on GitHub until the skin is ready for the public to download.  To do that, just follow these steps:



1. Click on the *"Download ZIP"* button under the *"Clone in Desktop"* button on this GitHub page. That will download the skin's files as well as the font you need to install for the skin to display properly.
2. Extract the files in the ZIP folder to:
	* Windows: the `Program Files (x86)/Steam/skins` folder
	* Mac: right-click `Steam.app` and choose `show package contents` then go to - `/Contents/MacOS/skins`
	* Linux: the `~/.local/share/Steam/skins/` folder
3. You should also go ahead and install the Bebas Neue Bold font that is in the ZIP folder. It will be the file `BebasNeue Bold.otf`
	* Windows: Right-Click the font file and choose "Install".
	* Mac: Double-Click the font file. Click "Install".
	* Linux: you may need to "install" the font manually instead by copying it to `/usr/share/fonts` (to install it system-wide) or `~/.fonts` (to install it only for the current user) and executing `fc-cache -fv` in a terminal.
4. Open up Steam then open up the Steam Settings Window. Click on the Interface tab, and under the option that says *"Select the skin you wish Steam to use (requires Steam to restart)"*, click on the dropdown, and select *"Pressure-for-Steam-master"*. 
5. Now go ahead and restart the Steam client. The skin should now be applied. Have fun! :smile:

### Pro Tip™: Keep Pressure up-to-date via git

**Windows**
Using the GitHub application for Windows from [GitHub](https://windows.github.com) you'll be able to keep the skin up-to-date all the time.

**Mac**
You can install the Git application from [GitHub](https://mac.github.com) to keep the repo in sync without having to return to the site each time.

**LINUX**
If [git](https://git-scm.com/) is installed on your system you can also use that to download Pressure, which will allow you update it more easily. The following guide assumes that git is in your PATH.

1. Install the skin using git
   1. Open a command prompt / terminal.
   2. Go into your Steam skin folder (you can find it in step 2 of the tutorial above) by executing the command `cd "<your skin folder>"`
   3. Make sure you have write permissions in the skin folder and execute the command `git clone https://github.com/DirtDiglett/Pressure-for-Steam.git`
   4. Now continue with step 3 of the default tutorial above
2. Update the skin using git
   1. Open a command prompt / terminal.
   2. `cd` into your Steam skin folder (you can find it in step 2 of the tutorial above)
   3. Make sure you have write permissions in the skin folder and execute the command `git pull`
   4. Restart Steam
   

## Staying up-to-date with the skin's progress
We recommend staying up-to-date with the skin's progress, so that you can get updates on how the skin is coming along. To do that, make sure you join the ["Pressure" Skin group on Steam](http://steamcommunity.com/groups/pressureskin) by clicking on the link, signing into your Steam account, and clicking on the *"Join group"* button.





## Coding Practices
If you're providing code to add to the project please adhere to these coding practices to make it easier on everyone to collaborate efficiently. (I am working on converting all existing code to this).

**Spacing**
Indent all code via tabs rather than spaces.

**Ordering Styles**
When including styles for a control keep them in the following order:
```// Styling
bgcolor
selectedbgcolor
selectedtextcolor
shadowtextcolor
textcolor

// Font settings.
font-family
font-outerglow-color
font-outerglow-filtersize
font-outerglow-offset
font-size
font-style
font-weight

// Content-Additions
image

// Positioning
inset
inset-left
inset-top
inset-right
inset-bottom
minimum-height
minimum-width
padding-left
padding-top
padding-right
padding-bottom
```
Here is an example style that fits this:
```
TestStyle [!$OSX] {
   bgcolor=none
   selectedbgcolor=blue
   textcolor=red
   font-family=basefont
   font-size=15
   font-weight=400
   image="graphics/test"
   inset="5 10 10 5" // Left, Top, Right, Bottom
   minimum-width=10
   
   render {}   
   render_bg {}
}
```