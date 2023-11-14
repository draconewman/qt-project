import QtQuick 2.15
import QtQuick.Controls 2.25

Rectangle {
    id: settingsScreen
    color: "black"
    anchors.fill: parent

    Image {
        id: backButton
        anchors {
            left: parent.left
            top: parent.top
            margins: 10
        }
        width: 40
        height: 40
        source: "qrc:/UI/Assets/previous.png"

        Loader {
            id: settingsLoader
//            focus: true
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if ( settingsStackView.depth >= 2 )
                    settingsStackView.pop()
                else
                    settingsLoader.source = "../HomeScreen/HomeScreen.qml"
            }
        }
    }

    StackView {
        id: settingsStackView
        anchors.fill: parent
        initialItem: "SettingsMainMenu.qml"
        clip: true
    }
}
