include($$PWD/shared.pri)

LIBS += \
    -lqcadecmaapi \
    -lqcadgui \
    -lqcadentity \
    -lqcadoperations \
    -lqcadspatialindex \
    -lspatialindexnavel \
    -lqcadgrid \
    -lqcadsnap \
    -lqcadcore \
    -lqcadstemmer \
    -lstemmer \
    -lqcadzip \
    -lquazip

r_static_libs {
	LIBS += \
		-lqcadexample \
		-ltransactionlistener
	LIBS += \
		-lqtscript_core \
		-lqtscript_gui \
		-lqtscript_network \
		-lqtscript_opengl \
		-lqtscript_printsupport \
		-lqtscript_sql \
		-lqtscript_uitools \
		-lqtscript_webkit \
		-lqtscript_webkitwidgets \
		-lqtscript_widgets \
		-lqtscript_xml \
		-lqtscript_xmlpatterns

	exists($$OUT_PWD/../3rdparty/plugin_import_qtbindings.cpp) {
		SOURCES += $$OUT_PWD/../3rdparty/plugin_import_qtbindings.cpp
	}
	else:exists($$OUT_PWD/../../3rdparty/plugin_import_qtbindings.cpp) {
		SOURCES += $$OUT_PWD/../../3rdparty/plugin_import_qtbindings.cpp
	}

	LIBS += \
		-lqcadcustomwidgets
		
	DEFINES += QCAD_STATIC_LIBS
}

!rs_no_dxf {
    LIBS += -ldxflib
}
!r_no_opennurbs {
    LIBS += \
        -lopennurbs \
        -lzlib
}

win32 {
    LIBS += \
        -lRpcrt4 \
        "kernel32.lib" \
        "user32.lib" \
        "gdi32.lib" \
        "winspool.lib" \
        "comdlg32.lib" \
        "advapi32.lib" \
        "shell32.lib" \
        "ole32.lib" \
        "oleaut32.lib" \
        "uuid.lib" \
        "odbc32.lib" \
        "odbccp32.lib"
}

linux-g++ {
    LIBS += -lGLU
}

freebsd-* {
    LIBS += -lGLU -lexecinfo
}

macx {
    QMAKE_LFLAGS += -framework ApplicationServices
    LIBS += \
        -framework CoreServices \
        -liconv \
        -lz
}
