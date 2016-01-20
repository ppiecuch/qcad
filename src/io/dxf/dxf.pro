CONFIG += plugin
TARGET = qcaddxf
include( ../../../shared.pri )

HEADERS = \
    RDxfExporter.h \
    RDxfExporterFactory.h \
    RDxfImporter.h \
    RDxfImporterFactory.h \
    RDxfPlugin.h
SOURCES = \
    RDxfExporter.cpp \
    RDxfExporterFactory.cpp \
    RDxfImporter.cpp \
    RDxfImporterFactory.cpp \
    RDxfPlugin.cpp
TEMPLATE = lib
DEFINES += QCADDXF_LIBRARY
LIBS += -lqcadcore -lqcadentity -ldxflib -lqcadoperations
r_static_libs {
    CONFIG -= plugin
    CONFIG += staticlib
}
else {
    DESTDIR = $$PWD/../../../bin-$$[QMAKE_SPEC]/plugins
}

POST_TARGETDEPS += $$PWD/../../../bin-$$[QMAKE_SPEC]/$$ROUTDIR/$${RLIBPRE}dxflib$${RLIBPOST}
