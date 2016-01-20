TARGET = qcadcustomwidgets
TEMPLATE = lib

include( ../../shared.pri )

r_static_libs {
    CONFIG += static
} else {
    CONFIG += plugin
}

SOURCES = RShortcutLineEditPlugin.cpp \
    RCharacterWidgetPlugin.cpp \
    RFontChooserWidgetPlugin.cpp \
    RRulerQtPlugin.cpp \
    RLinetypeComboPlugin.cpp \
    RLineweightComboPlugin.cpp \
    RColorComboPlugin.cpp \
    RCustomWidgets.cpp \
    RCommandLinePlugin.cpp \
    RMdiChildQtPlugin.cpp \
    RTextEditPlugin.cpp \
    RMathLineEditPlugin.cpp \
    RGraphicsViewQtPlugin.cpp \
    RListViewPlugin.cpp
HEADERS = RShortcutLineEditPlugin.h \
    RCharacterWidgetPlugin.h \
    RFontChooserWidgetPlugin.h \
    RRulerQtPlugin.h \
    RLinetypeComboPlugin.h \
    RLineweightComboPlugin.h \
    RColorComboPlugin.h \
    RCustomWidgets.h \
    RCommandLinePlugin.h \
    RMdiChildQtPlugin.h \
    RTextEditPlugin.h \
    RMathLineEditPlugin.h \
    RGraphicsViewQtPlugin.h \
    RListViewPlugin.h
contains(QT_VERSION, ^5\\.[1-5]\\..*) || contains(QT_VERSION, ^4\\..*\\..*) {
    # Qt < 5.6:
    SOURCES += RWebViewPlugin.cpp
    HEADERS += RWebViewPlugin.h
}

LIBS += -lqcadgui -lqcadentity -lqcadcore -lopennurbs -lzlib
staticlib|static {
	SOURCES += plugin_import_customwidgets.cpp
	DESTDIR = $$PWD/../../bin-$$[QMAKE_SPEC]/$$ROUTDIR
	DEFINES += QT_STATICPLUGIN
} else {
	DESTDIR = $$PWD/../../bin-$$[QMAKE_SPEC]/designer
}
OTHER_FILES += customwidgets.dox
