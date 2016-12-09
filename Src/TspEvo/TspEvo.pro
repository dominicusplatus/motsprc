QT += qml quick opengl
QT += widgets
CONFIG += c++11

SOURCES += main.cpp \
    Model/tspevosolverviewmodel.cpp \
    Model/tspevofitnesshistorydatamodel.cpp \
    tsppathgraphview.cpp \
    tspdataservice.cpp \
    tspeval.cpp \
    tspxoverdual.cpp \
    tspdrouteinit.cpp \
    moroutegraph.cpp \
    tspdoualobjectivevectortraits.cpp \
    tspdualeval.cpp \
    tspdualcrossover.cpp \
    tspdualmutation.cpp \
    tspdroute.cpp \
    tspgenerationevaluationcheckpoint.cpp \
    tspgenerationprogressmonitor.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    tspevosolverviewmodel.h \
    Model/tspevosolverviewmodel.h \
    Model/tspevofitnesshistorydatamodel.h \
    tsppathgraphview.h \
    MOEO/polynomialmutation.h \
    MOEO/zdtobjectivevector.h \
    MOEO/tspobjectivevector.h \
    MOEO/tspdroute.h \
    tspdataservice.h \
    tspeval.h \
    MOEO/tspxoverdual.h \
    tspdrouteinit.h \
    moroutegraph.h \
    tspdualobjectivevectortraits.h \
    tspdualeval.h \
    tspdualcrossover.h \
    tspdualmutation.h \
    tspvertex.h \
    tspgenerationevaluationcheckpoint.h \
    tspgenerationprogressmonitor.h \
    Model/tspproblemdataset.h

DISTFILES +=

INCLUDEPATH +=  "$$PWD\paradiseo\include" \
                "$$PWD\paradiseo\include\eo" \
                "$$PWD\paradiseo\include\mo"  \
                "$$PWD\paradiseo\include\moeo"

LIBS += -L"$$PWD\paradiseo\lib32"


LIBS += -lcma -leo -les -leoutils -lga -lmoeo

QMAKE_LFLAGS_WINDOWS += -mwindows

DEFINES += WIN32
