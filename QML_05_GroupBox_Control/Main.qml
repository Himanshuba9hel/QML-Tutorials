import QtQuick
import QtQuick.VirtualKeyboard
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Group Box Control")
    color: "gray"
    GroupBox {
        anchors.centerIn: parent
        label: CheckBox {
            id: mainCheckBox
            checked: true
            text: qsTr("Main CheckBox")
            background: Rectangle {
                color: "gray"
                border.color: "#444444"
                border.width: 3
                radius: 3
            }
        }
        // Row {
        Column {
            anchors.centerIn: parent
            spacing: 15
            enabled: mainCheckBox.checked

            Button {
                id:  myButton
                text: qsTr("Button Control")
            }

            CheckBox {
                id:  myCheckBox
                text: qsTr("CheckBox Control")
            }

            Button {
                id:  myButton_1
                text: qsTr("Button Control")
            }
        }
        background: Rectangle {
            color: "gray"
            border.color: "#444444"
            border.width: 3
            radius: 3
        }
    }

}
