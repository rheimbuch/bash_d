# In Ur Home, Mungin' Ur Bazsh #

This is how I manage my bash startup scripts and configs. 
It works for me, but may (and probably will) break for other people.
Use at your own risk.


## Setup ##

1. `cd $HOME`

2. Checkout the bash.d repository:
    * `git clone git://github.com/rheimbuch/bash_d.git .bash.d`

3. **Backup your current bash startup scripts**
    * `mv .profile .profile.bak`
    * `mv .bash_profile .bash_profile.bak`
    * `mv .bashrc .bashrc.bak`
    * `mv .bash_logout .bash_logout.bak`

4. Symlink the startup scripts from .bash.d
    * `ln -s .bash.d/core/login.sh .profile`
    * `ln -s .bash.d/core/logout.sh .bash_logout`
    * `ln -s .bash.d/core/non-interactive.sh .bashrc`
    
5. Copy your backup bash scripts into .bash.d:
    * `cp .profile.bak .bash.d/all/dot_profile.sh`
    * `cp .bashrc.bak .bash.d/all/dot_bashrc.sh`
    * etc...
    Although you may wish to break up your scripts into individual
    scripts that perform a single task. The .bash.d/all/ directory 
    contains the files I use in my OSX bash shell.

6. Start a new bash shell!


## About the bash.d directory structure ##

* .bash.d/
    * core/ : main startup scripts, shouldn't need to edit
    * all/ : scripts that will be loaded on startup by all bash shells
    * login/ : scripts that will only be loaded by interactive login shells
    * non-interactive/ : loaded when bash runs without user interaction (shell scripts, etc)
    * logout/ : scripts that should run on user logout