` ` `
* From the last lab, we have 1 GB (1000000000 rows =~ 1 TB). 
* We are going to create 50x that: 5000000000.
* Have to create 50GB of Teragen data with a 32 MB block size: -D dfs.block.size=$((32 * 1024 * 1024))
* Created my pragsisjbd handle and sudo'ing to that user now, not hdfs ('cause someone doesn't like seeing that...)
* forgot to 'time' it, killed it from commandline.
* rm'ed the output dir, cleared the Trash dir. Keep clean :)
* sudo -u pragsisjbd  time hadoop jar hadoop-examples.jar teragen -D dfs.block.size=$((32 * 1024 * 2014)) 5000000000 /user/pragsisjbd/teragen50GB/ . I always get the placement of -D opts. wrong
* Killed it again. Didnt' read that I had to create a cache pool first
* Reference: hdfs cacheadmin -addDirective -path <path> -pool <pool-name> [-force] [-replication <replication>] [-ttl <time-to-live>]
* sudo -u pragsisjbd hdfs cacheadmin -addDirective -path /user/pragsisjbd/teragen50GB -pool root -force -replication 1 -ttl never
	My pool, -force to ignore cache limits, replication to 1 (default) of the cache, and never because it never expires.
* I do not have a pool, so create one:
	hdfs cacheadmin -addPool <name> [-owner <owner>] [-group <group>] [-mode <mode>] [-limit <limit>] [-maxTtl <maxTtl>] (its an admin job!)
	sudo -u hdfs hdfs cacheadmin -addPool pragsisjbdPool 
	// -owner pragisjbd -group pragsisjbd -mode  0755 -limit "no limit by default" -maxTtl "time till expire of the data in this cache"
	sudo -u hdfs hdfs cacheadmin -addPool pragsisjbdPool -owner pragisjbd -group pragsisjbd -mode  0755
* Rerun now cacheadmin with the new pool:
	sudo -u pragsisjbd hdfs cacheadmin -addDirective -path /user/pragsisjbd/teragen50GB -pool pragsisjbdPool -force -replication 1 -ttl never
	Error: AccessControlException: Permission denied while accessing pool pragsisjbdPool: user pragsisjbd does not have WRITE permissions.
	sudo -u hdfs hdfs cacheadmin -modifyPool pragsisjbdPool -owner pragsisjbd (typo: pragisjbd -> pragsisjbd)
* Rerun cacheadmin, all fine now.
* Checked because was not sure: dfs.datanode.max.locked.memory. It is per DN (not absolute total).
* Didn't check ulimit -l. it is 64KB by default:
	 sudo -u hdfs /bin/bash -c "ulimit -l"
         64
* Have to change that. tmux to all nodes. edit /etc/security/limits.conf:
	hdfs	hard	memlock		4194304  # (4 * 1024 * 1024 KBs)
* Killed my MR once again. Start from scratch. remove the output.
* ulimit is applied to hdfs user. Restart it so it picks up the new limits.
* Limits are enforced by the agent (root) so there was no need :(
* Run MR again.
* hdfs cacheadmin -listDirectives -stats
Found 1 entry
 ID POOL             REPL EXPIRY  PATH                           BYTES_NEEDED  BYTES_CACHED  FILES_NEEDED  FILES_CACHED
  1 pragsisjbdPool      1 never   /user/pragsisjbd/teragen50GB              0             0             0             0
* Will check back while MR teragen is running
* IT IS tersort! I was thinking why I would cache the output (running *teragen* not terasort)
* Paste it in so I do not lose it again:
	Create a ~10 GB file using teragen
	Set the block size to 32 MB for this file
	Use the time command to record the job duration
	Run the terasort command against this file twice
	Use the time command to capture each run's duration
	Create a cache pool and directive for the teragen output before the first run
	Record your work, including:
	The teragen command you used to create your test file
	The commands you used to configure HDFS caching
	The time output for each job run
	Store and comment on these outputs in storage/labs/1_terasort_tests.md
	
* Kill the job.
* Waked up and reread the lab. Need 10GB data (10000000000)
* Kill again, the dfs.block.size is deprecated in favour of dfs.blocksize (output of MR) . Running now: 
	sudo -u pragsisjbd  time hadoop jar hadoop-examples.jar teragen -D dfs.blocksize=$((32 * 1024 * 2014))  1000000000 /user/pragsisjbd/teragen10G_32MB_blocks/
	9.33user 1.14system 20:18.43
*  hdfs cacheadmin -listDirectives -stats
Found 1 entry
 ID POOL             REPL EXPIRY  PATH                           BYTES_NEEDED  BYTES_CACHED  FILES_NEEDED  FILES_CACHED
  1 pragsisjbdPool      1 never   /user/pragsisjbd/teragen50GB              0             0             0             0
* Nada cached. Wrong output dir.
* Add the correct one to the new directive:
	# sudo -u pragsisjbd hdfs cacheadmin -addDirective -path /user/pragsisjbd/teragen10G_32MB_blocks/  -pool pragsisjbdPool -force -replication 1 -ttl never
	Added cache directive 2
	# Found 2 entries
	 ID POOL             REPL EXPIRY  PATH                                      BYTES_NEEDED  BYTES_CACHED  FILES_NEEDED  FILES_CACHED
	1 pragsisjbdPool      1 never   /user/pragsisjbd/teragen50GB                         0             0             0             0
	2 pragsisjbdPool      1 never   /user/pragsisjbd/teragen10G_32MB_blocks              0             0             0             0

* Rerun Teragen: 9.13user 1.11system 19:54.32
* Check cache: 
	# hdfs cacheadmin -listDirectives -stats
	Found 2 entries
	 ID POOL             REPL EXPIRY  PATH                                      BYTES_NEEDED  BYTES_CACHED  FILES_NEEDED  FILES_CACHED
	  2 pragsisjbdPool      1 never   /user/pragsisjbd/teragen10G_32MB_blocks   100000000000    6467485696             3             1
* HDFS is complaning of HDFS space. Unbalanced HDFS. Run balancer. Seen slow, change speed. Deployed the conf.
* Balanced.
* Rerun. Left behind data. HDFS is filling up. Deleted files (from trash too)
* Rerun Teragen for 10GB (had 100GB).
  sudo -u pragsisjbd  time hadoop jar hadoop-examples.jar teragen -D dfs.blocksize=$((32 * 1024 * 2014))  100000000 /user/pragsisjbd/teragen10G_32MB_blocks/	
  5.92user 0.69system 2:02.17
* Removed pool: sudo -u hdfs hdfs cacheadmin -removePool pragsisjbdPool	
* Re-added the pool as above (with admin privileges)
# hdfs cacheadmin -listDirectives -stats
  Found 1 entry
  ID POOL             REPL EXPIRY  PATH                                      BYTES_NEEDED  BYTES_CACHED  FILES_NEEDED  FILES_CACHED
  4 pragsisjbdPool      1 never   /user/pragsisjbd/teragen10G_32MB_blocks    10000000000   10000000000             3             3
  # first terasort: 9.16user 0.81system 3:26.47
* Second terasort: 
	8.45user 0.79system 3:23.30elapsed 4%CPU (0avgtext+0avgdata 185668maxresident)k
	288inputs+1184outputs (6major+68477minor)pagefaults 0swaps
	
