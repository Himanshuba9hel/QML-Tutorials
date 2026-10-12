#include "Backend.h"

Backend::Backend(QObject *parent) : QObject(parent)
{
}

void Backend::processMessage(const QString &msg)
{
    qDebug() << "C++ received:" << msg;

    // Process the data (e.g., talk to a database, perform logic)
    QString reply = "C++ says: I successfully processed '" + msg + "'";

    // Emit the signal to trigger a response in QML
    emit messageProcessed(reply);
}