import QtQuick
import Shapes

Item {
    width: 300; height: 200

    Ellipse {
        width: 150; height: 100
        anchors.centerIn: parent
        color: "blue"

        Text {
            anchors.centerIn: parent
            text: parent.color
        }
    }
}