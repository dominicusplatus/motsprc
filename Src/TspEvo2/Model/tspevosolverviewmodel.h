#ifndef TSPEVOSOLVERVIEWMODEL_H
#define TSPEVOSOLVERVIEWMODEL_H

#include "tspsolver.h"

typedef enum{
    MOGA =1,
    NSGA,
    NSGAII,
    SPEA2,
    IBEA,
    SEEA

}MoSolverAlgorithm;

typedef enum{
    ALI535=1,
    ELI101,
    PR2392,
    RL5915,
    USA13509,
    ATH1,
    ATH2

}TspDataset;

class TspEvoSolverViewModel : public QAbstractTableModel
{
    Q_OBJECT
    Q_PROPERTY(eoPop <TspDRoute> population READ getPopulation WRITE setPopulation NOTIFY populationChanged)
    Q_PROPERTY(qreal populationSize READ getpopulationSize WRITE setpopulationSize NOTIFY populationSizeChanged)
    Q_PROPERTY(qreal generations READ getGenerations WRITE setGenerations NOTIFY generationsChanged)
    Q_PROPERTY(qreal mutationProb READ getMutationProb WRITE setMutationProb NOTIFY mutationProbChanged)

    Q_PROPERTY(qreal fitnessRangeStart READ getfitnessRangeStart WRITE setfitnessRangeStart NOTIFY fitnessRangeStartChanged)
    Q_PROPERTY(qreal fitnessRangeEnd READ getfitnessRangeEnd WRITE setfitnessRangeEnd NOTIFY fitnessRangeEndChanged)

    Q_PROPERTY(qreal costsRangeStart READ getcostsRangeStart WRITE setcostsRangeStart NOTIFY costsRangeStartChanged)
    Q_PROPERTY(qreal costsRangeEnd READ getcostsRangeEnd WRITE setcostsRangeEnd NOTIFY costsRangeEndChanged)

    Q_PROPERTY(TspEvoFitnessHistoryDataModel* historyModel READ gethistoryModel WRITE sethistoryModel NOTIFY historyModelChanged)
public:
    explicit TspEvoSolverViewModel(QObject *parent = 0);
    Q_INVOKABLE void Solve();
    Q_INVOKABLE void SolveMOEO();
    Q_INVOKABLE  int GetResult();
    Q_INVOKABLE  void SetMethod(int id);
    Q_INVOKABLE  void SetDataset(int id);
    bool IsSolving();
    eoPop <TspDRoute> getPopulation();
    qreal getpopulationSize();
    qreal getGenerations();
    qreal getMutationProb();
    qreal getfitnessRangeStart();
    qreal getfitnessRangeEnd();
    qreal getcostsRangeStart();
    qreal getcostsRangeEnd();
    TspEvoFitnessHistoryDataModel* gethistoryModel();
    void UpdateDataRange();
    TspDRoute GetPopulationBestRoute(eoPop<TspDRoute> pop);
    void ProcessPopulationHistory();

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    int columnCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
    Qt::ItemFlags flags(const QModelIndex &index) const;
    void bindToModel( QList<QVector<qreal>> data);

    void addMapping(QString color, QRect area);
    void clearMapping() { m_mapping.clear(); }



signals:
    int DidSolveGeneration();
    void populationChanged(const eoPop <TspDRoute> &newPopulation);
    void populationSizeChanged(const qreal &newSize);
    void generationsChanged(const qreal &newSize);
    void mutationProbChanged(const qreal &newSize);

    void fitnessRangeStartChanged(const qreal &newSize);
    void fitnessRangeEndChanged(const qreal &newSize);
    void costsRangeStartChanged(const qreal &newSize);
    void costsRangeEndChanged(const qreal &newSize);

    void historyModelChanged(const TspEvoFitnessHistoryDataModel* &newSize);
public slots:
    void setPopulation(eoPop <TspDRoute> a);
    void setpopulationSize(qreal a);
    void setGenerations(qreal a);
    void setMutationProb(qreal a);

    void setfitnessRangeStart(qreal a);
    void setfitnessRangeEnd(qreal a);
    void setcostsRangeStart(qreal a);
    void setcostsRangeEnd(qreal a);


    void sethistoryModel(TspEvoFitnessHistoryDataModel* a);
private:
   // eoPop <Route> m_population;
    qreal m_populationsize;
    qreal m_generations;
    qreal m_mutationProb;
    qreal m_fitnessRangeStart;
    qreal m_fitnessRangeEnd;
    qreal m_costsRangeStart;
    qreal m_costsRangeEnd;
    TspEvoFitnessHistoryDataModel m_historyModel;

    QList<QVector<qreal>> lengthHistory;
    QList<QVector<qreal>> costHistory;
    QList<qreal> moeoRouteLengthBestHistory;
    QList<qreal> moeoRouteCostBestHistory;
    QList<TspDRoute> moeoBestRouteHistory;
    QList<qreal> moeoFitnessAverageHistory;
    QHash<QString, QRect> m_mapping;
    MoSolverAlgorithm solverAlgorithm = IBEA;
    TspDataset dataSet = ATH2;

    int m_columnCount;
    int m_rowCount;
  //  eoEasyEA <Route> ea;
  //  eoGenContinue <Route> cont;
};

#endif // TSPEVOSOLVERVIEWMODEL_H
