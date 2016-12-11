#include "tspdataservice.h"
#include "moroutegraph.h"
#include "tspdualeval.h"

using namespace std;

  std::vector<std::vector <TspDRoute*>> TspRouteHistory;
  std::vector<eoPop <TspDRoute>> TspRoutePopulationsHistory;

  std::vector<std::vector<qreal>> lengthHistory;
  std::vector<std::vector<qreal>> costHistory;

  eoPop <TspDRoute> TspRoutes;
  QList<TspDRoute> BestTspRoutes;
  QList<TspDRoute> TspParetoOptimalGenerationRoutes;

    qreal minimumCostPath;
    qreal maximumCostPath;

    qreal minimumCostLength;
    qreal maximumCostLength;

     int tspGenerations;
     int tspPopSize;

    void DesignateParetoFrontSolutionsForPopulation(int limit,eoPop <TspDRoute> pop)
    {
        if(limit > pop.size()){
            return;
        }
        BestTspRoutes.clear();

        int result = 0;
         TspDRoute best;

        //get first route
        if(pop.size() < 1){
            return;
        }

        int verts = MORouteGraph::size();
        best = pop[0];

        int routes = pop.size();
        int rinc = 0;
       // eoPop <TspDRoute> routesLeft = pop;
        QList<TspDRoute> routesLeft;
        unsigned routeinc;
        for( routeinc =0; routeinc < pop.size();routeinc++)
        {
            routesLeft.push_back(pop[routeinc]);
        }

        vector<int> selected;
        int rleft = limit;

        do{
            int selinc =0;
            for(rinc=0; rinc<routesLeft.size();rinc++){
                TspDRoute rt = routesLeft[rinc];
                TspDualEval eval;
                double routeLen = eval.length(rt);
                if(routeLen < eval.length(best)  ){
                    best = rt;
                    selinc = rinc;
                    selected.push_back(rinc);
                }

            }
            BestTspRoutes.push_back(best);
            best =  pop[0];
            routesLeft.removeAt(selinc);
            //pop.erase(routesLeft.begin() +selinc);
            rleft-=1;
        }while(rleft >0);


    }
