import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("My Chat")
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Login {
//            onLoggedIn: {
//                stackView.push(chatForm, {"user": userName});
//            }

//            anchors.fill: parent
        }
    }

//    Component {
//        id: chatForm
//        Chat {

//        }
//    }
}
