import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic


ApplicationWindow {
    id: rootWindow
    width: 640
    height: 480
    title: "Easing Types Example"
    visible: true;

    Rectangle {
        id: red
        width: 100
        height: 50
        color: "red"

        PropertyAnimation {
            target: red
            property: "x"
            from: 0
            to: rootWindow.width - red.width
            running: true
            easing.type: Easing.InOutQuad
            loops: Animation.Infinite
            duration: 1000
        }
    }
}
