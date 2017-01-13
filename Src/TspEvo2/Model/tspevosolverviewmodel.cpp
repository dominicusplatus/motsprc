#include "tspevosolverviewmodel.h"

#include <QCoreApplication>

 void TspEvoSolverViewModel::SetMethod(int id)
 {
    solverAlgorithm = (MoSolverAlgorithm)id;
 }

 void TspEvoSolverViewModel::SetDataset(int id)
 {
    dataSet = (TspDataset)id;
 }


TspEvoSolverViewModel::TspEvoSolverViewModel(QObject *parent) : QAbstractTableModel(parent)
{
       tspPopSize = 10;
       m_columnCount = 4;
       tspGenerations = 40;
       m_mutationProb = 1.0;
       m_rowCount = tspPopSize;

       //Solve();
}


void TspEvoSolverViewModel::Solve()
{

}

int TspEvoSolverViewModel::GetResult()
{
  return 0;
}

TspDRoute TspEvoSolverViewModel::GetPopulationBestRoute(eoPop<TspDRoute> pop)
{
    //eoPop<TspDRoute> ppop = TspRoutePopulationsHistory[popinc];

    moeoUnboundedArchive<TspDRoute> finalArchive;
    finalArchive(pop);
    return finalArchive[0];


    int result = 0;
     TspDRoute best;

    //get first route
    if(pop.size() < 1){
        return best;
    }

    int verts = MORouteGraph::size();
     best = pop[0];

    int routes = pop.size();
    int rinc = 0;
    for(rinc=0; rinc<routes;rinc++){
        TspDRoute rt = pop[rinc];
        TspDualEval eval;
        double routeLen = eval.length(rt);
        if(routeLen < eval.length(best) ){
            best = rt;
        }

    }

        return  best;
}



