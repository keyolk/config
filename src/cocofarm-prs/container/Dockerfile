FROM	registry.navercorp.com/cocofarm/base-prs:ap24-centos7
LABEL	maintainer=chanhun.jeong@navercorp.com

ENV	SERVICE_NAME=cocofarm-prs \
	SERVICE_PORT=80 \
	SSUID=cocofarm \
	ROLE=PRS

EXPOSE	80

RUN	ln -fs /naver/BASE-PRS /naver/cocofarm-prs && \
	ln -fs /naver/cocofarm-prs /naver/search-prs/cocofarm

COPY	httpd.conf prs.profile logiss.yml /naver/BASE-PRS/etc/
COPY	init.sh /etc/cron.init/init.sh
COPY	mod_nxresolv-0.2.5-arch-ap24-x86_64.so /naver/BASE-PRS/lib/mod_nxresolv.so
COPY	mod_log_info-1.1.1-arch-ap24-x86_64.so /naver/BASE-PRS/lib/mod_log_info.so

COPY	search.naver /naver/BASE-PRS/lib/

# for irteam permission
RUN	chown -R irteam:irteam /naver/  && \
	chmod go-w /naver/BASE-PRS/etc/logiss.yml
