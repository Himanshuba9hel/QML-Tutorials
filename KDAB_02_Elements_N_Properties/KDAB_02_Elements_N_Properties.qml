import QtQuick

Item {
    width: 400; height: 300

    Rectangle {
        id: pageRect
        width: 340; height: 240;
        x: (parent.height - this.height)/2
        y: (parent.width - this.width)/2
        color: "lightblue"
    }
    Rectangle {
        width: 60; height: 60;
        x: pageRect.x - 10;
        y: pageRect.y - 10;
        z: -1
        color: "red"
    }
    Rectangle {
        width: 60; height: 60;
        x: pageRect.x + pageRect.width + 10 - this.width;
        y: pageRect.y + pageRect.height + 10 - this.height;
        z: -1
        color: "red"
    }
    Rectangle {
        width: 60; height: 60;
        x: pageRect.x + pageRect.width + 10 - this.width;
        y: pageRect.y - 10;
        z: 1
        color: "red"
    }
    Rectangle {
        width: 60; height: 60;
        x: pageRect.x - 10;
        y: pageRect.y + pageRect.height + 10 - this.height;
        z: 2
        color: "red"
    }

}
