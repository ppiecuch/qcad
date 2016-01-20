include( ../../../../shared.pri )
TEMPLATE = subdirs
SUBDIRS = qtscript_core \
          qtscript_gui \
          qtscript_widgets \
          qtscript_printsupport \
          qtscript_network \
          qtscript_opengl \
          qtscript_sql \
          qtscript_uitools \
          qtscript_xml \
          qtscript_xmlpatterns

!r_mobile {
    SUBDIRS += \
          qtscript_webkit \
          qtscript_webkitwidgets
}

#          qtscript_multimedia \
#          qtscript_svg \
#          qs_eval

exists("../plugin_import_qtbindings.cpp") {
	message("copying file ../plugin_import_qtbindings.cpp")
	system(cp "../plugin_import_qtbindings.cpp" "$$OUT_PWD/../..")
}

OTHER_FILES += ../plugin_import_qtbindings.cpp
