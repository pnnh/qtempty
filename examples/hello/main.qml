import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: "He嗯嗯嗯rld"

    Column
        {
            id: myColumn
            anchors.fill: parent
            spacing: 10

            Text {
                text: "ab试试lmnopq的方式uvwxyz"
                width: 50
                font.pointSize: 16
                elide: Text.ElideNone
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

            Button{
                    x:100  // 设置按钮的横坐标
                    y:100  // 设置纵坐标
                    text:"我是按钮"   // 按钮文本

                    // 信号槽连接
                    onClicked: {
                        console.log("我被点击了")

                        voronoi.test()
                        var result = voronoi.add(12.3, 3.0)
                        console.log(result)
                    }
                }
                TextEdit{
                        id:textEdit
                        text:qsTr("enter some text ...")
                        Rectangle{
                            anchors.fill: parent
                            anchors.margins: -5
                            color: "transparent"
                            border.width: 1
                        }
                    }
        }


}

