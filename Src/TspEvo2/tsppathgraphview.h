#ifndef TSPPATHGRAPHVIEW_H
#define TSPPATHGRAPHVIEW_H

#include <QPainter>
#include <QtQuick/QQuickPaintedItem>
#include <QColor>

#include <eoEasyEA.h>
#include <eoGenContinue.h>
#include <eoStochTournamentSelect.h>
#include <eoSGATransform.h>
#include <eoSelectNumber.h>
#include <moeo>

#include "tspdataservice.h"

class TspPathGraphView : public QQuickPaintedItem
{
    Q_OBJECT
//    Q_PROPERTY(Route graph READ graph WRITE setGraph)
   // Q_PROPERTY(eoPop <Route> population READ getPopulation WRITE setPopulation NOTIFY populationChanged)
     Q_PROPERTY(int index READ getIndex WRITE setIndex NOTIFY indexChanged)

public:
    TspPathGraphView(QQuickItem *parent = 0);
    int getIndex();
    Q_INVOKABLE void paint(QPainter *painter);   //
     Q_INVOKABLE int length();

    //void paint();   //QPainter *painter, QPaintEvent *event, int elapsed
    bool DrawComplement;
    bool DrawGraph;
public slots:
    void setIndex(int id);
signals:
    void indexChanged(int id);
private:
    QPainter *m_painter;
    //Route m_route;
    QBrush background;
    QBrush circleBrush;
    QFont textFont;
    QPen circlePen;
    QPen textPen;
    int m_length;

    int m_index; //index of best solutions vector
    //eoPop <Route> m_population;
};

//![0]
//!

#endif // TSPPATHGRAPHVIEW_H
