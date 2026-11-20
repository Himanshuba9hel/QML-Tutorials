// Library.h
#ifndef LIBRARY_H
#define LIBRARY_H

#include <QObject>
#include "Book.h"

class Library : public QObject
{
    Q_OBJECT

public:
    explicit Library(QObject *parent = nullptr);

    Q_INVOKABLE Book sampleBook() const
    {
        return Book("Qt 6 Essentials", 320);
    }
};

#endif // LIBRARY_H