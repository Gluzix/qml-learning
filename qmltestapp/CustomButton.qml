import QtQuick
import QtQuick.Controls

Button {
    id: customButton
    background: Rectangle {
        implicitWidth: 50
        implicitHeight: 50
        color: Button.down ? "#d6d6d6" : "#f6f6f6"
        border.color: "#26282a"
        border.width: 1
        radius: 4
    }
}
