TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += $$PWD

SOURCES += \
    Plugin.cpp \
    Loader.cpp

HEADERS += \
    Plugin.h

LIBS += -lPocoFoundation
