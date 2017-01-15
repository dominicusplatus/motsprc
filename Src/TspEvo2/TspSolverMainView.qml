import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Controls 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtDataVisualization 1.0
import QtQuick.Window 2.2
import QtCharts 2.1
import com.tspevo.data 1.0

Rectangle {
    id: mainView
    width: parent.width
    height : parent.height

    property TspEvoSolverViewModel solverModel : TspEvoSolverViewModel{}
    property TspDualSolverResultSurfaceViewModel surfaceModel : TspDualSolverResultSurfaceViewModel{}

    GridLayout {
        id: gridLayout
        columns: 2
        rows : 2
        width: parent.width
        height : parent.height

        //Result graphs 4 best
        Rectangle {
            width: parent.width *0.5
            height : parent.height *0.5


            GridLayout {
                id: gridLayoutGraphs
                columns: 2
                rows : 2
                rowSpacing: 0
                columnSpacing: 0
                width: parent.width
                height : parent.height

                Rectangle {
                    width: parent.width *0.5
                    height : parent.height *0.5
                    color: "white"

                    TspPathGraphView
                    {
                        id: graphView1
                        width: parent.width
                        height : parent.height
                        fillColor: "transparent"
                        //population: solverModel.population

                    }

                }

                Rectangle {
                    width: parent.width *0.5
                    height : parent.height *0.5
                    color: "white"

                    TspPathGraphView
                    {
                        id: graphView2
                        width: parent.width
                        height : parent.height
                        fillColor: "transparent"
                        //population: solverModel.population

                    }

                }

                Rectangle {
                    width: parent.width *0.5
                    height : parent.height *0.5
                    color: "white"

                    TspPathGraphView
                    {
                        id: graphView3
                        width: parent.width
                        height : parent.height
                        fillColor: "transparent"
                        //population: solverModel.population

                    }

                }

                Rectangle {
                    width: parent.width *0.5
                    height : parent.height *0.5
                    color: "white"

                    TspPathGraphView
                    {
                        id: graphView4
                        width: parent.width
                        height : parent.height
                        fillColor: "transparent"
                        //population: solverModel.population

                    }

                }

            }
        }

        //Population fitness history pareto
        Rectangle {
            width: parent.width *0.5
            height : parent.height *0.5

            ChartView {
                title: "TSP generation history"
                anchors.fill: parent
                antialiasing: true

                ValueAxis {
                        id: xAxisPopSize
                        min: 0
                        max: solverModel.generations
                    }

                ValueAxis {
                        id: yAxisLength
                        min: solverModel.fitnessRangeStart
                        max: solverModel.fitnessRangeEnd
                    }
                ValueAxis {
                        id: yAxisCost
                        min: solverModel.costsRangeStart
                        max: solverModel.costsRangeEnd
                    }


                LineSeries {
                    id: lineone
                    name: "Length"
                    axisX: xAxisPopSize
                    axisY: yAxisLength

                }

                VXYModelMapper{
                    model: solverModel    //TspEvoSolverViewModel{}  //model   //TspEvoFitnessHistoryDataModel{}
                    series: lineone
                    xColumn: 0
                    yColumn: 1
                }


                LineSeries {
                    id: lineone2
                    name: "Cost"
                    axisX: xAxisPopSize
                    axisY: yAxisCost

                }
                VXYModelMapper{
                    model: solverModel    //TspEvoSolverViewModel{}  //model   //TspEvoFitnessHistoryDataModel{}
                    series: lineone2
                    xColumn: 2
                    yColumn: 3
                }

            }

        }

        //Generations 3d view
        Rectangle {
            width: parent.width *0.5
            height : parent.height *0.5
            border.color: scatterGraph.theme.gridLineColor
            border.width: 2

            Item {
                id: dataView
                anchors.bottom: parent.bottom
                //! [9]
                width: parent.width
                height: parent.height
                //! [8]

                //! [2]
                Scatter3D {
                    id: scatterGraph
                    width: dataView.width
                    height: dataView.height
                    //! [2]
                    //! [3]
                    theme: Theme3D {
                        type: Theme3D.ThemeDigia
                        font.pointSize: 40
                    }

                    shadowQuality: AbstractGraph3D.ShadowQualitySoftLow
                    //! [3]
                    //! [6]
                    axisX.segmentCount: 3
                    axisX.subSegmentCount: 2
                    axisX.labelFormat: "%.2f"
                    axisZ.segmentCount: 2
                    axisZ.subSegmentCount: 2
                    axisZ.labelFormat: "%.2f"
                    axisY.segmentCount: 2
                    axisY.subSegmentCount: 2
                    axisY.labelFormat: "%.2f"

                    Scatter3DSeries {
                        id: scatterSeries
                         mesh: Abstract3DSeries.MeshCone
                        itemLabelFormat: "Series 1: X:@xLabel Y:@yLabel Z:@zLabel"

                        ItemModelScatterDataProxy {
                            itemModel:  surfaceModel    //dataModel
                            xPosRole: "cost"
                            yPosRole: "length"
                            zPosRole: "generation"
                        }

                        //surfaceParetoModel
                    }
                }

        }
        }

        //Data input ctrl
        Rectangle {
            width: parent.width *0.5
            height : parent.height *0.5

            GridLayout {
                width: parent.width
                height : parent.height

                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                columns: 2
                rows : 9

                Label {
                    text: "Algorithm"
                }

                ComboBox {
                    currentIndex: 1
                    textRole: "text"
                    model: ListModel {
                        id: cbItems2
                        ListElement { text: "MOGA";   param: 1; }
                        ListElement { text: "NSGA";     param: 2; }
                        ListElement { text: "NSGA-II";   param: 3; }
                        ListElement { text: "SPEA2";  param: 4; }
                        ListElement { text: "IBEA";   param: 5;}
                        ListElement { text: "SEEA";   param: 6;}
                    }
                    width: 200
                    onCurrentIndexChanged: {
                        solverModel.SetMethod( cbItems2.get(currentIndex).param);
                    }

                }


                Label {
                    text: "Dataset"
                }

                ComboBox
                {
                    currentIndex: 1
                    textRole: "text"
                    model: ListModel {
                        id: cbItems266
                        ListElement { text: "ALI535";   param: 1;   }
                        ListElement { text: "ELI101";     param: 2; }
                        ListElement { text: "PR2392";   param: 3;   }
                        ListElement { text: "RL5915";  param: 4;    }
                        ListElement { text: "USA13509";   param: 5; }
                        ListElement { text: "TEST1";   param: 6;     }
                        ListElement { text: "TEST2";   param: 7;     }
                    }
                    width: 200
                    onCurrentIndexChanged: {
                        solverModel.SetDataset( cbItems266.get(currentIndex).param);
                    }

                }




                Label {
                    text: "Population size"
                }

                SpinBox {
                    id: spinboxPopSize
                    value : solverModel.populationSize
                    from : 1
                    to : 200
                    stepSize : 5
                    onValueChanged : {
                              solverModel.setpopulationSize(spinboxPopSize.value);
                    }
                }


                Label {
                    text: "Generations"
                }

                SpinBox {
                    id: spinboxGenerations
                    value : solverModel.generations
                    from : 1
                    to : 2000
                    stepSize : 10
                    onValueChanged : {
                              solverModel.setGenerations(spinboxGenerations.value);
                    }
                }


                Label {
                    text: "Mutation probability %"
                }
                SpinBox {
                    id: spinboxMutProb
                    value : solverModel.mutationProb
                    from : 0
                    to : 100
                    stepSize : 5
                }



                Label {
                    text: "Crossover probability %"
                }

                SpinBox {
                    id: spinboxCrossProb
                    value : solverModel.crossoverProb
                    from : 0
                    to : 100
                    stepSize : 5
                }


                Label {
                    text: "Start"
                }

                Button {
                    width : parent.width * 0.6
                    height : parent.height * 0.2
                    text: "Solve"
                    onClicked: {
                        solverModel.SolveMOEO();
                      //  solverModel.GetResult();
                        graphView1.setIndex(0);
                        graphView1.update();

                        graphView2.setIndex(1);
                        graphView2.update();

                        graphView3.setIndex(2);
                        graphView3.update();

                        graphView4.setIndex(3);
                        graphView4.update();

                        surfaceModel.updateData();
                       // TspDualSolverResultSurfaceViewModel.endResetModel();
                    }

                }



                Label {
                    text: "Elapsed (ms) : "
                }


                Label {
                    text: solverModel.elapsed
                }


                /*
                Label {
                    text: "Archive size (SPEA)"
                }

                SpinBox {
                    id: spinboxArchiveSize
                    value : solverModel.m_param_SPEA_Arch
                    from : 0
                    to : 200
                    stepSize : 1
                }


                Label {
                    text: "K (SPEA)"
                }

                SpinBox {
                    id: spinboxkSPEA
                    value : solverModel.m_param_SPEA_K
                    from : 0
                    to : 100
                    stepSize : 1
                }
                */

            }

        }
    }
    //! [0]


}

