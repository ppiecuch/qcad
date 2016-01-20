include(../../../shared.pri)

r_static_libs {
    CONFIG += staticlib
	DESTDIR = $$PWD/../../../bin-$$[QMAKE_SPEC]/$$ROUTDIR
} else {
	CONFIG += plugin
	DESTDIR = $$PWD/../../../bin-$$[QMAKE_SPEC]/plugins
}

CONFIG      += plugin
TARGET      = transactionlistener

TEMPLATE    = lib
HEADERS     = TransactionListenerPlugin.h
SOURCES     = TransactionListenerPlugin.cpp
LIBS 		+= -lqcadcore -lqcadgui -lqcadentity -lqcadecmaapi -lopennurbs -lzlib
