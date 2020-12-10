## uscreen: Simplified wrapper to screen terminal multiplexer 

uscreen: unique screen name

This utility is a simplified wrapper to screen terminal multiplexer. 

To learn more about screen terminal multiplexer visit,

	https://www.gnu.org/software/screen/manual/screen.html


### How to use this utility?

##### Syntax:

	$uscreen <screen name>

##### Example 1:

	$uscreen myscreen

###### This option does the following, 
	
		1. Attach to screen named ( myscreen ) if it exists
 		2. Create a screen named ( myscreen ) if it doesn't exist
		3. If multiple screen exist 
			-> ( if user say Y ) all old screens can be terminated and new screen will be created
			-> ( if user say n ) no action will be taken

##### Example 2:

	$uscreen myscreen force

###### This option does the following, 
	
	1. if there are multiple screens, terminsta all old screens and create new screen
	2. if only one screen exist, it attach to the screen
	3. if no screen exist, a new screen will be created

### How to install this package?

	1. git clone <repo>
	2. cd src/
	3. chmod +x install.sh
	4. sudo ./install.sh

### Supported Platform

	This utility is supported in Linux and Mac OSX.

