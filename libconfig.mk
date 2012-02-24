### libxbee internal configuration options:
### it is recommended that you DO NOT change this file

LIBMAJ:=        3
LIBMIN:=        0
LIBREV:=        3

LIBOUT:=        libxbee

LIBS:=          rt pthread

SRCS:=          ll ver prepare xbee pkt conn error frame mode thread log tx rx \
                xsys net net_handlers net_callbacks

MODELIST:=      xbee1 xbee2 net

SYS_HEADERS:=   xbee.h
RELEASE_FILES:= HISTORY LICENSE README

VER_DEFINES=    -DLIB_REVISION="\"$(LIBFULLREV)\""                             \
                -DLIB_COMMIT="\"$(shell git log -1 --format="%H")\""           \
                -DLIB_COMMITTER="\"$(shell git log -1 --format="%cn <%ce>")\"" \
                -DLIB_BUILDTIME="\"$(shell date)\""
