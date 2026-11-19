#include "qproperty.h"
#include <QDebug>

PropertyController::PropertyController(QObject *parent)
    : QObject{parent}
{}

int PropertyController::property() const
{
    qDebug() << __FUNCTION__;
    return m_iProperty;
}

void PropertyController::setProperty(int ipr)
{
    qDebug() << __FUNCTION__ << " ipr: " << ipr;

    if (m_iProperty != ipr) {
        m_iProperty = ipr;
        emit propertyChanged();
    }
}