import QtQuick 1.1
import com.nokia.meego 1.0

Page {

    tools: commonTools

    Label {
        id:title
        text: "Please select an icon"
        font.pixelSize: 40
        anchors.left: parent.left; anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: background
        anchors.top: title.bottom
        height: parent.height-title.height;
        width: parent.width
    }

    GridView {
        id: listView
        model: iconNames.split(";")
        delegate: gridDelegate
        cellHeight: 100
        cellWidth: 150
        anchors.top: background.top
        anchors.topMargin: 20
        anchors.left: background.left
        anchors.leftMargin: 20
        width: background.width-30
        height: background.height-10
        clip: true
    }

    Component {
        id: gridDelegate
        Rectangle {
            width: 140
            height: 100
            gradient: Gradient {
                GradientStop { position: 0.0; color: "white"}
                GradientStop { position: 1.0; color: "gray"}
            }
            Text {
                text: modelData
                font.pixelSize: 28
                color: "steelblue"
                anchors.centerIn: parent
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        iconSelected=modelData
                        pageStack.push(iconPage)
                    }
                }
            }

        }

    }
}
