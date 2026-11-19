#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "qproperty.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    PropertyController objProperty;

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("cppObject", &objProperty);
    engine.loadFromModule("MyEx_01_Q_PROPERTY", "Main");

    return app.exec();
}