# buildbalancer
Scripts to spread and load balance batch-like jobs from users' hosts to clusters or pools of servers via ssh

Each host needs to share a common filesystem, NFS mounted (write), which contains files which govern which
hosts are in which queues, and how many jobs are currently running on each host.  

The NFS mount is the single point of failure, and so it is recommended that a high available network
appliance of some sort is used (ie: NetApp, EMC, FreeNAS on high-available hardware, etc).   
