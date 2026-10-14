import QtQuick
import QtQuick.Controls

ListView {
    id: list
    width: 300
    height: 200
    spacing: 5
    model: DatasetExample {}

    delegate: Frame {
        width: list.width
        Text {
            text: name + ": " + email
            font.pointSize: 16
            anchors.centerIn: parent
        }
    }

    header: Rectangle {
        width: parent.width
        height: 30
        color: "red"
        Text {
            text: "Contacts list"
            color: "white"
            font.pointSize: 18
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    footer: Rectangle {
        width: parent.width
        height: 20
        color: "red"
        z: 10
    }

    footerPositioning: ListView.OverlayFooter

}
