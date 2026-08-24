import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Field Control")

    TextField {
        id: myTextFeild
        width: 500
        height: 50
        anchors.centerIn: parent
        placeholderText: "Enter Text Here ... "
        font.pointSize: 20

        /* Color of Text */
        color: "#574b90"

        /* For Number Only */
        // validator: RegularExpressionValidator {  regularExpression: /[0-9]+/ }

        /* For Password */
        // echoMode: "Password"
        // passwordCharacter: "*" // As Usual `*`

        /* To Log you text on terminal */
        onTextChanged: {
            console.log("Text Changed Data : ", myTextFeild.text)
        }

        /* the Border of Input Field */
        background: Rectangle {
            // Define active and deactive color of border
            border.color: myTextFeild.activeFocus ? "#e15f41" : "#303952"
            border.width: 4
            radius: 5
        }

    }


}
