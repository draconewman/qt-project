import QtQuick 2.15
import QtQuick.Controls 2.15

Slider {
    id: temperatureControlSlider
    from: 55
    to: 85
    stepSize: 1
    orientation: Qt.Vertical
//    rotation: 90
//    anchors.centerIn: parent
    onValueChanged: systemController.setTargetTemp( value )
//    value: 70

    background: Rectangle {
        height: parent.height
        width: 3
        anchors.centerIn: parent

        Text {
            anchors.bottom: parent.bottom
            color: "white"
            font.pixelSize: 100
            text: temperatureControlSlider.value
//            anchors.left: 100
//            rotation: 90
        }
    }

//    handle: Rectangle {
//        y: temperatureControlSlider.visualPosition * ( temperatureControlSlider.availableHeight - height )
//        width: 76
//        height: 76
//        radius: width / 2
//        color: "black"
//        border.color: "white"
//        border.width: 3
//        anchors.horizontalCenter: parent.horizontalCenter
////        rotation: 90
////        Text {
////            anchors.centerIn: parent
////            color: "white"
////            font.pixelSize: 30
////            text: temperatureControlSlider.value
//////            rotation: 90
////        }
//    }
}


//import QtQuick 2.12
//import QtQuick.Controls 2.12

//Slider {
//    id: control
//    value: 70
//    from: 55
//    to: 85
//    stepSize: 1
////    orientation: Qt.Vertical
//    onValueChanged: systemController.setTargetTemp( value )

//    background: Rectangle {
//        x: control.leftPadding
//        y: control.topPadding + control.availableHeight / 2 - height / 2
//        implicitWidth: 200
//        implicitHeight: 4
//        width: control.availableWidth
//        height: implicitHeight
//        radius: 2
//        color: "#bdbebf"

//        Rectangle {
//            width: control.visualPosition * parent.width
//            height: parent.height
//            color: "#21be2b"
//            radius: 2
//        }
//    }

//    handle: Rectangle {
//        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
//        y: control.topPadding + control.availableHeight / 2 - height / 2
//        implicitWidth: 26
//        implicitHeight: 26
//        radius: 13
//        color: control.pressed ? "#f0f0f0" : "#f6f6f6"
//        border.color: "#bdbebf"
//    }
//}


//Slider {
//        id: verticalSlider
//        orientation: Qt.Vertical
//        from: 0
//        to: 100
//        value: 50
//        anchors.centerIn: parent

//        onValueChanged: {
//            console.log("Slider value changed to " + value);
//        }
//    }