void TspEvoSolverViewModel::SolveMOEO()
{
    QString problemPath;
    QString pathRoot = QCoreApplication::applicationDirPath();
    if(dataSet == ALI535){
            MORouteGraph :: load (  (pathRoot+ QString("/benchs/ali535.tsp")).toStdString().c_str() ) ; // Instance
    }
    else if (dataSet == ELI101)
    {
            MORouteGraph :: load ( (pathRoot+ QString("/benchs/eil101.tsp")).toStdString().c_str() ) ; // Instance
    }
    else if (dataSet == PR2392)
    {
            MORouteGraph :: load ((pathRoot+ QString("/benchs/pr2392.tsp")).toStdString().c_str() ) ; // Instance
    }
    else if (dataSet == RL5915)
    {
            MORouteGraph :: load ( (pathRoot+ QString("/benchs/rl5915.tsp")).toStdString().c_str()) ; // Instance
    }
    else if (dataSet == USA13509)
    {
            MORouteGraph :: load ( (pathRoot+ QString("/benchs/usa13509.tsp")).toStdString().c_str() ) ; // Instance
    }
    else if (dataSet == ATH1)
    {
            MORouteGraph :: load ( (pathRoot+ QString("/benchs/test1.tsp")).toStdString().c_str() ) ; // Instance
    }
    else if (dataSet == ATH2)
    {
            MORouteGraph :: load ( (pathRoot+ QString("/benchs/test2.tsp")).toStdString().c_str() ) ; // Instance
    }

        eoState state;                // to keep all things allocated
        TspRoutePopulationsHistory.clear();
        TspRouteHistory.clear();
        BestTspRoutes.clear();

         eoEvalFunc <TspDRoute> * eval;
         eval = new TspDualEval;

         TspDualXover xover;
         TspDualMutation  mutation; // (bounds, INT_P_MUT, 20);

         eoGenContinue<TspDRoute> term(tspGenerations);
         eoEvalFuncCounter<TspDRoute> evalFunc(*eval);
         eoCheckPoint<TspDRoute>* checkpoint;

         eoStdoutMonitor mon;
         checkpoint = new eoCheckPoint<TspDRoute>(term);
         TspGenerationEvaluationCheckpoint popChkpt;
         checkpoint->add(popChkpt);

         eoSGAGenOp < TspDRoute > op(xover, m_crossoverProb, mutation, m_mutationProb);
         moeoAdditiveEpsilonBinaryMetric < TSPObjectiveVector > metric;

         TspDRouteInit drouteInit ; // Sol. Random Init.
         eoPop <TspDRoute> pop(tspPopSize, drouteInit) ; // Population

         if(solverAlgorithm == IBEA ){
                moeoIBEA<TspDRoute> algo(*checkpoint, evalFunc ,op, metric) ;
                 do_run(algo, pop);
         }
         else if (solverAlgorithm == SPEA2 ){
                moeoSPEA2Archive<TspDRoute> arch(m_param_SPEA_Arch);
                moeoSPEA2<TspDRoute> algo(*checkpoint, evalFunc ,xover, m_crossoverProb, mutation, 0.01, arch, m_param_SPEA_K, false);
                  do_run(algo, pop);
         }
         else if (solverAlgorithm == NSGA ){
            moeoNSGA<TspDRoute> algo(*checkpoint, evalFunc ,op);
              do_run(algo, pop);
         }
         else if (solverAlgorithm == NSGAII ){
             moeoNSGAII<TspDRoute> algo(*checkpoint, evalFunc ,op);
              do_run(algo, pop);
         }
         else if (solverAlgorithm == MOGA ){
               //    moeoMOGA (unsigned int _maxGen, eoEvalFunc < MOEOT > & _eval, eoQuadOp < MOEOT > & _crossover, double _pCross, eoMonOp < MOEOT > & _mutation, double _pMut, double _nicheSize = 0.5) :
               moeoMOGA<TspDRoute> algo(*checkpoint, evalFunc ,op, 1) ;
                do_run(algo, pop);
           }

         else{
             return;
         }


         //now designate pareto optimal solutions for each archive
         int popinc = 0;
         TspParetoOptimalGenerationRoutes.clear();
         moeoUnboundedArchive   <TspDRoute> fullArchive; //(4,true);
         //fullArchive.resize(4); //4 best solutions required to display
         for(popinc =0; popinc<tspGenerations;popinc++){
             eoPop<TspDRoute> ppop = TspRoutePopulationsHistory[popinc];
             moeoUnboundedArchive<TspDRoute> finalArchive;
             finalArchive(ppop);
             fullArchive(ppop);
             TspParetoOptimalGenerationRoutes.push_back(finalArchive[0]);

             /*
             for(unsigned rinc =0; rinc<ppop.size();rinc++){
                 if(fullArchive.size()-1>rinc){
                     TspParetoOptimalGenerationPopulations[popinc][rinc] = fullArchive[rinc];
                 }
             }
             */
            // TspParetoOptimalGenerationPopulations.push_back(fullArchive);
         }



         TspRoutes = pop;
         //now update the UI
          beginResetModel();

       m_rowCount = tspGenerations;

       ProcessPopulationHistory();

       endResetModel();

        //designate best solutions for last gen
        DesignateParetoFrontSolutionsForPopulation(4, TspRoutePopulationsHistory[TspRoutePopulationsHistory.size()-1]);

         emit populationChanged(TspRoutes);
         QModelIndex indexA = this->index(0, 0, QModelIndex());
         QModelIndex indexC = this->index(tspGenerations, 1, QModelIndex());

         UpdateDataRange();
         emit dataChanged(indexA, indexC);

}

void  TspEvoSolverViewModel::ProcessPopulationHistory()
{
     moeoRouteLengthBestHistory.clear();
     moeoFitnessAverageHistory.clear();
     moeoRouteCostBestHistory.clear();

     lengthHistory.clear();
     costHistory.clear();
     if(TspRoutePopulationsHistory.size() < 1){
         return;
     }

     //find best fitness for each generation
    int ginc =0;
    for(ginc=0; ginc<TspRoutePopulationsHistory.size();ginc++)
    {
        eoPop<TspDRoute> pop = TspRoutePopulationsHistory[ginc];
        TspDRoute bestroute = GetPopulationBestRoute(pop);
        moeoBestRouteHistory.push_back(bestroute);

        TspDualEval eval;
        double routeLen = eval.length(bestroute);
        double routeCost = eval.cost(bestroute);
        moeoRouteLengthBestHistory.push_back( routeLen );
        moeoRouteCostBestHistory.push_back( routeCost );

        std::vector<qreal> val;
        val.push_back((qreal)ginc);
        val.push_back((qreal)routeLen);
        lengthHistory.push_back(val);

        std::vector<qreal> val2;
        val2.push_back((qreal)ginc);
        val2.push_back((qreal)routeCost);
        costHistory.push_back(val2);

    }
}


