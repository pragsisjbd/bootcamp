#!/bin/bash


CLUSTER_BASE_URL=http://bc1:7180/api/v1/clusters
CLUSTER=pragsisjbd
SERVICE=hive

STATUS_URL="${CLUSTER_BASE_URL}/${CLUSTER}/services/${SERVICE}"
CMD_URL="${STATUS_URL}/commands"

# sets user and pass
source ./AUTH

function error_quit()
{
	echo -e "$@" >&2
	exit 1
}

function run_cmd()
{
	curl -X POST -s -u "${CM_ADMIN_USER}:${CM_ADMIN_PASS}"  "${CMD_URL}/${1}" &> /dev/null
}



function get_status()
{
	curl -s -u "${CM_ADMIN_USER}:${CM_ADMIN_PASS}" "${STATUS_URL}"
}


function expected_status()
{
	get_status | grep -q --color=never "\"serviceState\" : \"${1}\""
}



### MAIN ###

test -n "` which curl`" || error_quit "Please install curl"


# Is it alive?

if ! get_status &> /dev/null ; then
	error_quit "Something seems wrog with the remote server ${server}. Please check conectivity or the server itself"
fi


if expected_status STOPPED ; then
	echo -n "The service is already stopped. "
elif expected_status STARTED ; then
	echo -n "Stopping ${SERVICE}@${CLUSTER}: "
elif expected_status STARTING || expected_status STOPPING ; then
	echo -n  "Service is in a change of state. Please wait and try again"
else
	error_quit "The service is in unknown state"
fi

# Send stop

run_cmd stop || error_quit "Something seems wrong with the remote server ${server}. Please check conectivity or the server itself. Could not issue command STOP"

TIMEOUT=30

while ! expected_status STOPPED
do
	echo -n "."
	sleep 1
	(( TIMEOUT-- ))

	test ${TIMEOUT} -eq 0 && break
done

if [[ ${TIMEOUT} -ne 0 ]] || expected_status STOPPED ; then
	echo "OK"
else
	error_quit "FAILED! ${SERVICE} is in unknown state ${STATE} after ${TIMEOUT} seconds. Quitting!"
fi


run_cmd start || error_quit "Something seems wrong with the remote server ${server}. Please check conectivity or the server itself. Could not issue command START"

echo -n "Starting ${SERVICE}@${CLUSTER}: "

TIMEOUT=30

while ! expected_status STARTED
do
	echo -n "."
	sleep 1
	(( TIMEOUT-- ))

	test ${TIMEOUT} -eq 0 && break
done

if test ${TIMEOUT} -ne 0 || expected_status STARTED ; then
	echo "OK"
elif expected_status STARTING || expected_status STOPPING ; then
	echo -n  "Service is in a change of state. Please wait and try again"
else
	error_quit "FAILED! ${SERVICE} is in unknown state after timeout. Quitting!"
fi

exit 0
