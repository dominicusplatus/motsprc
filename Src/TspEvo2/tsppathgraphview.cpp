#include "tsppathgraphview.h"
#include "moroutegraph.h"
#include "tspdualeval.h"

//![0]
TspPathGraphView::TspPathGraphView(QQuickItem *parent): QQuickPaintedItem(parent)
{
       //QLinearGradient gradient(QPointF(50, -20), QPointF(80, 20));
       //gradient.setColorAt(0.0, Qt::red);
       //gradient.setColorAt(1.0, Qt::green);

       background = QBrush(Qt::transparent);
       circleBrush = QBrush(Qt::transparent);

       circlePen = QPen(Qt::black);
       circlePen.setWidth(1);

       textPen = QPen(Qt::cyan);
       textFont.setPointSize(16);
}
//![0]

 int TspPathGraphView::getIndex()
 {
    return m_index;
 }

 void TspPathGraphView::setIndex(int id)
 {
    m_index = id;
    emit indexChanged(m_index);
 }

 int TspPathGraphView::length()
{
    return m_length;
}

void TspPathGraphView::paint(QPainter *painter)
{
    QColor color = QColor("#439911");
    QPen pen(color, 2);
    painter->setPen(pen);
    painter->setRenderHints(QPainter::Antialiasing, true);
     m_painter = painter;

     QPen GraphPen;
       QPen GraphComplementPen;
       QPen VerticleDescPen;

       GraphPen = QPen(Qt::black);
       GraphPen.setWidth(1);

       GraphComplementPen = QPen(Qt::red);
       GraphComplementPen.setWidth(1);

       VerticleDescPen = QPen(Qt::darkGreen);
       VerticleDescPen.setWidth(1);

       textFont.setPointSize(16);
       painter->save();
       painter->setBrush(circleBrush);
       painter->setPen(GraphPen);
       painter->setFont(textFont);
       int verts = MORouteGraph::size();

       if ( verts > 0)
       {
           QVector<QPoint> vertPos;
           int frameWidth = 1024/2, frameHeight = 768/2;

           //draw verticles
           int vertX = 0 , vertY = 0;
           int vertNo = 0;

           //get first route
           if(BestTspRoutes.size() < 1){
               return;
           }
           TspDRoute rt = BestTspRoutes[m_index];

           if(rt.size() < verts){
               return;
           }

           int startX = 0;
           int startY = 0;
           //draw graph
           QPoint from, to, prev;
           painter->setPen(GraphPen);


              //store first point
           std::pair <double, double> coordsFrom = MORouteGraph::getCityCoords(rt[0]);
           prev.setX(startX + coordsFrom.first);
           prev.setY(startY + coordsFrom.second);
           painter->drawText( prev, QString::number(0) );

           int sumLen = 0;

           for (vertNo = 1; vertNo < verts; vertNo++)
           {
               to = QPoint();
              std::pair <double, double> coordsTo = MORouteGraph::getCityCoords(rt[vertNo]);
               to.setX( startX + coordsTo.first );
               to.setY( startY + coordsTo.second );
               painter->drawText( to, QString::number(vertNo) );
               painter->drawLine(prev, to);
               prev = to;
           }

           //last to first
           to.setX(startX+coordsFrom.first);
           to.setY(startY+coordsFrom.second);
           painter->drawLine(prev, to);

           TspDualEval eval;
           double len1 = eval.length(rt);
           m_length = len1;

           QPoint resPt;
           resPt.setX(startX + 170);
           resPt.setY(startY + 170);
            painter->drawText( resPt,QString("Length: ")+ QString::number(len1) );

       }


}

//![1]
