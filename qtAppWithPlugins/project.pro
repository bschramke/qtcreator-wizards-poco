include(%ProjectName%.pri)

#version check qt
!minQtVersion(4, 8, 5) {
    message("Cannot build %ProjectName% with Qt version $${QT_VERSION}.")
    error("Use at least Qt 4.8.5.")
}

TEMPLATE  = subdirs
CONFIG   += ordered

SUBDIRS = \
    api \
    app \
    plugins \

