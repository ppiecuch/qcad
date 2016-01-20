TEMPLATE    = app
TARGET      = dxflib_example
CONFIG      -= app_bundle
SOURCES     = main.cpp

include(../../../shared.pri)

INCLUDEPATH += ../../../src/3rdparty/dxflib/src
LIBS += -L$$PWD/bin-$$[QMAKE_SPEC]/$$ROUTDIR -ldxflib
