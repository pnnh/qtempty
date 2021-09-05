import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("He嗯嗯嗯rld")

    Column
        {
            anchors.fill: parent
            spacing: 10

            Text {
                text: "ab试试lmnopq的方式uvwxyz"
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
                text: "abcdefghij呵呵呵呵vwxyz"
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
