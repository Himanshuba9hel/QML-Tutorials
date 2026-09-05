import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Slider Control")
    palette.windowText: "white"
    color: "black"

    Column
    {
        spacing: 20
        anchors.centerIn: parent
        width: 640

        Slider
        {
            id: mySlider
            width: parent.width * 0.8
            from: 0
            to: 1000
            stepSize: 1
            anchors.centerIn: parent

            onValueChanged:
            {
                console.log("Slider Value : ",value)
            }
            handle: Rectangle {
                x: mySlider.leftPadding + mySlider.visualPosition * (mySlider.availableWidth - width)
                y: mySlider.topPadding + mySlider.availableHeight / 2 - height / 2
                implicitWidth: 26
                implicitHeight: 26
                radius: 13
                color: mySlider.pressed ? "#f0f0f0" : "#00ff00"
                border.color: "#bdbebf"
            }
            background: Rectangle {
                x: mySlider.leftPadding
                y: mySlider.topPadding + mySlider.availableHeight / 2 - height / 2
                implicitWidth: 200
                implicitHeight: 20
                width: mySlider.availableWidth
                height: implicitHeight
                radius: height / 2
                color: "#0abde3"

                Rectangle
                {
                    width: mySlider.visualPosition == 0 ? 0 : mySlider.handle.x + mySlider.handle.width / 2
                    height: parent.height
                    color: "#341f97"
                    radius: height / 2
                }
            }
        }

        Text
        {
            id: mySliderText
            text: "Slider Value : " + mySlider.value
            font.pointSize: 20
            anchors.top: mySlider.bottom
            anchors.horizontalCenter: mySlider.horizontalCenter
            color: "#ffffff"
        }

    }
}
