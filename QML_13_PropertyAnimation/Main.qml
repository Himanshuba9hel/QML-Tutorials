import QtQuick
import QtQuick.Layouts
import QtQuick.Controls


ApplicationWindow {
    id: rootWindow
    width: 800
    height: 600
    title: "QML Property Animation Example"
    visible: true

    Rectangle {
        id: animatedRectangle
        width: 100
        height: 100
        color: "red"

        x: 0
        y: 0
        anchors.centerIn: parent
    }

    PropertyAnimation {
        target: animatedRectangle
        property: "rotation"
        from: 0
        to: 360
        duration: 2000
        loops: Animation.Infinite
        easing.type: Easing.InOutQuad
        running: true
    }

    SequentialAnimation {
        loops: Animation.Infinite
        PropertyAnimation { target: animatedRectangle; property: "scale"; from: 1; to: 1.5; duration: 1000}
        PauseAnimation {duration: 500}
        PropertyAnimation { target: animatedRectangle; property: "scale"; from: 1.5; to: 1; duration: 1000}
        running: true
    }

}
