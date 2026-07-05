import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    /*   Step 1: Simple Button   */
    // Button
    // {
    //     id:myButton
    //     width: 300
    //     height: 75
    //     text: "Click Me"
    //     anchors.centerIn: parent
    // }
    /*   Step 1: Simple Button   */

    Button
    {
        id:myButton
        width: 300
        height: 75
        anchors.centerIn: parent

        Text
        {
            id:myButtonText
            text:"Click Me"
            color: "#e84118"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment:  Text.AlignVCenter
            elide: Text.ElideRight
            font.pointSize: 20
            font.bold: true

        }

        onClicked:
        {
            console.log("Button is clicked")
        }

        background: Rectangle
        {
            color: myButton.pressed ? "#0097e6" : "#273c75"
            radius: 5
        }
    }

}
