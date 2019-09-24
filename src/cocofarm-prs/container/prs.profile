#!/bin/bash

# include Container ENV value
. /etc/environment

# ----------------------------------------------
# Container ENV
# ----------------------------------------------
SERVICE=cocofarm-prs
SERVICE_ID=111
SERVICE_PORT=20000
SSUID=cocofarm
ROLE=prs
QA_HOSTS="cnd904 cnd905 cnd906 cnd907"
DEV_HOSTS="cnd901 cnd902 cnd908 cnd909"
TEST_URL="search.naver"
REPO=${CCF_REPO}/cocofarm/cocofarm-prs
CONTAINERDIR="$(pwd)/container"

PREFIX=/naver/${SERVICE}
BIN_DIR=${PREFIX}/bin
ETC_DIR=${PREFIX}/etc
HTDOCS_DIR=${PREFIX}/htdocs
VAR_DIR=${PREFIX}/var
HTTPD_PIDFILE=${VAR_DIR}/httpd.pid
LOG_DIR=${VAR_DIR}/log
CORE_DIR=${VAR_DIR}/core

function        is_running_httpd ()
{
        local   PID START=$SECONDS
        while   true
        do      if [[ -z $PID ]]
                then    exec    3<&2-
                        PID=`<$HTTPD_PIDFILE`
                        exec    2<&3-
                fi
                [[ -n $PID && -d "/proc/$PID" ]] && { [[ $2 == ! ]] || break ; } || { [[ $2 == ! ]] && break ; }
                sleep 0.2
                [[ $(($SECONDS-$START)) -lt ${1:-0} ]] || return
        done
}
