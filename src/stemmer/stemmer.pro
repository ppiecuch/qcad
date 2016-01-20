include( ../../shared.pri )
SOURCES = \
    RStemmer.cpp
HEADERS = \
    RStemmer.h

TEMPLATE = lib
r_static_libs {
    CONFIG += staticlib
} else {
	CONFIG += plugin
}

TARGET = qcadstemmer
LIBS += -lstemmer
OTHER_FILES += stemmer.dox
DEFINES += QCADSTEMMER_LIBRARY

POST_TARGETDEPS += $$PWD/../../bin-$$[QMAKE_SPEC]/$$ROUTDIR/$${RLIBPRE}stemmer$${RLIBPOST}
