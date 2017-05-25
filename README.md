# My git utils

This isn't anything overly complicated.  It just conatins my .gitconfig file and the external scripts which are called
 using aliases.  I'm not a shell script expert by any stretch of the imagination so there are probably better ways to do
this kind of thing.. This remote repo exists primarily to test the emergency script (which contains a push).  Carefully 
considered feedback is welcome of course.

The .gitconfig file adds the following aliases which if copied to the home directory will be available throughout the 
system:

ls: Displays the git log in a prettier format than the log command provides.

visual: Fires up gitk without tying up the current command prompt.

prune-all: Locally prunes all remote branches no longer on the remote repo (does not delete local branches, just 
their refrences when running git branch -r).

emergency: Stages, commits (with emergency message), and pushes to origin the current branch.  Useful when needing to 
evacuate one's current location.

## Instructions

The scripts are intended to be used on Unix/Linux/MacOS but have only been tested on MacOS.  Simply clone the repo into

    ~/gitScripts

Then copy the .gitconfig contents into the user's .gitconfig file.

Once the files are in place, just use one of the aliases listed above

    git <alias name>
