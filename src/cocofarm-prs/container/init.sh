#!/bin/bash -x

# container initial 시점 동작을 정의한다.

. /etc/environment

SVR_DIR=/naver/$SERVICE_NAME

# for palantir search-prs setting
function todo ()
{
	echo "${CLUSTER_TYPE} setting"
}

#코코팜 cluster type 별 분기
case ${CLUSTER_TYPE} in
	service)
		;;
	staging|devel|demo|test)
		todo
                ;;
        *)
                ;;
esac
