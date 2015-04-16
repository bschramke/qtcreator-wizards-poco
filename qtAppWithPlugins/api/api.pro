QT       -= gui

TARGET = %ProjectName%Api
TEMPLATE = lib

DEFINES += %ProjectName:u%_API_LIBRARY

INCLUDEPATH += $$PWD/include

SOURCES +=

HEADERS += \
    include/api_global.hpp \
    include/plugin/IPlugin.hpp
