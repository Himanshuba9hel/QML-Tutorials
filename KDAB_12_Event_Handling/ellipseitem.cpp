#include <QPainter>
#include <QRandomGenerator>
#include "ellipseitem.h"

EllipseItem::EllipseItem(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{
    // This is necessary, by default QQuickItem does not accept any buttons
    setAcceptedMouseButtons(Qt::LeftButton);
}

void EllipseItem::paint(QPainter *painter)
{
    painter->save();
    painter->setPen(Qt::NoPen);
    painter->setBrush(m_color);
    painter->drawEllipse(contentsBoundingRect());
    painter->restore();
}

QColor EllipseItem::color() const
{
    return m_color;
}

void EllipseItem::setColor(const QColor &newColor)
{
    if (m_color != newColor) {
        m_color = newColor;
        update();
        emit colorChanged();
    }
}

static QColor randomColor()
{
    auto *rng = QRandomGenerator::global();
    return QColor(rng->bounded(256), rng->bounded(256), rng->bounded(256));
}

void EllipseItem::mousePressEvent(QMouseEvent *event)
{
    Q_UNUSED(event)
    setColor(randomColor());
}

void EllipseItem::wheelEvent(QWheelEvent *event)
{
    if (event->angleDelta().y() > 0)
        setColor(m_color.lighter(110));
    else
        setColor(m_color.darker(110));
}