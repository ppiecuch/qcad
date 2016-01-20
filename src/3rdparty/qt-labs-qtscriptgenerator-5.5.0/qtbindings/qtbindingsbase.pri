include($$PWD/../../../../shared.pri)
TEMPLATE = lib
CONFIG += static
DEPENDPATH += .
INCLUDEPATH += .

static|staticlib {
	DEFINES += QT_STATICPLUGIN
	DESTDIR = $$PWD/../../../../bin-$$[QMAKE_SPEC]/$$ROUTDIR/script
} else {
	DESTDIR = $$PWD/../../../../bin-$$[QMAKE_SPEC]/plugins/script
}

QT += script
CONFIG += debug_and_release
GENERATEDCPP = $$PWD/../generated_cpp
TARGET=$$qtLibraryTarget($$TARGET)
