import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    Item {
        id: item
        anchors.centerIn: parent
        width: parent.width; height: 100
        Image {
            anchors.centerIn: parent
            source: "image://theme/"+iconPrefix+iconSelected
        }
    }
    Label {
        id:label
        anchors.top: item.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: iconSelected
    }
    tools: ToolBarLayout {
        id: iconTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-back"
            anchors.left: parent.left
            onClicked: pageStack.pop()
        }
    }
}
