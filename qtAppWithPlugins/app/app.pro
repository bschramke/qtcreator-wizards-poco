QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = %ProjectName%
TEMPLATE = app

INCLUDEPATH += $$PWD/include

SOURCES  += \
    src/MainWindow.cpp \
    src/main.cpp

HEADERS  += \
    include/MainWindow.hpp

FORMS    += \
    ui/MainWindow.ui

RESOURCES += \
    app.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../api/release/ -l%ProjectName%Api
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../api/debug/ -l%ProjectName%Api
else:unix:!macx: LIBS += -L$$OUT_PWD/../api/ -l%ProjectName%Api

INCLUDEPATH += $$PWD/../api/include
DEPENDPATH += $$PWD/../api
