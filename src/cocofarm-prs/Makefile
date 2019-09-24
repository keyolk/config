
.SUFFIXES : .csp

SERVICE_DIR = /naver/cocofarm-prs
BIN_DIR     = $(SERVICE_DIR)/bin
ETC_DIR     = $(SERVICE_DIR)/etc
LIB_DIR     = $(SERVICE_DIR)/lib
HTDOCS_DIR  = $(SERVICE_DIR)/htdocs
OPT_DIR     = $(SERVICE_DIR)/opt
SBIN_DIR    = $(SERVICE_DIR)/sbin
LOG_DIR     = $(SERVICE_DIR)/var/log
CORE_DIR    = $(SERVICE_DIR)/var/core

HTTPD_DIR   = /naver/search-env/package/httpd-2.4.39-nx-arch-x86_64
UF_DIR      = /naver/search-env/package/udk-3.14.0-arch-ap24-x86_64
CSPC_DIR    = $(UF_DIR)/bin

INCS    = -I$(HTTPD_DIR)/include -I$(UF_DIR)/include
LIBS    = -L$(UF_DIR)/lib -luf -lc -lz -lssl -lcrypto -ljosa

CC      = gcc -Wall -g -std=gnu99 -fno-builtin-printf
CFLAGS  = -fPIC $(INCS) -D_LARGEFILE64_SOURCE
LDFLAGS = -shared

OBJECTS = src/controller.o

TARGET		= search.naver

DEBUG		= -DDEVEL -DDEBUG
DEBUGFLAGS	= $(DEBUG)

DEFINES		=  -D_GNU_SOURCE
DEFINES		+= -D_HTML_COMPACT
DEFINES		+= -D_NEW_FILE_ICON
DEFINES		+= -D_USE_GDID


.c.o:
	$(CC) $(CFLAGS) $(DEBUGFLAGS) $(DEFINES) -c $< -o $@

.csp.c:
	$(CSPC_DIR)/cspc $< -o $@

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) $(DEBUGFLAGS) $^ -o $@ $(LIBS)

install: clean all copy


copy:
	cp -a --remove-destination $(TARGET) ./container/$(TARGET)
	-$(COCOFARM) install

tail:
	docker -H cnd904 exec -it cocofarm-prs tail -f /naver/cocofarm-prs/var/log/error


gdb:
	docker exec -it cocofarm-prs gdb /naver/cocofarm-prs/bin/httpd /naver/cocofarm-prs/var/core/core


# devel
dinstall: clean dall check tags dstop dcopy dstart dtail
dall: DEBUGFLAGS=$(DEBUG)
dall: $(TARGET)
dstop: stop
dcopy: copy
dstart: start
dtail: tail

clean:
	rm -rf tags
	rm -rf $(OBJECTS)
	rm -rf $(TARGET)
	rm -rf view*.c
	rm -f ./container/$(TARGET)

-include /naver/cocofarm/lib/cocofarm-prs.sm.mk
