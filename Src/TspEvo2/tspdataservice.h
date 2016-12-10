#ifndef TSPDATASERVICE_H
#define TSPDATASERVICE_H

#include "tspbaseextlib.h"
#include "MOEO/tspdroute.h"

extern std::vector<std::vector <TspDRoute*>> TspRouteHistory;
extern std::vector<eoPop <TspDRoute>> TspRoutePopulationsHistory;
extern  eoPop <TspDRoute> TspRoutes;
extern  QList<TspDRoute> BestTspRoutes;

extern  qreal minimumCostPath;
extern  qreal maximumCostPath;

extern  qreal minimumCostLength;
extern  qreal maximumCostLength;

  void DesignateParetoFrontSolutionsForPopulation(int limit,eoPop <TspDRoute> pop);

class TspDataService    //: public QObject
{

public:
     static eoPop <TspDRoute> getPopulation();
    //   explicit TspDataService(QObject *parent = 0);
    static eoPop <TspDRoute> m_population;

private:

};

#endif // TSPDATASERVICE_H
