import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 800
    height: 600
    visible: true
    title: "He嗯嗯嗯rld"

    Column {
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
            font.pointSize: 16
            elide: Text.ElideMiddle
        }
        Text {
            id: txtA
            text: "abcdefghijklmnopqrstuvwxyz"
            font.pointSize: 16
            elide: Text.ElideRight
        }

        Button {
            x: 100 // 设置按钮的横坐标
            y: 100 // 设置纵坐标
            text: "我是按钮" // 按钮文本

            // 信号槽连接
            onClicked: {
                console.log("我被点击了")
                txtA.text = "txtA设置新属性"
                voronoi.test()
                var result = voronoi.add(12.3, 3.0)
                console.log(result)
            }
        }

                Row{
                    spacing: 10

                    Text {
                        width: 90
                        height: 30
                        verticalAlignment: Text.AlignVCenter
                        renderType: Text.NativeRendering
                        text: "TextArea:"
                    }

                    ScrollView {
                        id: textarea1View
                        width: 200
                        height: 60
                        background: Rectangle{
                            border.color: "blue"
                            border.width: 2
                        }
                        clip: true
                        ScrollBar.horizontal: ScrollBar{ visible: false }

                        TextArea{
                            id: textarea1
                            width: textarea1View.width
                            padding: 5
                            color: "black"
                            //无输入时的提示文本
                            placeholderText: "输入内容"
                            placeholderTextColor: "gray"
                            //text: "<p>Gong Jian Bo</p>"
                            //支持富文本
                            //textFormat: TextEdit.RichText
                            //默认Text.QtRendering看起来比较模糊
                            renderType: Text.NativeRendering
                            //文本换行，默认NoWrap
                            wrapMode: TextEdit.Wrap
                        }

                    }
                }

        Button {
            text: "随机字符" // 按钮文本

            // 信号槽连接
            onClicked: {
                var result = voronoi.random(textarea1.text)
                console.log("随机字符被点击了: " + result)
            }
        }
        Rectangle {
                x: 30
                y: 30
                color: "red"
                width: 100
                height: 100
                border.color: "green" // 设置边框颜色
                border.width: 5       // 设置边框宽度
                radius: 20            // 设置圆角
                antialiasing: true
                rotation: 45          // 按时钟方向旋转45°
            }

    }
}
