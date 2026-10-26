import QtQuick

/***** Experiment Collection 1-2 *****/
Rectangle {
    width: 400; height: 400
    color: "#00a3fc"
    /***** Experiment 1 *****/
    /*
    Image {
        x: 150; y:150
        source: "rocket.png"
        // width: 400
        // height: 500
    }
    */

    /***** Experiment 2 *****/

    Image {
        x: 150; y:150
        width: 200; height: 200
        source: "rocket.png"
        fillMode: Image.PreserveAspectFit
    }



}

/***** Experiment 3 *****/
/*
Image {
    id: image
    width: 1000; height: 1000
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    fillMode: Image.PreserveAspectFit
    Rectangle {
        color: "red"
        anchors { left: parent.left; bottom: parent.bottom }
        height: 50
        width: parent.width * image.progress
        visible: image.progress !== 1
    }

    onStatusChanged: console.log(sourceSize)
}
*/

/* **** Experiment 4 **** */

// BorderImage {
//     source: "border-diamonds.png"
//     width: 400; height: 400
//     border.left: 30
//     border.top: 30
//     border.bottom: 30
//     border.right: 30
//     // Part 1
//     // horizontalTileMode: BorderImage.Repeat
//     // verticalTileMode: BorderImage.Repeat

//     // Part 2
//     // horizontalTileMode: BorderImage.Stretch
//     // verticalTileMode: BorderImage.Stretch

//     // Part 3
//     // horizontalTileMode: BorderImage.Repeat
//     // verticalTileMode: BorderImage.Stretch

//     // Part 4
//     horizontalTileMode: BorderImage.Round
//     verticalTileMode: BorderImage.Round
// }
