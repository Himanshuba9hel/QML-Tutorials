import QtQuick
import QtQuick.VirtualKeyboard
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#ffffff"
    title: qsTr("CheckBox")

    CheckBox
    {
        id: myCheckBox
        checked: true
        anchors.centerIn: parent
        width: 400
        height: 100
        // text: "Check Me"

        Text
        {
            id: myCheckBoxTest
            text: "Check Me"
            font.pointSize: 15
            font.bold: true
            color: "#35ada9"
            x: ((myCheckBoxindicator.x + myCheckBoxindicator.width) + 10)
            y: ((myCheckBox.height - myCheckBoxTest.height)/2)

        }
        onCheckedChanged:
        {
            console.log("CheckBox Status : " + checked)
        }

        background: Rectangle
        {
            border.width: 5
            border.color: "#fa983a"
        }

        indicator: Rectangle
        {
            id: myCheckBoxindicator
            implicitWidth: 50
            implicitHeight: 50
            radius: 10
            border.color: "#1e3799"
            border.width: 3
            x: 10
            y: ((myCheckBox.height - myCheckBoxindicator.height)/2)
            Rectangle
            {
                visible: myCheckBox.checked
                color: "#eb2f06"
                border.color: "#eb2f06"
                radius: 5
                anchors.margins: 10
                anchors.fill: parent
             }
        }
    }
}
