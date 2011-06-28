import QtQuick 1.0

Rectangle {
    id: mainButton
    width: 180
    height: 70
    color: "#00000000"

    property alias label: text1.text
    property alias image: button_image.source


    signal clicked()

    Rectangle {
        id: rectangle1
        radius: 17
        gradient: Gradient {
            GradientStop {
                id: gradientstop1
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                id: gradientstop2
                position: 1
                color: "#959595"
            }
        }
        anchors.rightMargin: 2
        anchors.leftMargin: 2
        anchors.bottomMargin: 2
        anchors.topMargin: 2
        border.width: 5
        border.color: "#888888"
        anchors.fill: parent
        smooth: true

        Image {
            z: 0
            id: button_image
            anchors.centerIn: parent
        }

        Text {
            id: text1
            x: 34
            y: 27
            z: 1
            width: 80
            height: 20
            text: "Button Label"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 19
            smooth: true
            verticalAlignment: "AlignVCenter"
            horizontalAlignment: "AlignHCenter"
        }
    }

    MouseArea {
        onClicked: mainButton.clicked()
        id: mouse_area1
        anchors.fill: parent
    }
    states: [
        State {
            name: "State1"

            when: mouse_area1.pressed

            PropertyChanges {
                target: gradientstop1
                position: 0
                color: "#959595"
            }

            PropertyChanges {
                target: gradientstop2
                position: 1
                color: "#ffffff"
            }
        }
    ]
}
