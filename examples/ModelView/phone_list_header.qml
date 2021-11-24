import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Window 2.9
import QtQuick.Layouts 1.12

Window {
    visible: true;
    width: 800;
    height: 600;
    title: qsTr("Hello World");

    Component {
        id: phoneModel;
        ListModel {
            ListElement {
                name: "iPhone A";
                cost: "130";
                manufacturer: "Apple2";
            }
            ListElement {
                name: "iPhone hjS";
                cost: "1500";
                manufacturer: "Appl4e";
            }
            ListElement {
                name: "iPhone 36";
                cost: "102200";
                manufacturer: "Appl223e";
            }
            ListElement {
                name: "iPhone 3G33S";
                cost: "2300";
                manufacturer: "A32le";
            }
            ListElement {
                name: "iPhone 22S";
                cost: "1230";
                manufacturer: "A434le";
            }
            ListElement {
                name: "iPhone 3GS";
                cost: "1000";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3GS";
                cost: "1000";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3GS";
                cost: "1000";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3GS";
                cost: "1000";
                manufacturer: "Apple";
            }
        }
    }

    Component {
        id: headerView;
        Item {
            width: parent.width;
            height: 30;
            RowLayout {
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                spacing: 8;
                Text {
                    text: "Name";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.preferredWidth: 120;
                }
                Text {
                    text: "Cost";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.preferredWidth: 80;
                }
                Text {
                    text: "Manufacturer";
                    font.bold: true;
                    font.pixelSize: 20;
                    Layout.fillWidth: true;
                }
            }
        }
    }

    Component {
        id: footerView;
        Item {
            id: footerRootItem;
            width: parent.width;
            height: 30;
            property alias text: txt.text;
            signal clean();
            signal add();

            Text {
                id: txt;
                anchors.left: parent.left;
                anchors.top: parennt.top;
                anchors.bottom: parent.bottom;
                width: parent.width;
                font.italic: true;
                color: "blue";
                height: 30;
                verticalAlignment: Text.AlignVCenter;
            }
            Button {
                id: clearAll;
                anchors.right: parent.right;
                anchors.verticalCenter: parent.verticalCenter;
                text: "Clear";
                onClicked: footerRootItem.clean();
            }
            Button {
                id: addOne;
                anchors.right: clearAll.left;
                anchors.rightMargin: 4;
                anchors.verticalCenter: parent.verticalCenter;
                text: "Add";
                onClicked: footerRootItem.add();
            }
        }
    }


    Component {
        id: phoneDelegate;
        Item {
            id: wrapper;
            width: parent.width;
            height: 30;

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    wrapper.ListView.view.currentIndex = index;
                    mouse.accepted = true;
                }
                onDoubleClicked: {
                    wrapper.ListView.view.model.remove(index);
                    mouse.accepted = true;
                }
            }

            RowLayout {
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                spacing: 8;
                Text {
                    id: coll;
                    text: name;
                    color: wrapper.ListView.isCurrentItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.preferredWidth: 120;
                }
                Text {
                    text: cost;
                    color: wrapper.ListView.isCurrenntItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.preferredWidth: 80;
                }
                Text {
                    text: manufacturer;
                    color: wrapper.ListView.isCurrentItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.fillWidth: true;
                }
            }
        }
    }

    ListView {
        id: listView;
        anchors.fill: parent;
        delegate: phoneDelegate;
        model: phoneModel.createObject(listView);
        header: headerView;
        footer: footerView;
        focus: true;
        highlight: Rectangle {
            color: "lightblue";
        }
        onCurrentIndexChanged: {
            if (listView.currentIndex >= 0) {
                var data = listView.model.get(listView.currentIndex);
                listView.footerItem.text = data.name + ", " + data.cost + ", " +
                        data.manufacturer;
            } else {
                listView.footerItem.text = " ";
            }
        }
        function addOne() {
            model.append({
                         "name": "MX3", "cost": "1799", "manufacturer": "MeiZu"
                         });
        }

        Component.onCompleted: {
            listView.footerItem.clean.connect(listView.model.clear);
            listView.footerItem.add.connect(listView.addOne);
        }
    }
}
