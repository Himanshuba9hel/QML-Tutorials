#ifndef BOOK_H
#define BOOK_H

#include <QMetaType>
#include <QString>

class Book
{
    Q_GADGET

    Q_PROPERTY(QString title MEMBER m_title)
    Q_PROPERTY(int pages MEMBER m_pages)

public:
    Book() = default;
    Book(const QString &title, int pages)
        : m_title(title), m_pages(pages)
    {}

    Q_INVOKABLE QString summary() const
    {
        return QString("%1 (%2 pages)").arg(m_title).arg(m_pages);
    }

private:
    QString m_title;
    int m_pages = 0;
};

Q_DECLARE_METATYPE(Book)

#endif // BOOK_H
