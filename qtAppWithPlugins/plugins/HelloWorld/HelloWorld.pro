include(../%ProjectName%-plugin.pri)

INCLUDEPATH += $$PWD/include

HEADERS += \
    include/HelloWorldPlugin.hpp

SOURCES += \
    src/HelloWorldPlugin.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../api/release/ -l%ProjectName%Api
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../api/debug/ -l%ProjectName%Api
else:unix:!macx: LIBS += -L$$OUT_PWD/../../api/ -l%ProjectName%Api

INCLUDEPATH += $$PWD/../../api/include
DEPENDPATH += $$PWD/../../api

OTHER_FILES += \
    HelloWorld.json.in
