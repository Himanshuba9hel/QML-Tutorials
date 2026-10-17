import QtQuick 2.0

Rectangle {
    width: 900; height: 600
    gradient: Gradient {
            GradientStop { position: 0; color: "#689BA6" }
            GradientStop { position: 35/100; color: "#C7BEAE" }
            GradientStop { position: 50/100; color: "#F2B56B" }
            GradientStop { position: 60/100; color: "#F2935C" }
            GradientStop { position: 80/100; color: "#BF5E3B" }
            GradientStop { position: 100/100; color: "#A66253" }
    }

    Rectangle {
        width: 110
        height: 110
        radius: this.width/2
        x: (parent.width - this.width)/2
        y: (parent.height - this.height)/2
        z: 1
        color: "white"
        opacity: 1
        Rectangle {
            width: 160
            height: 160
            radius: this.width/2
            x: (parent.width - this.width)/2
            y: (parent.height - this.height)/2
            z: 2
            color: "white"
            opacity: 60/100
            Rectangle {
                width: 240
                height: 240
                radius: this.width/2
                x: (parent.width - this.width)/2
                y: (parent.height - this.height)/2
                z: 3
                color: "white"
                opacity: 40/100
            }
        }
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 - 100
        y: (parent.height - this.height)/2 + 100
        color: "white"
        opacity: 0.80
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 + 100
        y: (parent.height - this.height)/2 - 200
        color: "white"
        opacity: 0.80
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 + 300
        y: (parent.height - this.height)/2 + 120
        color: "white"
        opacity: 0.80
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 - 234
        y: (parent.height - this.height)/2 - 230
        color: "white"
        opacity: 0.80
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 + 310
        y: (parent.height - this.height)/2 - 42
        color: "white"
        opacity: 0.80
    }

    Rectangle {
        width: 140
        height: 40
        radius: this.height/2
        x: (parent.width - this.width)/2 - 345
        y: (parent.height - this.height)/2 + 245
        color: "white"
        opacity: 0.80
    }
}
