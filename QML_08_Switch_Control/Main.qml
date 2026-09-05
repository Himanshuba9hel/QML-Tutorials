import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("SpinBox")
    palette.windowText: "white"
    color: "black"
    Switch {
        id: mySwitch
        text: qsTr("Switch")

        indicator: Rectangle
        {
            implicitWidth: 50
            implicitHeight: 25
            x: mySwitch.leftPadding
            y: parent.height / 2 - height / 2
            radius: 15
            color: mySwitch.checked ? "#341f97" : "#ffffff"
            border.color: mySwitch.checked ? "#341f97" : "#222f3e"

            Rectangle
            {
                x: mySwitch.checked ? parent.width - width : 0
                width: 25
                height: 25
                radius: 15
                color: mySwitch.down ? "#222f3e" : "#ffffff"
                border.color: mySwitch.checked ? ( mySwitch.checked ? "#341f97" : "#222f3e" ) : "#888888"
            }
        }

        contentItem: Text
        {
            text: mySwitch.text
            font.pointSize: 20
            color: mySwitch.down ? "#00d2d3" : "#2e86de"
            verticalAlignment: Text.AlignVCenter
            leftPadding: mySwitch.indicator.width + mySwitch.spacing
        }

        onCheckedChanged:
        {
            console.log("Switch is on: ", checked)
        }
    }

}