bool TspEvoSolverViewModel::IsSolving()
{
    return false;
}

eoPop <TspDRoute> TspEvoSolverViewModel::getPopulation()
{
    return TspRoutes;
}

void TspEvoSolverViewModel::setPopulation(eoPop <TspDRoute> a)
{
   // m_population = a;
}

void TspEvoSolverViewModel::setpopulationSize(qreal a)
{
    tspPopSize = a;
}

void TspEvoSolverViewModel::setGenerations(qreal a)
{
    tspGenerations = a;
}

void TspEvoSolverViewModel::setMutationProb(qreal a)
{
    m_mutationProb = a;
    emit mutationProbChanged(m_mutationProb);
}

void TspEvoSolverViewModel::setkfactor(qreal a)
{
    m_param_SPEA_K = a;
    emit kfactorChanged(m_param_SPEA_K);
}

void TspEvoSolverViewModel::setarchSize(qreal a)
{
    m_param_SPEA_Arch = a;
    emit archSizeChanged(m_param_SPEA_Arch);
}


void TspEvoSolverViewModel::setCrossoverProb(qreal a)
{
    m_crossoverProb = a;
    emit crossoverProbChanged(m_crossoverProb);
}


void TspEvoSolverViewModel::setfitnessRangeStart(qreal a)
{
    m_fitnessRangeStart = a;
}

void TspEvoSolverViewModel::setfitnessRangeEnd(qreal a)
{
    m_fitnessRangeEnd = a;
}

void TspEvoSolverViewModel::setcostsRangeStart(qreal a)
{
    m_costsRangeStart = a;
}

void TspEvoSolverViewModel::setcostsRangeEnd(qreal a)
{
    m_costsRangeEnd = a;
}

 qreal TspEvoSolverViewModel::getpopulationSize()
 {
        return tspPopSize;
 }

 qreal TspEvoSolverViewModel::getGenerations()
 {
        return tspGenerations;
 }

 qreal TspEvoSolverViewModel::getMutationProb()
 {
        return m_mutationProb;
 }

 qreal TspEvoSolverViewModel::getkfactor()
 {
        return m_param_SPEA_K;
 }
 qreal TspEvoSolverViewModel::getarchSize()
 {
        return m_param_SPEA_Arch;
 }


 qreal TspEvoSolverViewModel::getCrossoverProb()
 {
        return m_crossoverProb;
 }


 qreal TspEvoSolverViewModel::getfitnessRangeStart()
 {
        return m_fitnessRangeStart;
 }


 qreal TspEvoSolverViewModel::getfitnessRangeEnd()
 {
        return m_fitnessRangeEnd;
 }

 qreal TspEvoSolverViewModel::getcostsRangeStart()
 {
        return m_costsRangeStart;
 }

 qreal TspEvoSolverViewModel::getcostsRangeEnd()
 {
        return m_costsRangeEnd;
 }


 TspEvoFitnessHistoryDataModel* TspEvoSolverViewModel::gethistoryModel()
 {
    return &m_historyModel;
 }

 void TspEvoSolverViewModel::sethistoryModel(TspEvoFitnessHistoryDataModel* a)
 {
  //  m_historyModel = a;
 }

 int TspEvoSolverViewModel::rowCount(const QModelIndex &parent) const
 {
     Q_UNUSED(parent)
     return lengthHistory.size();
 }

 int TspEvoSolverViewModel::columnCount(const QModelIndex &parent) const
 {
     Q_UNUSED(parent)
     return m_columnCount;
 }

