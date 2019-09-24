/**	@file	controller.c
 *	Cocas controller.
 *	@author sunno\@nhn.com
 *	@author dshyun\@nhn.com
 *	@author anmerong\@nhn.com
 *	@author joo-kyung.kim\@nhn.com
 */

#include "global.h"


int ccs_Initialize(server_rec *r, apr_pool_t *p)
{
	return OK;
}

int ccs_Header(request_rec *r)
{
	return OK;
}

int ccs_Body(request_rec *r)
{
	return search (r);
}

#define CCF_HOSTS			"@/naver/cocofarm-prs/etc/hostlist:5"

int search (request_rec *r)
{

	UfHttp *theHttp =	uf_http(r->pool, CCF_HOSTS, 21481, 10, 10, 1) ;
	if (theHttp == NULL) {
		ap_log_rerror(APLOG_MARK, APLOG_ERR, 0, r, "%s: uf_http returned NULL", __FUNCTION__);
		return 0;
	}

	UfHttpResponse * rspnd = uf_http_request(r->pool, theHttp, "/v1/search/cafearticle.json?query=go&display=10&start=1&from=demo", NULL, NULL, 0);
	if (rspnd == NULL || rspnd->status != 200)
	{
		if (rspnd == NULL)
			ap_log_rerror(APLOG_MARK, APLOG_ERR, 0, r, "uf_http_request return NULL for %s", "/");
		else
			ap_log_rerror(APLOG_MARK, APLOG_ERR, 0, r, "uf_http_request response status is %d for %s, message: %s", rspnd->status, "/", rspnd->error);
		return 1;
	}

	uf_web_set_content_type(r, "application/json; charset=UTF-8");
	printf("%s\n", rspnd->body);

	uf_web_flush(r);

	return 0;
}

int ccs_Finalize(server_rec *r, apr_pool_t *p)
{
	return OK;
}
