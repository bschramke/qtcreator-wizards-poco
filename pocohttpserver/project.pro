TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += src/main.cpp \
    src/SimpleHTTPServerApplication.cpp \
    src/HandlerFactory.cpp \
    src/CurrentTimeHandler.cpp

HEADERS += \
    src/SimpleHTTPServerApplication.%CppHeaderSuffix% \
    src/HandlerFactory.%CppHeaderSuffix% \
    src/CurrentTimeHandler.%CppHeaderSuffix%

LIBS += -lPocoNet -lPocoFoundation -lPocoUtil
