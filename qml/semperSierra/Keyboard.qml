import QtQuick 1.0

Grid {
    id: keyboard

    property string keys: ""

    signal hideKeyboard()
    signal letterClicked(string letter)

    rows: mainWindow.landscapeWindow ? 3 : 6
    columns: mainWindow.landscapeWindow ? 9 : 5
    spacing: 1

    Repeater {
        model: keys.length
        Button {
            width: 70; height: 70
            label: {
                    keys.charAt( index );
            }
            onClicked: {
                    letterClicked( label );
            }
        }
    }
}
