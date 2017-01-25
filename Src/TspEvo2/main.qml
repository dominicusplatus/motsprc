import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2

import com.tspevo.data 1.0

ApplicationWindow {

    property bool multiMonitor: (Screen.desktopAvailableWidth > Screen.width) ? true : false

    property int dispSizeX: (Screen.desktopAvailableWidth > Screen.width) ? Screen.width : Screen.desktopAvailableWidth
    property int dispSizeY: (Screen.desktopAvailableHeight > Screen.height) ? Screen.height * 0.8 : Screen.desktopAvailableHeight * 0.8


    visible: true
    width: dispSizeX    //Screen.desktopAvailableWidth
    height: dispSizeY   // Screen.desktopAvailableHeight * 0.9


    title: "ATH MOTSP"



    Rectangle{
        width:  dispSizeX   //Screen.desktopAvailableWidth
        height:  dispSizeY  //   Screen.desktopAvailableHeight * 0.9

        TspSolverMainView {
            width:  parent.width
            height:   parent.height

        }
    }

}
