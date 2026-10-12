import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Trampolic Behaviour"

    Rectangle {
        id: sky
        width: 800
        height: 20
        color: "lightblue"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }

    Rectangle {
        id: trampoline
        width: 800
        height: 100
        color: "green"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }

    Rectangle {
        id: ball
        width: 50
        height: 50
        radius: 25
        color: "red"
        anchors.horizontalCenter: parent.horizontalCenter
        y: 20
        Behavior on y {
            SpringAnimation {
                id: behaviorAnimation
                spring: 5
                damping: 0.1
            }
        }
    }
    Text {
        anchors.centerIn: parent
        text: "Click Me"
        font.pixelSize: 25
        color: "white"
        visible: !behaviorAnimation.running
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(ball.y === 20) {
                ball.y = trampoline.y - ball.height;
            } else
            {
                ball.y = 20;
            }
        }
    }
}
