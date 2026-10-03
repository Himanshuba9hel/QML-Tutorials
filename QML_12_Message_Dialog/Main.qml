import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Dialogs


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Message Dialog")
    palette.windowText: "white"
    color: "black"

    Row
    {
        spacing: 20
        anchors.centerIn: parent
        Button
        {
            id: myButton_Information
            // anchors.centerIn: parent
            text: "Click Me"
            onClicked:
            {
                myMessageDialog_Information.open()
            }
        }

        Button
        {
            id: myButton_Warning
            // anchors.centerIn: parent
            text: "Click Me"
            onClicked:
            {
                myMessageDialog_Warning.open()
            }
        }
    }

    MessageDialog
    {
        id: myMessageDialog_Information
        text: "Information Message Dialog Box"
        title: "Qt QML Information Message Box"

        buttons: MessageDialog.Ok | MessageDialog.Cancel | MessageDialog.Abort
        // onAccepted:
        // {
        //     console.log("Ok Button Clicked.")
        // }
        onButtonClicked: function (button, role) {
                switch (button) {
                case MessageDialog.Ok:
                    console.log("Ok Button Clicked.")
                    break;
                case MessageDialog.Cancel:
                    console.log("Cancel Button Clicked.")
                    break;
                case MessageDialog.Abort:
                    console.log("Abort Button Clicked.")
                    break;

                }
            }

    }

    MessageDialog
    {
        id: myMessageDialog_Warning
        text: "Warning Message Dialog Box"
        title: "Qt QML Warning Message Box"

        // buttons: MessageDialog.Ok | MessageDialog.Cancel
        buttons: MessageDialog.Ok // | MessageDialog.Cancel
        // More Functionaliy in it read about it
        onAccepted:
        {
            console.log("Warning's Ok Button Clicked.")
        }
        //StandardIcon.Information
    }
}
