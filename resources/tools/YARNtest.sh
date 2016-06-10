#!/bin/sh
# Confirm the path values given below correspond to your installation

#HADOOP_MR=/opt/cloudera/parcels/CDH-5.7.0-1.cdh5.7.0.p0.45/lib/hadoop-0.20-mapreduce
#HADOOP_PATH=/opt/cloudera/parcels/CDH-5.7.0-1.cdh5.7.0.p0.45/bin

# CDH is symlinked to the current running version
HADOOP_MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP_PATH=/opt/cloudera/parcels/CDH/bin


LOG=${0}.log

# Move to the dir where this lives. It will need write perms for the dummy user that is used to run the M/Rs
cd ${0%%/*}

# We have to force time to the binary. The shell builtin doesn't accept the -o param to send the timings to a log
#[root@ip-172-31-15-177 ~]# which time
#/usr/bin/time
#[root@ip-172-31-15-177 ~]# type time
#time is a shell keyword



# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 1 2 4 8 16 24 32
do
   # Reducer containers
   for j in 1 2 4 8 16 24 32
   do
      # Container memory
      for k in 512 1024
      do
         # Set mapper JVM heap
         MAP_MB=`echo "($k*0.8)/1" | bc`

         # Set reducer JVM heap
         RED_MB=`echo "($k*0.8)/1" | bc`

	 echo "Running with ${i} mapper containers, ${j} reducer containers, ${k} container memory, ${MAP_MB} mapper JVM heap, ${RED_MB} reducer JVM heap" >> ${LOG}
	 echo "Running Teragen: " >> ${LOG}
         /usr/bin/time -a -o ${LOG}  sudo -u pragsisjbd  $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     100000 /user/pragsisjbd/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err

	 echo "Running Terasort: " >> ${LOG}
         /usr/bin/time -a -o ${LOG}  sudo -u pragsisjbd $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
	             /user/pragsisjbd/results/tg-10GB-${i}-${j}-${k}  \
                     /user/pragsisjbd/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err

        sudo -u pragsisjbd $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/pragsisjbd/results/tg-10GB-${i}-${j}-${k}
        sudo -u pragsisjbd $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/pragsisjbd/results/ts-10GB-${i}-${j}-${k}
      done
   done
done

echo Testing loop ended on `date`
