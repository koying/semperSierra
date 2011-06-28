import QtQuick 1.0

Rectangle {
    id: mainWindow
    width: 360
    height: 360

    property bool landscapeWindow: mainWindow.width > mainWindow.height

    color: "black"

    Rectangle {
        id: phoneticRect
//        visible: false

        radius: 17
        color: "white"
        border.width: 5
        border.color: "#666666"
        smooth: true

        height: 100
        width: 300
        anchors { top: parent.top; horizontalCenter: parent.horizontalCenter }
        anchors.topMargin: 20

        Text {
            id: phoneticText
            anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
            font.pixelSize: 52
            color: "darkblue"
        }
    }

    Button {
        id: btExit
        width: 70; height: 70
        label: "Exit"
        anchors { bottom: parent.bottom; right: parent.right }

        onClicked: Qt.quit()
    }

    Keyboard {
        anchors {horizontalCenter: parent.horizontalCenter; bottom: parent.bottom }
        keys: "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

        onLetterClicked: {
            switch (letter) {
            case 'A' :
                phoneticText.text = "ALPHA";
                break;
            case 'B' :
                phoneticText.text = "BRAVO";
                break;
            case 'C' :
                phoneticText.text = "CHARLIE";
                break;
            case 'D' :
                phoneticText.text = "DELTA";
                break;
            case 'E' :
                phoneticText.text = "ECHO";
                break;
            case 'F' :
                phoneticText.text = "FOXTROT";
                break;
            case 'G' :
                phoneticText.text = "GOLF";
                break;
            case 'H' :
                phoneticText.text = "HOTEL";
                break;
            case 'I' :
                phoneticText.text = "INDIA";
                break;
            case 'J' :
                phoneticText.text = "JULIET";
                break;
            case 'K' :
                phoneticText.text = "KILO";
                break;
            case 'L' :
                phoneticText.text = "LIMA";
                break;
            case 'M' :
                phoneticText.text = "MIKE";
                break;
            case 'N' :
                phoneticText.text = "NOVEMBER";
                break;
            case 'O' :
                phoneticText.text = "OSCAR";
                break;
            case 'P' :
                phoneticText.text = "PAPA";
                break;
            case 'Q' :
                phoneticText.text = "QUEBEC";
                break;
            case 'R' :
                phoneticText.text = "ROMEO";
                break;
            case 'S' :
                phoneticText.text = "SIERRA";
                break;
            case 'T' :
                phoneticText.text = "TANGO";
                break;
            case 'U' :
                phoneticText.text = "UNIFORM";
                break;
            case 'V' :
                phoneticText.text = "VICTOR";
                break;
            case 'W' :
                phoneticText.text = "WISKHEY";
                break;
            case 'X' :
                phoneticText.text = "X-RAY";
                break;
            case 'Y' :
                phoneticText.text = "YANKEE";
                break;
            case 'Z' :
                phoneticText.text = "ZULU";
                break;
            }
        }
    }
}
