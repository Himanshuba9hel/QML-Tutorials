import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Control Label")
    palette.windowText: "white"
    color: "black"

    Label
    {
        id: myLabel
        width: 300
        height: 100

        font.pixelSize: 22
        font.bold: true
        font.italic: false
        font.family: "verdana"
        text: "Qt With Ketan"


        anchors.centerIn: parent
        verticalAlignment: Qt.AlignVCenter
        horizontalAlignment: Qt.AlignHCenter

        background: Rectangle
        {
            border.color: "blue"
            border.width: 5
            radius: 10
        }

        color: myMouseArea.containsMouse ? "red" : "black"
        scale: myMouseArea.containsMouse ? 1.2 : 1.0

        MouseArea
        {
            id: myMouseArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
        }
    }
}
