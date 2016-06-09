{
  "timestamp" : "2016-06-09T20:51:28.308Z",
  "clusters" : [ {
    "name" : "pragsisjbd",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_free_space_thresholds",
            "value" : "{\"warning\":10,\"critical\":8}"
          }, {
            "name" : "dfs_balance_bandwidthPerSec",
            "value" : "52428800"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "10568941568"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/data/dfs/jn/"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data/dfs/nn"
          }, {
            "name" : "dfs_namenode_handler_count",
            "value" : "32"
          }, {
            "name" : "dfs_namenode_service_handler_count",
            "value" : "32"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "KRpnjsJo77cUd9MSHqnuuAHksobFXN"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "1QeTwKBRCewuYDC0oy7ljzCvn6f3UY"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "dMlIP7nzGNhXP9yLiLhWUyIuoRyuoU"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-4236200278491138083ebfaf1d2e5344",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "3d4ace5b-99a7-41dd-923b-ddd052cb4c70"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-32f7b599d934e3ea9a89e88bfdf5d31d",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0199543c6e0893c99"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "b7239unzcixpocjwyxvirt5qh"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-3bf0b84eeb4753654247033d8ca50e9b",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "aa8ccb3d-9bfd-4d23-a2ed-82b5d82727d6"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "80k926wd1o1avtqx2l9z0f2w2"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-4236200278491138083ebfaf1d2e5344",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "3d4ace5b-99a7-41dd-923b-ddd052cb4c70"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dhuyk8h0gu8aprjzw7op44ilm"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-9ff7e8fe62883361b1895473a19bb056",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "c14242f5-b995-41ee-a88c-bc2e09aad398"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "klc8bq1955ar0hv9fhw47mj0"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-e7b7fbd50be9fb16b834807e17886c96",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "5359d82b-1323-4377-8272-6d9fdb739d58"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2l70cfhd1huqms89i1n22o6ci"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-383202a756567224b44c095be28449d8",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cijductr7oxf85xjtq462qtfl"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e7zxqpew9dzncmtltbtsxn4p3"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-383202a756567224b44c095be28449d8",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9mjz8a12d1qc43a83z4dvo19b"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "rwzlrwpyu0eq1c4xu1qzb8qa"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-e7b7fbd50be9fb16b834807e17886c96",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "5359d82b-1323-4377-8272-6d9fdb739d58"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1nmkx2pdn4lwvvilyy413vwj9"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-383202a756567224b44c095be28449d8",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "33"
          }, {
            "name" : "role_jceks_password",
            "value" : "37dl1tcxpbppymo58lc5d9rt5"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "70"
          }, {
            "name" : "role_jceks_password",
            "value" : "52q1l3eqiognrua9dosw3z0ke"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "10"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data/yarn/container-logs,/fatstore/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "5250"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "5250"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "4"
          } ]
        } ],
        "items" : [ {
          "name" : "cm_yarn_container_usage_input_dir",
          "value" : "/fatstore/tmp/cmYarnContainerMetrics"
        }, {
          "name" : "cm_yarn_container_usage_output_dir",
          "value" : "/fatstore/tmp/cmYarnContainerMetricsAggregate"
        }, {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "KdrynJ70cVviBeFxWFFCzuz2Sov0SU"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-383202a756567224b44c095be28449d8",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5uhdh0k4v4c87sdr2xzalap68"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-32f7b599d934e3ea9a89e88bfdf5d31d",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0199543c6e0893c99"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1tyghkt0wmq3kwolwr6ofqh33"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-3bf0b84eeb4753654247033d8ca50e9b",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "aa8ccb3d-9bfd-4d23-a2ed-82b5d82727d6"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bbf9lov5rw6q8b9nou3emkb6n"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-4236200278491138083ebfaf1d2e5344",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "3d4ace5b-99a7-41dd-923b-ddd052cb4c70"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d9us80j8a3z92yzjzj3aiuyf9"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-9ff7e8fe62883361b1895473a19bb056",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "c14242f5-b995-41ee-a88c-bc2e09aad398"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dz3lprls4m1ej7hf5m59hfmq0"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-e7b7fbd50be9fb16b834807e17886c96",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "5359d82b-1323-4377-8272-6d9fdb739d58"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "10gw2u17ga337nm0jjr8iv3rv"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-383202a756567224b44c095be28449d8",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "53"
          }, {
            "name" : "role_jceks_password",
            "value" : "46tm2967lg0orpb1o1dga95e8"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "2694840320"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "2694840320"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "912680550"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "153"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-15-177.eu-west-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_name",
          "value" : "hiveserver2"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "1L0v3My<u$7om3Rs"
        }, {
          "name" : "hive_metastore_database_user",
          "value" : "h2user"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8i7jz71x3n0gt3qtk2ua34dte"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2vbc48g426qgucot02d7phln6"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-383202a756567224b44c095be28449d8",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-04effc71984ad7742"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5mz9ssbgzs7y5s69iia75qm3v"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-c6dd83b868803fccb3b6c0a6f23820c7",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7ukid3ml70az5vbq2fhw8ndhn"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-e7b7fbd50be9fb16b834807e17886c96",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "5359d82b-1323-4377-8272-6d9fdb739d58"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "efqh8vo4xu85szn3g1zzirwob"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-15-177.eu-west-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "1L0v3My<u$7om3Rs0oz13"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozieuser"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-3bf0b84eeb4753654247033d8ca50e9b",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "aa8ccb3d-9bfd-4d23-a2ed-82b5d82727d6"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "589pmixrolwk4je53xr6qhu96"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-383202a756567224b44c095be28449d8"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-9ff7e8fe62883361b1895473a19bb056",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "c14242f5-b995-41ee-a88c-bc2e09aad398"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9kjl6tqxy5qse7wcneidxlqhs"
          }, {
            "name" : "secret_key",
            "value" : "uL4DGTozGSGQYVRv9SrJk2tMQChgbb"
          } ]
        }
      } ],
      "displayName" : "Hue"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-04effc71984ad7742",
    "ipAddress" : "172.31.15.171",
    "hostname" : "ip-172-31-15-171.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "de11cf1d-05eb-48fe-b601-b9d42a8940db",
    "ipAddress" : "172.31.15.172",
    "hostname" : "ip-172-31-15-172.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.9"
      } ]
    }
  }, {
    "hostId" : "3d4ace5b-99a7-41dd-923b-ddd052cb4c70",
    "ipAddress" : "172.31.15.173",
    "hostname" : "ip-172-31-15-173.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "5359d82b-1323-4377-8272-6d9fdb739d58",
    "ipAddress" : "172.31.15.174",
    "hostname" : "ip-172-31-15-174.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "c14242f5-b995-41ee-a88c-bc2e09aad398",
    "ipAddress" : "172.31.15.175",
    "hostname" : "ip-172-31-15-175.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "aa8ccb3d-9bfd-4d23-a2ed-82b5d82727d6",
    "ipAddress" : "172.31.15.176",
    "hostname" : "ip-172-31-15-176.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-0199543c6e0893c99",
    "ipAddress" : "172.31.15.177",
    "hostname" : "ip-172-31-15-177.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.9"
      } ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__21054c44-2ca8-44f0-accb-0584a5b3db5c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "b05d97723051e80b6c7e5eb429fcd6124919ae36f622fdb13e8bcc3b0016bcd2",
    "pwSalt" : -3025008165369753270,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "e3c28866d08cfe3e5c07e6eda35a6e3f93124d101bf125aa43cc05718fb15fee",
    "pwSalt" : -1427611691498216851,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-32f7b599d934e3ea9a89e88bfdf5d31d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "a99d30b4dc8961194ab02355bccc4b2cf1288a0133effd3019bb4ca98447d836",
    "pwSalt" : -682270806951647975,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "0348fb663baf930fc9fc7148d14b50919952c9649ce0f057a269b281df5d3c3e",
    "pwSalt" : 1777575020972885263,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-32f7b599d934e3ea9a89e88bfdf5d31d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "e25524f6c945e9f9da4d136fa386b8419b86f06c736ede14f0a7945411e989a4",
    "pwSalt" : 4313694406451987161,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d34c3cb92a26f497331ac031737b2585f6046e117700067b01e76a22bbd84573",
    "pwSalt" : -790646237630288092,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "6b658e06404372df9e0dab8f3662767fb162504565fd9bf2c4d965a219f78e88",
    "pwSalt" : -2637383563236852337,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "a0da22270357f80017b8bcee6c26d776ad68f147ce208c4e10c4f496e98569d4",
    "pwSalt" : -2639061970595182925,
    "pwLogin" : true
  }, {
    "name" : "pragsisjbd",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "ab6ec01ab67caa0ea2b3b16186280dc4d75c19b5f36307d964856e0636741bc8",
    "pwSalt" : 372867662997795761,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.7.1",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160512-1642",
    "gitHash" : "a63aad733ffbabf333328eaff85c221abad352cd",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_name",
          "value" : "cmf"
        }, {
          "name" : "firehose_database_password",
          "value" : "1923847gQIUW4987134021tg01293587"
        }, {
          "name" : "firehose_database_user",
          "value" : "cmfuser"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/fatstore/var/lib/cloudera-host-monitor"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_name",
          "value" : "cmf"
        }, {
          "name" : "headlamp_database_password",
          "value" : "1923847gQIUW4987134021tg01293587"
        }, {
          "name" : "headlamp_database_user",
          "value" : "cmfuser"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/fatstore/var/lib/cloudera-service-monitor"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "8l86dcjaixgwz2u55yewjh72f"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "e6u3fx6uksdpzh7e1se182vor"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "eventserver_index_directory_free_space_absolute_thresholds",
          "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
        }, {
          "name" : "eventserver_index_directory_free_space_percentage_thresholds",
          "value" : "{\"warning\":2,\"critical\":1}"
        }, {
          "name" : "role_jceks_password",
          "value" : "83tz9mlv07izufhcj1wpwj0hy"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "6klxkphh8j790xmgtn8fukhni"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "reportsmanager_scratch_directory_free_space_absolute_thresholds",
          "value" : "{\"warning\":2147483648,\"critical\":1073741824}"
        }, {
          "name" : "reportsmanager_scratch_directory_free_space_percentage_thresholds",
          "value" : "{\"warning\":\"never\",\"critical\":80}"
        }, {
          "name" : "role_jceks_password",
          "value" : "ad4ujc6sdhyq1pvo40re1vfvy"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-32f7b599d934e3ea9a89e88bfdf5d31d",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-0199543c6e0893c99"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "ef5gpseuskm71uxnp03nogztd"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/24/2012 2:50"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}