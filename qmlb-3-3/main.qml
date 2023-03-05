import QtQuick

// Property bindings

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1200px-Qt_logo_2016.svg.png"
        width: 150
        height: 100
        opacity: 0.25
        anchors.centerIn: parent
    }

    TextInput {
        id: myInput
        text: "Hello world"
        anchors.centerIn: parent
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
    }

}
