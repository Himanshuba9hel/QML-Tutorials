import QtQuick
import QtQuick.Controls
import com.example.backend 1.0 // Import our C++ class

Window {
    width: 400
    height: 300
    visible: true
    title: "QML Signal & Slot Demo"

    // Instantiate the C++ class
    Backend {
        id: backend

        // Handle the C++ signal.
        // Syntax is "on" + CapitalizedSignalName
        onMessageProcessed: function(reply) {
            responseText.text = reply
            responseText.color = "green"
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        TextField {
            id: inputField
            placeholderText: "Type a message here..."
            width: 250
        }

        Button {
            text: "Send to C++"
            width: 250
            onClicked: {
                // Call the C++ Q_INVOKABLE method
                backend.processMessage(inputField.text)
            }
        }

        Text {
            id: responseText
            text: "Waiting for backend..."
            color: "gray"
            width: 250
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
        }
    }
}