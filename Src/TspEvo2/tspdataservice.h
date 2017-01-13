#ifndef TSPDATASERVICE_H
#define TSPDATASERVICE_H

#include <QObject>

#include <QObject>
#include "QVector"
#include <QtCore/QAbstractTableModel>
#include <QtCore/QHash>
#include <QtCore/QRect>

#include <eoEasyEA.h>
#include <eoGenContinue.h>
#include <eoStochTournamentSelect.h>
#include <eoSGATransform.h>
#include <eoSelectNumber.h>
#include <moeo>
#include <utils/checkpointing>
#include <eoOp.h> // for eoInit
#include <eoPersistent.h>
#include <eoInit.h>
#include <utils/rnd_generators.h>  // for shuffle method

#include "MOEO/tspdroute.h"

extern std::vector<std::vector <TspDRoute*>> TspRouteHistory;
extern std::vector<eoPop <TspDRoute>> TspRoutePopulationsHistory;
extern QList<TspDRoute> TspParetoOptimalGenerationRoutes;
extern std::vector<std::vector <TspDRoute>>  TspParetoOptimalGenerationPopulations;

extern  eoPop <TspDRoute> TspRoutes;
extern  QList<TspDRoute> BestTspRoutes;

extern  qreal minimumCostPath;
extern  qreal maximumCostPath;

extern  qreal minimumCostLength;
extern  qreal maximumCostLength;

extern std::vector<std::vector<qreal>> lengthHistory;
extern std::vector<std::vector<qreal>> costHistory;

extern int tspGenerations;
extern int tspPopSize;

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
