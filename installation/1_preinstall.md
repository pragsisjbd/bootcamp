Find a repo for Centos 6.5 for Mysql5.5.
	wget http://rpms.remirepo.net/enterprise/remi.repo
	yum --enablerepo=remi install mysql-server
	Got a valid conf from the examples of the package. Copied it into /etc/my.cnf.d/ because it overrides. Went for the smallest to start with.
	Made sure binlogging is enabled, the machines have server-id, and type to row
	Started mysql
	/usr/bin/mysql_secure_installation. Checked I can access with new admin perms
	created cmf database and created a unique user with full privileges over it
	Missed the replication, so I'll have to create a dump, after install on bc2:
		* used same conf (changed server-id)
		* access as a slave now, no user creation
		* created a dump on bc-1 pushed it to bc-2. Noone is writing/reading
		* configured replication user
		* started replication and checked it is working



Install Cloudera repo (on bc1)
	http://archive.cloudera.com/cm5/redhat/6/x86_64/cm/cloudera-manager.repo, yum --enablerepo=remi install mysql-server
	install jdk (Oracle's)
	install Java connector
	install cloudera-manager-{server,agent}
	configure config.ini
	when creating the database, created on the slave and now the master hangs. Reinstall with redump "fast path".
	Reinstalled, with the same conf as above.
	Did not see python26 dependency, yet running (python *is* there)
	host checks passed except for hostname reverse resolution. Change to FQDN (not short alias). Host inspector now hangs and says it cannot run.
	In the end it hangs, and breaks completely, hanging CM:
	Error creating bean with name 'newServiceHandlerRegistry' defined in class path resource [com/cloudera/server/cmf/config/components/BeanConfiguration.class]: 
	Instantiation of bean failed; nested exception is org.springframework.beans.factory.BeanDefinitionStoreException: Factory method 
	[public com.cloudera.cmf.service.ServiceHandlerRegistry com.cloudera.server.cmf.config.components.BeanConfiguration.newServiceHandlerRegistry()] threw exception; 
	nested exception is java.lang.IllegalStateException: BeanFactory not initialized or already closed - call 'refresh' before accessing beans via the ApplicationContext
	nscd caching + CM issues?
	Started again after rebooting the 2 services. All fine, but my nodes are registered, so I have to go to homescreen
	again space alerts. No change in sizing of the volumes, still 8GB. Created another volume to move away what I can. First candidate, parcels.
	mv /opt/cloudera/ /fatstore/ && cd /opt/ && ln -s /fatstore/cloudera
	sync
	installed monitoring a node. Created the data dir on the fatdisk
        time for HDFS. New volumes dedicated for that on all nodes (just in case for now). SHould grow volumess
	mounted on /data
	set failed disks to 0
	only one DN dir /data (CM picked up fat aswell)
	same with yarn.nodemanager.local-dirs. The tmp dirs are now under /fatstore too
	resize2fs the root filesystem. Changed a lot of warning thresholds
	Resized.
	All Green.
	

	

		

