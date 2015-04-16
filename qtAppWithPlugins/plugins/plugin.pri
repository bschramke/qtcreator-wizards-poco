depfile = $$replace(_PRO_FILE_PWD_, ([^/]+$), \\1/\\1_dependencies.pri)
exists($$depfile) {
    include($$depfile)
    isEmpty(%ProjectName:u%_PLUGIN_NAME): \
        error("$$basename(depfile) does not define %ProjectName:u%_PLUGIN_NAME.")
} else {
    isEmpty(%ProjectName:u%_PLUGIN_NAME): \
        error("%ProjectName:u%_PLUGIN_NAME is empty. Maybe you meant to create $$basename(depfile)?")
}
TARGET  =$$%ProjectName:u%_PLUGIN_NAME

include(../%ProjectName%.pri)

DESTDIR = ../../app/plugins

# copy the plugin spec
isEmpty(TARGET) {
    error("%ProjectName%-plugin.pri: You must provide a TARGET")
}

PLUGINJSON = $$_PRO_FILE_PWD_/$${TARGET}.json
PLUGINJSON_IN = $${PLUGINJSON}.in
exists($$PLUGINJSON_IN) {
    DISTFILES += $$PLUGINJSON_IN
    QMAKE_SUBSTITUTES += $$PLUGINJSON_IN
    PLUGINJSON = $$OUT_PWD/$${TARGET}.json
} else {
    # need to support that for external plugins
    DISTFILES += $$PLUGINJSON
}

TEMPLATE = lib
CONFIG += plugin plugin_with_soname

TARGET  = $$qtLibraryTarget($$TARGET)
