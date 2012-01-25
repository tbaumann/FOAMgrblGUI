#-------------------------------------------------
#
# Project created by QtCreator 2011-05-21T21:58:57
#
#-------------------------------------------------

QT       += core gui

TARGET = GrblCage
TEMPLATE = app

SOURCES += main.cpp\
    gcodeplot.cpp \
    gcodetext.cpp \
    errorhandler.cpp \
    offsetdialog.cpp \
    scaledialog.cpp \
    grblcage.cpp \
    eventfilterizer.cpp \
    settings.cpp \
    arduinoio.cpp \
    Toolbox.cpp \
    machineselect.cpp \
    newmachinedialog.cpp

HEADERS  += \
    gcodeplot.h \
    gcodetext.h \
    errorhandler.h \
    offsetdialog.h \
    scaledialog.h \
    scaledialog.h \
    grblcage.h \
    eventfilterizer.h \
    settings.h \
    qextserialport.h \
    qextserialenumerator.h \
    qextserialport_global.h \
    arduinoio.h \
    Toolbox.h \
    machineselect.h \
    newmachinedialog.h

FORMS    += grblcage.ui \
    errorhandler.ui \
    offsetdialog.ui \
    scaledialog.ui \
    settings.ui

OTHER_FILES +=

RESOURCES +=



LIBS += -lqextserialport -lqserialdevice
unix:DEFINES = _TTY_POSIX_
win32:DEFINES = _TTY_WIN_ QWT_DLL QT_DLL

INCLUDEPATH += ../qserialdevice/src/qserialdevice\
    ../qserialdevice/src/qserialdeviceenumerator
