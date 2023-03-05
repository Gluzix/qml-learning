import QtQuick

// ID - must be unique
// Root Object - there can be only one

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myimage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1200px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        anchors.centerIn: parent

        Rectangle {
            color: "red"
            width: parent.width
//            height: parent.height
            height: 50
            opacity: 0.5
        }
    }
}
