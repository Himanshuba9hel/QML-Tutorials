#include <QDebug>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include <QString>

class MyClass : public QObject
{
    Q_OBJECT
public slots:
    void cppSlot(QQuickItem *item) {
        qDebug() << "Called the C++ slot with item:" << item;
        if (item) {
            qDebug() << "Item dimensions:" << item->width()
            << item->height();
        }
    }
    void cppSlotString(const QString &string) {
        qDebug() << "Called the C++ slot string";
        qDebug() << "Item Description:" << string;
    }
};

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    engine.loadFromModule("MyEx_04_QML_Signals", "Main");

    const auto rootObjects = engine.rootObjects();
    if (rootObjects.isEmpty()) {
        return -1;
    }

    QObject *rootObject = rootObjects.constFirst();
    QObject *item = rootObject->findChild<QObject *>("root");

    MyClass myClass;
    if (item) {
        QObject::connect(item, SIGNAL(qmlSignal(QQuickItem*)),
                         &myClass, SLOT(cppSlot(QQuickItem*)));
        QObject::connect(item, SIGNAL(qmlStringSignal(QString)),
                         &myClass, SLOT(cppSlotString(QString)));
    } else {
        qWarning() << "Could not find QML object with objectName 'root'";
    }

    return app.exec();
}

#include "main.moc"