import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

Item {
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10
        width: 300
        TextField {
            Layout.fillWidth: true
            placeholderText: "Введит ваш ник"
        }
        Button {
            text: "Войти"
            Layout.alignment: Layout.Center
            Material.background: "#fff"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

