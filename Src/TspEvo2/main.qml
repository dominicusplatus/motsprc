import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2

import com.tspevo.data 1.0

ApplicationWindow {

    visible: true
    width: 1200 // Screen.desktopAvailableWidth
    height: 800 // Screen.desktopAvailableHeight * 0.9


    title: "ATH MOTSP"



    Rectangle{
        width: 1200 // Screen.desktopAvailableWidth
        height: 800 // Screen.desktopAvailableHeight * 0.9

        TspSolverMainView {
            width:  parent.width
            height:   parent.height

        }
    }

}
