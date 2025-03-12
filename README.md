# Arch-update-script
> Easily update programs and operating system of Arch based operating systems. 

## Supported Operating Systems

Any Arch based distro. 

## How to
1. If you haven't already done so create a local bin directory:
    ```sh
    cd ~/
    ```
    ```sh
    mkdir bin
    ```

2. Add your bin directory to your path. Edit your ```.bashrc``` or ```.profile``` file (whichever you prefer, I prefer the ```.profile```) to add in ```~/bin``` to your path. 

    This step may not be necessary on if you're using a fairly recent Ubuntu version as they include the ```~/bin``` directory in your ```$PATH```.

    You can check your ```.profile``` contains the following:
    ```
    # set PATH so it includes user's private bin if it exists
    if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fi
    ```
    If not just add it in.

3.  If required, reboot your computer or force bash to re-read ```~/.profile```:

    ```exec -l bash```
    
4. Change directories to your private bin if you're not there already:
    ```cd ~/bin```
    Clone my script from the repository:
    ```git clone https://github.com/sampablo22/Arch-update-script.git```
    
5.  Mark the file as executable:
    ```chmod +x update_Arch.sh```
    
6. Make a symlink from the script to the bin folder:

    ```ln -s ~/bin/Arch-update-script/update_Arch.sh ~/bin```

7. Now you can run the script from anywhere with:
    ```./update_Arch.sh```

## Issues
If there are any problems please let me know by [raising an issue] on GitHub and I'll get back to you ASAP. If you have any suggestions for changes please let me know and I'll see if I can implement them. 

## License
This script is free and may be redistributed and modified under the terms specified in the [license].

[license]: https://github.com/sampablo22/Arch-update-script/blob/main/LICENSE
[raising an issue]: https://github.com/sampablo22/Arch-update-script/issues
