import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic


Window {
    id: window
    width: 640
    height: 480
    minimumWidth: 200
    minimumHeight: 250
    visible: true
    title: qsTr("Using Q_PROPERTY")
    color: "white"
    Column {
        spacing: 3
        anchors.centerIn: parent

        Text {
            id: text1
            text: cppObject.property
            color: "red"
        }
        Text {
            id: text2
            text: cppObject.property
            color: "green"
        }
        Text {
            id: text3
            text: cppObject.property
            color: "blue"
        }

        Button {
            id: textButton
            text: "Click Me!"
            onClicked: {
                console.log("Text Button is Pressed")
                cppObject.property++
            }
            background: Rectangle {
                implicitHeight:  40
                implicitWidth: 100
                color: "gray"
            }
        }
    }
}
