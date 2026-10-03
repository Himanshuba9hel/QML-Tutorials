import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Progress Bar")
    palette.windowText: "white"
    color: "black"

    Column
    {
        spacing: 20
        anchors.centerIn: parent
        ProgressBar
        {
            id: myProgressBar
            width: 300
            value: 75
            from: 0 // Minimum Value
            to: 750 // Maximum value

            onValueChanged:
            {
                console.log("ProgressBar Value: ", value)
            }
        }
        
        Row
        {
            Button
            {
                id: myButton_Dec
                text: "Decrease"
                onClicked:
                {
                    if (myProgressBar.value > myProgressBar.from)
                    {
                        myProgressBar.value -= 15
                    }
                }
            }

            Button
            {
                id: myButton_Inc
                text: "Increase"
                onClicked:
                {
                    if (myProgressBar.value < myProgressBar.to)
                    {
                        myProgressBar.value += 15
                    }
                }
            }
        }
        
        Text
        {
            id: myText
            text: "Progress: " + Math.round((myProgressBar.value * 100) / myProgressBar.to) + "%"
            font.pixelSize: 15
            color: "#ffffff"
        }
    }

}
