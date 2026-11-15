#include <QCoreApplication>
#include <QVariant>
#include <QString>
#include <QDebug>

// 1. Define a custom struct
struct MyCustomStruct {
    QString name;
    int id;
};

// 2. Register the custom struct so QVariant knows how to handle it
Q_DECLARE_METATYPE(MyCustomStruct)

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

    // --- Part 1: Storing and Retrieving Standard Types ---
    QVariant vInt = 100;
    QVariant vString = "Qt is great!";
    QVariant vDouble = 45.67;

    qDebug() << "=== Standard Types ===";
    qDebug() << "Integer:" << vInt.toInt();
    qDebug() << "String:" << vString.toString();
    qDebug() << "Double:" << vDouble.toDouble();


    // --- Part 2: Type Checking and Conversion ---
    qDebug() << "\n=== Type Conversion ===";
    // QVariant can safely tell you if a conversion is possible
    qDebug() << "Can string convert to int?" << vString.canConvert<int>();
    qDebug() << "Can int convert to string?" << vInt.canConvert<QString>();

    // Actually performing the safe conversion
    qDebug() << "Integer converted to String:" << vInt.toString();


    // --- Part 3: Storing Custom Types ---
    MyCustomStruct myData;
    myData.name = "Developer";
    myData.id = 12345;

    // Use setValue() to store custom registered types
    QVariant vCustom;
    vCustom.setValue(myData);

    qDebug() << "\n=== Custom Types ===";
    // Check if the variant holds our custom struct
    if (vCustom.canConvert<MyCustomStruct>()) {
        // Extract it using .value<T>()
        MyCustomStruct extractedData = vCustom.value<MyCustomStruct>();
        qDebug() << "Extracted Name:" << extractedData.name;
        qDebug() << "Extracted ID:" << extractedData.id;
    }

    return 0;
}