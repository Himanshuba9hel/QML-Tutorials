import QtQuick
import QtQuick.Dialogs // file picking dialog window
import QtQuick.Layouts // arrange items in UI
import QtQuick.Controls // for things like buttons and dropdown list
import QtQuick.Controls.Material

Window {
    id: root
    width: 700
    height: 500
    visible: true
    title: qsTr("Logs filter")

    ColumnLayout {
        spacing: 12
        anchors.fill: parent
        anchors.margins: 20

        GroupBox {
            id: form
            title: "Logs filter"
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
            font.bold: true

            ColumnLayout {
                spacing: 10
                Layout.fillWidth: true
                RowLayout {
                    Label {
                        text: "File: "
                        font.pixelSize: 14
                    }
                    TextField {
                        id: selectedFileName
                        text: "some file name"
                        readOnly: true
                        Layout.fillWidth: true
                    }
                    Button {
                        text: "Select File"
                        onClicked: fileDialog.open()
                    }
                    FileDialog {
                        id: fileDialog
                        title: "Select a log file"
                        onAccepted: {
                            let filePath = fileDialog.selectedFile.toString();
                            console.log(filePath);
                        }
                    }
                }
                RowLayout {
                    Label {
                        text: "Type: "
                        font.pixelSize: 14
                    }
                    ComboBox {
                        id: logTypeSelect
                        model: ["INFO", "ERROR", "WARNING"]
                        Layout.fillWidth: true
                    }
                }
            }
        }
        Button {
            id: searchButton
            text: "Search Logs"
            Layout.alignment: Qt.AlignHCenter
            Material.background: Material.Yellow
            onClicked: {
                console.log(logTypeSelect.currentText);
            }
        }
    }
}
