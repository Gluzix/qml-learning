import QtQuick

// Parent and children relationships

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: img
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1200px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        x: 100
        y: 100
        z: 3

        Rectangle {
            color: "red"
            x: -25
            y: -25
            width: 50
            height: 50
            opacity: 0.5
            z:1
        }

        Rectangle {
            color: "blue"
            x: parent.width - width
            y: parent.height - height
            width: 50
            height: 50
            opacity: 0.5
            z:0
        }
    }
}
