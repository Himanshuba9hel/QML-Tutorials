import QtQuick
import QtQuick.Controls.Basic

Window {
    width: 360
    height: 200
    visible: true
    title: "Q_GADGET Example"

    Button {
        anchors.centerIn: parent
        text: "Inspect Book"
        onClicked: {
            var book = library.sampleBook()
            console.log("Title:", book.title)
            console.log("Pages:", book.pages)
            console.log("Summary:", book.summary())

            // Modifies the QML-side value copy
            book.pages = 400
            console.log("Updated local copy:", book.summary())
        }
    }
}