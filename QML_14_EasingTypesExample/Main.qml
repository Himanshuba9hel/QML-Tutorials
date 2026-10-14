import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic


ApplicationWindow {
    id: rootWindow
    width: 640
    height: 480
    title: "Easing Types Example"
    visible: true;
    // Container area for all easing examples
    Column {
        spacing: 20
        anchors.fill: parent
        // Create first InOutQuad rectangle
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
                duration: 4000
            }

            Text {
                text: "InOutQuad"
                anchors.centerIn: parent
            }
        }

        // Another with OutBounce
        Rectangle {
            id: blue
            width: 100
            height: 50
            color: "blue"

            PropertyAnimation {
                target: blue
                property: "x"
                from: 0
                to: rootWindow.width - blue.width
                running: true
                easing.type: Easing.OutBounce
                loops: Animation.Infinite
                duration: 4000
            }

            Text {
                text: "OutBounce"
                anchors.centerIn: parent
            }
        }

        // Another with InElastic
        Rectangle {
            id: yellow
            width: 100
            height: 50
            color: "yellow"

            PropertyAnimation {
                target: yellow
                property: "x"
                from: 0
                to: rootWindow.width - yellow.width
                running: true
                easing.type: Easing.InElastic
                loops: Animation.Infinite
                duration: 4000
            }

            Text {
                text: "InElastic"
                anchors.centerIn: parent
            }
        }

        Text {

        }
    }
}
