<h2>SYSINFO</h2>

Script is based on linux system files from paths ```/proc/diskstats``` and ```proc/loadavg```. These files containes info about the current system I/O operations. We can extract from these files current speed of writting and reading operations and current system loadage. The scirpt is giving info about this speed each second.

I also made some graphical interface by bash utitlities - tput and printf. These graphs are not responsive, so resizing TTY to small size can corrupt the script. I would also advice to prompt ```clear``` in TTY before executing the script.

<br>

![programme usage in ubuntu 16.04 TTY](https://preview.ibb.co/cjeWvd/sysinfo.png)

<i>programme usage in ubuntu 16.04 TTY</i>
