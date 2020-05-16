fake-uname
===========
on some linux kernel,run chroot to a new linux rootfs,will get "kernel too old" error


This is a LD_PRELOAD library that hooks the uname function and changes the
release  to be the environment "MYKERVER". if no environment MYKERVER ,set release to 5.0

This exists to allow one to force pip to use a particular machine type when
creating wheels.

Usage
-----

LD_PRELOAD=/path/to/libfakeuname.so [command]

Credit
------

Stolen from https://geekscloud.wordpress.com/2012/09/06/faking-output-of-uname-command/

License
-------

Unknown
