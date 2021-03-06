# -------------------------------------------------
# Project created by QtCreator 2010-02-15T23:28:09
# -------------------------------------------------
QT +=core gui widgets xml \
    xmlpatterns
TARGET = 3gger
TEMPLATE = app
SOURCES += main.cpp \
    etriggermain.cpp \
    triggermodel.cpp \
    checkboxdelegate.cpp
HEADERS += etriggermain.h \
    triggermodel.h \
    checkboxdelegate.h \
    3gr_config.h
FORMS += etriggermain.ui
RESOURCES += resources.qrc
CONFIG += debug_and_release
INCLUDEPATH  += ../qextserialport/src
QMAKE_LIBDIR += $$PWD/../../build/libs/
DESTDIR = $$PWD/../../build/debug
CONFIG(debug, debug|release):LIBS  += -lqextserialportd
else:LIBS  += -lqextserialport

# --------------------------------------------
# Windows Platform specific options
# --------------------------------------------
win32 {
    LIBS += -lsetupapi -lqextserialport1
    RC_FILE =  3gger.rc
}

# --------------------------------------------
# Mac OS X specific option
# --------------------------------------------
macx {
    ICON = 3gger.icns
}

OTHER_FILES += \
    3gger.rc
