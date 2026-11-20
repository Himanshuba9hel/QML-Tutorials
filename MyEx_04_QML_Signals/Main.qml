import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

ApplicationWindow {
    id: window
    width: 640
    height: 480
    minimumWidth: 200
    minimumHeight: 250
    visible: true
    title: qsTr("QML Signal")

    GroupBox {
        id: root
        objectName: "root"
        property int buttonHeight: 40
        signal qmlSignal(anObject: Item)
        signal qmlStringSignal(msg: string)

        anchors.centerIn: parent
        background: Rectangle {
            color: "gray"
        }

        Column {
            spacing: 5
            Row {
                spacing: 10
                TextArea {
                    id: inputSpace
                    font.pixelSize: root.buttonHeight / 2
                    placeholderText: qsTr("Enter description")
                    width: parent.width*(2/3)
                    background: Rectangle {
                        color: "white"
                        radius: root.buttonHeight / 12
                        height: root.buttonHeight
                    }
                }
                Button {
                    id: sendInput
                    text: qsTr("Send!")
                    onClicked: root.qmlStringSignal(inputSpace.text)

                    // width: parent.width
                    font.pixelSize: root.buttonHeight / 2
                    background: Rectangle {
                        color: "Black"
                        radius: root.buttonHeight / 12
                        height: root.buttonHeight
                    }
                }
            }
            Row {
                spacing: 10
                Button {
                    id: buttonClick
                    text: qsTr("Click Me!")
                    onClicked: {
                        console.log("Click Me! is pressed!")
                        root.qmlSignal(inputSpace)
                    }

                    font.pixelSize: root.buttonHeight / 2
                    background: Rectangle {
                        radius: root.buttonHeight / 12
                        height: root.buttonHeight
                        width: parent.width
                    }
                }

                Button {
                    id: buttonNext
                    text: qsTr("Next >")
                    onClicked: {
                        console.log("Next Button is pressed!")
                        root.qmlSignal(inputSpace)
                    }

                    font.pixelSize: root.buttonHeight / 2
                    background: Rectangle {
                        radius: root.buttonHeight / 12
                        height: root.buttonHeight
                        width: parent.width
                    }
                }
            }
        }
    }
}