#ifndef QPROPERTY_H
#define QPROPERTY_H

#include <QObject>

class PropertyController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int property READ property WRITE setProperty NOTIFY propertyChanged)

public:
    explicit PropertyController(QObject *parent = nullptr);

    int property() const;
    void setProperty(int ipr);

signals:
    void propertyChanged();

private:
    int m_iProperty = 0;
};

#endif // QPROPERTY_H