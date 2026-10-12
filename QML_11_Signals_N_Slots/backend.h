#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include <QDebug>

class Backend : public QObject
{
    Q_OBJECT
public:
    explicit Backend(QObject *parent = nullptr);

    // Q_INVOKABLE allows this method to be called directly from QML
    Q_INVOKABLE void processMessage(const QString &msg);

signals:
    // This signal will be emitted to QML
    void messageProcessed(const QString &reply);
};

#endif // BACKEND_H