void TspEvoSolverViewModel::UpdateDataRange()
{

    m_fitnessRangeEnd=0;
    m_fitnessRangeStart  =0;

    m_costsRangeEnd=0;
    m_costsRangeStart = 0;

    maximumCostPath = 0;
    minimumCostLength = 0;

    int pinc =0;
    for(pinc =0; pinc < lengthHistory.size(); pinc++){
         std::vector<qreal> val = lengthHistory[pinc];
         qreal len = val[1];
         if( (int)m_fitnessRangeEnd==0){
            m_fitnessRangeEnd = len;
            m_fitnessRangeStart = len;
            minimumCostLength= len;
            maximumCostLength = len;
            emit fitnessRangeStartChanged(m_fitnessRangeStart);
            emit fitnessRangeEndChanged(m_fitnessRangeEnd);
         }

         if(len<m_fitnessRangeStart){
             m_fitnessRangeStart =len;
             minimumCostLength = len;
             emit fitnessRangeStartChanged(m_fitnessRangeStart);
         }
         if( (len > m_fitnessRangeEnd)){
             m_fitnessRangeEnd = len;
             maximumCostLength = len;
             emit fitnessRangeEndChanged(m_fitnessRangeEnd);
         }

    }


    for(pinc =0; pinc < costHistory.size(); pinc++){
         std::vector<qreal> val = costHistory[pinc];
         qreal len = val[1];
         if( m_costsRangeEnd==0 ){
            m_costsRangeEnd = len;
            m_costsRangeStart = len;

            minimumCostPath = len;
            maximumCostPath = len;
            emit costsRangeStartChanged(m_costsRangeStart);
            emit costsRangeEndChanged(m_costsRangeEnd);
         }

         if(len<m_costsRangeStart){
             m_costsRangeStart =len;
             minimumCostPath = len;
             emit costsRangeStartChanged(m_costsRangeStart);
         }
         if( (len > m_costsRangeEnd)){
             m_costsRangeEnd = len;
             maximumCostPath = len;
             emit costsRangeEndChanged(m_costsRangeEnd);
         }

    }


}

 QVariant TspEvoSolverViewModel::headerData(int section, Qt::Orientation orientation, int role) const
 {
     if (role != Qt::DisplayRole)
         return QVariant();

     if (orientation == Qt::Horizontal) {
         if (section % 2 == 0)
             return "x";
         else
             return "y";
     } else {
         return QString("%1").arg(section + 1);
     }
 }

 QVariant TspEvoSolverViewModel::data(const QModelIndex &index, int role) const
 {
     if(index.column() < 2){
         if(index.row() > lengthHistory.size()-1){
             return  QVariant();
         }
         if (role == Qt::DisplayRole) {
             return lengthHistory[index.row()][index.column()];     //->at(index.column());
         } else if (role == Qt::EditRole) {
             return lengthHistory[index.row()][index.column()]; //->at(index.column());
         } else if (role == Qt::BackgroundRole) {
             foreach (QRect rect, m_mapping) {
                 if (rect.contains(index.column(), index.row()))
                     return QColor(m_mapping.key(rect));
             }
             // cell not mapped return white color
             return QColor(Qt::white);
         }
     }else{
         if(index.row() > costHistory.size()-1){
             return  QVariant();
         }
         if (role == Qt::DisplayRole) {
             return costHistory[index.row()][index.column()-2];     //->at(index.column());
         } else if (role == Qt::EditRole) {
             return costHistory[index.row()][index.column()-2]; //->at(index.column());
         } else if (role == Qt::BackgroundRole) {
             foreach (QRect rect, m_mapping) {
                 if (rect.contains(index.column()-2, index.row()))
                     return QColor(m_mapping.key(rect));
             }
             // cell not mapped return white color
             return QColor(Qt::white);
         }
     }


     return QVariant();
 }

 bool TspEvoSolverViewModel::setData(const QModelIndex &index, const QVariant &value, int role)
 {
     if (index.isValid() && role == Qt::EditRole) {
         lengthHistory[index.row()][index.column()] =  value.toDouble();
         emit dataChanged(index, index);
         return true;
     }
     return false;
 }

 Qt::ItemFlags TspEvoSolverViewModel::flags(const QModelIndex &index) const
 {
     return QAbstractItemModel::flags(index) | Qt::ItemIsEditable;
 }

 void TspEvoSolverViewModel::addMapping(QString color, QRect area)
 {
     m_mapping.insertMulti(color, area);
 }



