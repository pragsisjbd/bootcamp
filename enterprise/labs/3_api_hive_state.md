```
Start service: 
	curl -X POST -u ${CM_ADMIN_USER}:${CM_ADMIN_PASS} 'http://bc1:7180/api/v1/clusters/pragsisjbd/services/hive/commands/start'
Start service: 
	curl -X POST -u ${CM_ADMIN_USER}:${CM_ADMIN_PASS} 'http://bc1:7180/api/v1/clusters/pragsisjbd/services/hive/commands/stop'
Query status: 
	curl  -u ${CM_ADMIN_USER}:${CM_ADMIN_PASS} 'http://bc1:7180/api/v1/clusters/pragsisjbd/services/hive/'
```
