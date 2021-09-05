import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column
        {
            anchors.fill: parent
            spacing: 10

            Text {
                text: "abcdefghijklmnopqrstuvwxyz"
                width: 50
                font.pointSize: 16
                elide: Text.ElideNone
            }
            Text {
                text: "abcdefghijklmnopqrstuvwxyz"
                width: 50
                font.pointSize: 16
                elide: Text.ElideLeft
            }
            Text {
                text: "abcdefghijklmnopqrstuvwxyz"
                width: 50
                font.pointSize: 16
                elide: Text.ElideMiddle
            }
            Text {
                text: "abcdefghijklmnopqrstuvwxyz"
                width: 50
                font.pointSize: 16
                elide: Text.ElideRight
            }
        }
}
