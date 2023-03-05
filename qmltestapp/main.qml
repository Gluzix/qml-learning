import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("test calculator")

    minimumHeight: buttonsGrid.height
    minimumWidth: buttonsGrid.width

    ColumnLayout {
        id: mainLayout
    }

    GridLayout {
        id: buttonsGrid
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        columns: 3
        rows:4

        Label {
            id: label
            background: Rectangle {
                border.color: "black"
            }
            Layout.columnSpan: 3
            Layout.minimumHeight: 30
            Layout.minimumWidth: parent.width
        }

        CustomButton {
            id: multiply
            text: "*"
        }

        CustomButton {
            id: divide
            text: "/"
        }

        CustomButton {
            id: empty
            text: ""
        }

        Repeater {
            id: buttonRepeater
            model: ["9", "8", "7", "6", "5", "4", "3", "2", "1", "0"]
            CustomButton {
                text: (index - (buttonRepeater.count-1))*(-1)
                onClicked: {
                     // call the slot to process the text
                     label.text += text
                 }
            }
        }

        CustomButton {
            id: plus
            text: "+"
        }

        CustomButton {
            id: minus
            text: "-"
        }

        CustomButton {
            id: equal
            text: "="
        }
    }
}
