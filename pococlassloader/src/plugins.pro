#-------------------------------------------------
#
# Project created by QtCreator 2014-02-07T12:46:54
#
#-------------------------------------------------

QT       -= core gui

TARGET = plugins
TEMPLATE = lib

INCLUDEPATH += $$PWD

SOURCES += \
    Plugin.cpp \
    Manifest.cpp \
    HelloPlugin.cpp \
    CurrentTimePlugin.cpp

HEADERS += \
    Plugin.h \
    HelloPlugin.h \
    CurrentTimePlugin.h

LIBS += -lPocoFoundation

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
