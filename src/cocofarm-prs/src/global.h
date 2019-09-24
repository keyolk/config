/**
 *	@file	global.h
 *	Global header.
 *	@author	sunno\@nhn.com
 *	@author dshyun\@nhn.com
 *	@author	anmerong\@nhn.com
 *	@author	joo-kyung.kim\@nhn.com
 *	@date	2006. 5.
 *	@remark
 *	- Copyright	2006-2009 NHN Corp. All Rights Reserved.
 */

#define	_FILE_OFFSET_BITS	64

#include <uf/http.h>
#include <uf/macros.h>
#include <uf/map.h>
#include <uf/string.h>
#include <uf/text.h>
#include <uf/xml.h>
#include <uf/etc.h>
#include <uf/filter.h>
#include <cocas/cocas.h>
#include <stdio.h>
#include <unistd.h>
#include <ctype.h>

// Handlers
int search(request_rec * r);

// View
int view_nx_revision1(request_rec *r, UfXmlElement *);
