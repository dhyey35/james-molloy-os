# james-molloy-os
Repo of James Molloy OS Tutorial 

To run the OS follow the [Environment Setup](http://www.jamesmolloy.co.uk/tutorial_html/1.-Environment%20setup.html) then 
run `all_run.sh` file.

When the Bochs prompt appears enter `continue`. Now the OS should boot successfully.

**Common Errors:**

`losetup: floppy.img: failed to set up loop device: Device or resource busy`

*Solution*:
`sudo umount /dev/loop0 && sudo /sbin/losetup -d /dev/loop0`
