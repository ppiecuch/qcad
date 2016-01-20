include(../../../shared.pri)

r_static_libs {
    CONFIG += staticlib
	DESTDIR = $$PWD/../../../bin-$$[QMAKE_SPEC]/$$ROUTDIR
} else {
	CONFIG += plugin
	DESTDIR = $$PWD/../../../bin-$$[QMAKE_SPEC]/plugins
}

TARGET      = qcadexample

TEMPLATE    = lib
HEADERS     = RExamplePlugin.h
SOURCES     = RExamplePlugin.cpp
LIBS += -lqcadcore -lqcadgui -lqcadentity -lqcadsnap -lqcadgrid -lqcadecmaapi -lopennurbs -lzlib
