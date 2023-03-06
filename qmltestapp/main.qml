import QtQuick
import QtQuick.Layouts 6.3
import QtQuick.Controls 6.3

Window {
    id: window
    width: 250
    height: 395
    visible: true
    color: "#ffffff"
    minimumHeight: 395
    maximumHeight: 15125
    maximumWidth: 25125
    minimumWidth: 250
    title: qsTr("test calculator")


    GridLayout {
        id: buttonsGrid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 5
        anchors.topMargin: 5
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        columns: 3

        Label {
            id: label
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            rightPadding: 10
            leftPadding: 10
            font.pointSize: 11
            background: Rectangle {
                border.color: "black"
            }
            Layout.columnSpan: 3
            Layout.minimumHeight: 30
            Layout.minimumWidth: parent.width
            Layout.fillHeight: true
            Layout.fillWidth: true

            Connections {
                target: calculationsOperator
                function onOperationDone() {
                    label.text = calculationsOperator.getSum()
                }
            }
        }

        CustomButton {
            id: multiply
            text: "*"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CustomButton {
            id: divide
            text: "/"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Repeater {
            id: buttonRepeater
            model: ["9", "8", "7", "6", "5", "4", "3", "2", "1", "0"]
            CustomButton {
                text: (index - (buttonRepeater.count-1))*(-1)
                icon.color: "#ffffff"
                onClicked: {
                    label.text += text
                }
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        CustomButton {
            id: plus
            text: "+"
            Layout.fillHeight: true
            Layout.fillWidth: true
            onClicked: {
                calculationsOperator.onAddOperation(label.text);
                label.text = ""
            }
        }

        CustomButton {
            id: minus
            text: "-"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        CustomButton {
            id: equal
            text: "="
            Layout.fillHeight: true
            Layout.fillWidth: true
            onClicked: {
                calculationsOperator.onAddOperation(label.text);
                label.text = ""
                calculationsOperator.onEqualOperation();
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorColor:"#ffffff"}D{i:1}
}
##^##*/
