import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Window 2.9
import Qt.labs.platform 1.0
import an.qt.ImageProcessor 1.0

Window {
    objectName: "rootObject";
    width: 640;
    height: 480;
    visible: true;
    color: "#121212";

    Rectangle {
        width: 360;
        height: 240;
        color: "#EEEEEE";
        id: rootItem;

        Text {
            id: centerText;
            text:"A Single Text.";
            anchors.centerIn: parent;
            font.pixelSize: 24;
            font.bold: true;
        }

        function setTextColor(clr) {
            centerText.color = clr;
        }

        Row {
            anchors.left: parent.left;
            anchors.leftMargin: 4;
            anchors.bottom: parent.bottom;
            anchors.bottomMargin: 4;

            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random());
                onColorPicked: setTextColor(clr);
            }
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random());
                onColorPicked: setTextColor(clr);
            }
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random());
                onColorPicked: setTextColor(clr);
            }
        }
    }
}
