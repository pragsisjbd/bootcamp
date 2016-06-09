``` 
* What is ubertask optimization?
 An uberized task is one that whose input is small than one block and it is not executed on MR because the overhead of deploying it 
 is more than the time to run. It is run inside the AM. Vals:
		mapreduce.job.ubertask.{enable,maxmaps,maxreduces,maxbytes}

* Where in CM is the Kerberos Security Realm value displayed?
	Administration -> Security -> Kerberos Credentials -> Configuration 

* Which CDH service(s) host a property for enabling Kerberos authentication?
  All those that have Kerberos integration need a Kerberos Principal: HDFS, Hive, Oozie, Hue, CMS, YARN.

* How do you upgrade the CM agents?
  Hosts -> Run Upgrade wizard

* Give the tsquery statement used to chart Hue's CPU utilization?
  select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName = Hue.

  Go to Hue's status page, select a chart, clock on the wheel on the top right corner of the chart -> Open in Chart Builder     

* Name all the roles that make up the Hive service
  MetaStore service, Hive Server2 and GW.

  It later depends on YARN and HDFS and Zookeeper.

* What steps must be compelted before integrating Cloudera Manager with Kerberos?

  - Set up a working KDC
  - The KDC should be configured to have non-zero ticket lifetime and renewal lifetime
  - OpenLdap client libraries should be installed on the Cloudera Manager Server host if you want to use Active Directory. Also, Kerberos client libraries should be installed on ALL hosts. Installing 
	¬ openldap-clients on the Cloudera Manager Server host
	¬ krb5-workstation, krb5-libs on ALL hosts
  - Cloudera Manager needs an account that has permissions to create other accounts in the KDC

```  
