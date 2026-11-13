#include <QApplication>
#include <QWidget>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QSlider>
#include <QLCDNumber>
#include <QDoubleSpinBox>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QWidget *window = new QWidget();
    window->setAttribute(Qt::WA_DeleteOnClose);
    QVBoxLayout *topLayout = new QVBoxLayout(window);

    // Set up the GUI
    QSlider *slider = new QSlider(Qt::Horizontal);
    slider->setRange(-100, 100);

    QLCDNumber *integerLcd = new QLCDNumber;
    integerLcd->setDigitCount(3);

    QDoubleSpinBox *doubleSpin = new QDoubleSpinBox;
    doubleSpin->setRange(-1.0, 1.0);
    doubleSpin->setSingleStep(0.01);

    QLCDNumber *doubleLcd = new QLCDNumber;
    doubleLcd->setDigitCount(5);

    QHBoxLayout *integerHorizontalLayout = new QHBoxLayout;
    integerHorizontalLayout->addWidget(slider);
    integerHorizontalLayout->addWidget(integerLcd);
    topLayout->addLayout(integerHorizontalLayout);

    QHBoxLayout *doubleHorizontalLayout = new QHBoxLayout;
    doubleHorizontalLayout->addWidget(doubleSpin);
    doubleHorizontalLayout->addWidget(doubleLcd);
    topLayout->addLayout(doubleHorizontalLayout);

    // 1. Connect slider to integer LCD using qOverload (Standard Qt 6 approach)
    QObject::connect(slider, &QSlider::valueChanged,
                     integerLcd, qOverload<int>(&QLCDNumber::display));

    // TIP: You can also use C++ lambdas for clean, readable signal-slot connections:
    // QObject::connect(slider, &QSlider::valueChanged, integerLcd, [integerLcd](int value) {
    //     integerLcd->display(value);
    // });

    // Set the slider position and update the LCD
    slider->setValue(40);

    // 2. Connect overloaded QDoubleSpinBox::valueChanged to overloaded QLCDNumber::display
    QObject::connect(doubleSpin, qOverload<double>(&QDoubleSpinBox::valueChanged),
                     doubleLcd, qOverload<double>(&QLCDNumber::display));

    // Set the double spin box value and update the LCD
    doubleSpin->setValue(-0.5);

    window->show();
    return app.exec();
}