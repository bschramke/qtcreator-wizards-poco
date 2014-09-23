TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += src/main.%CppSourceSuffix% \
    src/SimpleHTTPServerApplication.%CppSourceSuffix% \
    src/HandlerFactory.%CppSourceSuffix% \
    src/CurrentTimeHandler.%CppSourceSuffix%

HEADERS += \
    src/SimpleHTTPServerApplication.%CppHeaderSuffix% \
    src/HandlerFactory.%CppHeaderSuffix% \
    src/CurrentTimeHandler.%CppHeaderSuffix%

LIBS += -lPocoNet -lPocoFoundation -lPocoUtil
