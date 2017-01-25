#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Model/tspevosolverviewmodel.h"
#include "Model/tspevofitnesshistorydatamodel.h"
#include <QApplication>
#include <QQmlContext>
#include "tsppathgraphview.h"
#include "tspdualsolverresultsurfaceviewmodel.h"
#include "tspdualsolverresultsparetosurfaceviewmodel.h"

int main(int argc, char *argv[])
{
  //  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QQmlDebuggingEnabler enabler;
    qmlRegisterType<TspEvoSolverViewModel>("com.tspevo.data", 1, 0, "TspEvoSolverViewModel");
    qmlRegisterType<TspEvoFitnessHistoryDataModel>("com.tspevo.data", 1, 0, "TspEvoFitnessHistoryDataModel");
    qmlRegisterType<TspPathGraphView>("com.tspevo.data", 1, 0, "TspPathGraphView");
    qmlRegisterType<TspDualSolverResultSurfaceViewModel>("com.tspevo.data", 1, 0, "TspDualSolverResultSurfaceViewModel");
    qmlRegisterType<TspDualSolverResultsParetoSurfaceViewModel>("com.tspevo.data", 1, 0, "TspDualSolverResultsParetoSurfaceViewModel");

   TspEvoSolverViewModel model;
    QQmlContext *ctxt = engine.rootContext();
    engine.rootContext()->setContextProperty("model", &model);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

     return app.exec();


}
