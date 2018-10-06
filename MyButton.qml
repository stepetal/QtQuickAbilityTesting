import QtQuick 2.0

Item {
    Rectangle {
        id: btnRect
        width: 200
        height: 100
        color: "#b800b8"
        anchors.centerIn: parent
        Text {
            anchors.centerIn: parent
            text: "Click me, please"
            color: "white"
            font.family: "Vijaya"
            font.pixelSize: Math.round(btnRect.height/4)
            wrapMode: Text.WordWrap

        }
        MouseArea {
            id: rectMouseArea
            hoverEnabled: true
            onEntered: {
                btnRect.scale = 1.5
                btnRect.color = "lightblue"

            }
            onExited: {
                btnRect.scale = 1.0
                btnRect.color = "#b800b8"
            }

            anchors.fill: parent
            onClicked: {
                console.log("Button is pressed")
                console.log(Math.floor(rectMouseArea.mouseX))
                console.log(Math.floor(rectMouseArea.mouseY))
                //Qt.quit();
            }

        }
    }


}
