Pressure for Steam
==================
Pressure is a skin for Valve's Steam client that seeks to improve the visuals and aesthetics of Steam beyond the default skin.

Pressure for Steam is currently a Work-In-Progress so expect it to change a lot between now and the official public release of the skin. Pressure is currently in BETA so expect bugs. Please report them on the Issues page.
### IMPORTANT
It is extremely important you follow the instructions below, and absolutely critical that you install ALL the fonts in the fonts folder or this skin will not look as intended. FontFabric have generously given me permission to include it in the Git Download so you can install it there or via their website.
You must also ensure that you are using the current BETA version of Steam, as otherwise this skin will not work correctly. You can do this by going into Steam Settings, Choose Account on the left and on the right click "Change..." under the BETA Participation and opt-in to Steam Beta. After restarting Steam you'll be ready for Pressure.

### Images (As of 4th April 2015)
Here are a couple images of the skin. The look and feel of the skin can change at any time, so what you see in these images might not be what you see when you download the skin.
* [**Game Details**](http://hydra.tf/pressure/images/pressure.png)
* [**Grid View**](http://hydra.tf/pressure/images/pressure-grid.png)
* [**In-Game Overlay**](http://hydra.tf/pressure/images/overlay.png)
* [**Friends List, Chat**](http://hydra.tf/pressure/images/friends-and-chat.png)
* [**Download Page**](http://hydra.tf/pressure/images/pressure-downloadpage.png)
## Downloading and Installing
Because the skin is still in development, you can only download the skin here on GitHub until the skin is ready for the public to download.  To do that, just follow these steps:

1. Click on the *"Download ZIP"* button under the *"Clone in Desktop"* button on this GitHub page. That will download the skin's files as well as the font you need to install for the skin to display properly.
2. Extract the files in the ZIP folder to:
	* Windows: the `Program Files (x86)/Steam/skins` folder
	* Mac: right-click `Steam.app` and choose `show package contents` then go to - `/Contents/MacOS/skins`
	* Linux: the `~/.local/share/Steam/skins/` folder
   * Ubuntu: the `~/.steam/skins` folder
3. You should also go ahead and install all of the fonts that are in the `font - INSTALL THESE FIRST` folder.
	* Windows: Right-Click the font file and choose "Install".
	* Mac: Double-Click the font file. Click "Install".
	* Linux: If a graphical font viewer is installed on your system you will most likely be able to install the fonts easily using that program. Otherwise you need to “install” the fonts manually by copying them to `/usr/share/fonts` (to install them system-wide) or `~/.fonts` (to install them only for the current user) and executing `fc-cache -fv` in a terminal.
4. Open up Steam then open up the Steam Settings Window. Click on the Interface tab, and under the option that says *"Select the skin you wish Steam to use (requires Steam to restart)"*, click on the dropdown, and select *"Pressure-for-Steam-master"*.
5. Now go ahead and restart the Steam client. The skin should now be applied. Have fun! :smile:

### Pro Tip™: Keep Pressure up-to-date via git
#### Windows
Using the GitHub application for Windows from [GitHub](https://windows.github.com) you'll be able to keep the skin up-to-date all the time.
#### Mac
You can install the Git application from [GitHub](https://mac.github.com) to keep the repo in sync without having to return to the site each time.
#### Linux
First you need to make sure git is installed on your system (usually using your distribution’s package manager). Then you can use the usual procedure to “download” and update the skin, which is outlined below:
- **Installing the skin using git**
   1. Open a terminal.
   2. Go into your Steam skin folder using `cd ~/.local/share/Steam/skins/`
   3. Run the command `git clone https://github.com/DirtDiglett/Pressure-for-Steam.git`
   4. Now continue with step 3 of the default tutorial above
- **Updating the skin using git**
   1. Open a terminal.
   2. Go into your Steam skin folder using `cd ~/.local/share/Steam/skins/`
   3. Run the command `git pull`
   4. Restart Steam
  

## Staying up-to-date with the skin's progress
We recommend staying up-to-date with the skin's progress, so that you can get updates on how the skin is coming along. To do that, make sure you join the ["Pressure" Skin group on Steam](http://steamcommunity.com/groups/pressureskin) by clicking on the link, signing into your Steam account, and clicking on the *"Join group"* button.


## Coding Practices
If you're providing code to add to the project please adhere to these coding practices to make it easier on everyone to collaborate efficiently. (I am working on converting all existing code to this).
**Spacing**
Indent all code via tabs rather than spaces.
**Ordering Styles & Controls**
When including styles for a control keep them in the following order. The mantra is 'Width before Height, Clockwise in position starting Left". So X then Y, Left Top Right Bottom.
```
// Styling
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
// Content-Additions
image
```
Here is an example style that fits this:
```
TestStyle [!$OSX] {
   bgcolor=none
   selectedbgcolor=blue
   textcolor=red
   font-family=basefont
   font-size=15
font-size=14 [$LINUX]
   font-weight=400
   image="graphics/test"
   inset="5 10 10 5" // Left, Top, Right, Bottom
   minimum-width=10
  
   render {}  
   render_bg {}
}
```
And for controls:
````
name
control
region
start
align
x
y
width
height
margin
dir
spacing
overflow
end-right
````
