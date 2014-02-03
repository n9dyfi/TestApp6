import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    property string iconPrefix: "icon-m-messaging-smiley-"
    property string iconNames: "angry;cool;cry;evil;grin;happy;heart;kiss;lips-sealed;sad;sarcastic;skeptical;sleepy;surprised;tongue;very-happy;wink;worried"
    property string iconSelected: "angry"

    initialPage: gridPage

    GridPage {
        id: gridPage
    }

    IconPage {
        id: iconPage
    }

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Sample menu item") }
        }
    }
}
