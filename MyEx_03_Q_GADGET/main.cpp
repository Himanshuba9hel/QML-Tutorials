#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Library.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    Library library;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("library", &library);
    engine.loadFromModule("MyEx_03_Q_GADGET", "Main");

    return app.exec();
}