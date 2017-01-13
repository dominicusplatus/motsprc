#include "tspdualsolverresultsparetosurfaceviewmodel.h"


TspDualSolverResultsParetoSurfaceViewModel::TspDualSolverResultsParetoSurfaceViewModel(QObject *parent) : QAbstractListModel(parent)
{
 //  m_vertices = new  QList<QSurfaceModelResultVertexTsp>();
}

 QHash<int, QByteArray> TspDualSolverResultsParetoSurfaceViewModel::roleNames() const
 {
     QHash<int, QByteArray> roles;
        roles[Length] = "length";
        roles[Cost] = "cost";
        roles[Generation] = "generation";
        return roles;
 }

QVariant TspDualSolverResultsParetoSurfaceViewModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    QString qs = "testdata";
    if(role==Length){
        qs = "length";
    }
    else if ( role== Cost){
        qs = "cost";
    }
    else if (role == Generation )
    {
      qs = "generation";
    }
    QVariant qv(qs);

    return qv;
}

bool TspDualSolverResultsParetoSurfaceViewModel::setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role)
{
    if (value != headerData(section, orientation, role)) {
        emit headerDataChanged(orientation, section, section);
        return true;
    }
    return false;
}

int TspDualSolverResultsParetoSurfaceViewModel::rowCount(const QModelIndex &parent) const
{
     return 1;  // m_vertices.size();
}


void TspDualSolverResultsParetoSurfaceViewModel::reloadVertices()
{
    m_vertices.clear();
    TspDualEval eval;

    for (unsigned geninc = 0; geninc<TspParetoOptimalGenerationRoutes.size();geninc++)
        {
            QSurfaceModelResultVertexTsp* vert = new QSurfaceModelResultVertexTsp();
            vert->setGeneration(geninc);
            //TspParetoOptimalGenerationPopulations
            TspDRoute route = TspParetoOptimalGenerationRoutes[geninc];
            double rcost = eval.cost(route);
            double rlength = eval.length(route);
            vert->setCost(rcost);
            vert->setLength(rlength);
            m_vertices.push_back(vert);
        }
}

QVariant TspDualSolverResultsParetoSurfaceViewModel::data(const QModelIndex &index, int role) const
{
    if(index.row() > 1){
        return QVariant();
    }

    QVariant res;
    QSurfaceModelResultVertexTsp* vert = m_vertices[index.row()];

    if(role==Length){
        res =vert->getLength();   //eval.length(pop[index.row()]);
    }
    else if ( role== Cost){
        res = vert->getCost(); //eval.cost(pop[index.row()]);
    }
    else if (role == Generation )
    {
        res = vert->getGeneration();        //index.row();
    }
    return res;
}

void TspDualSolverResultsParetoSurfaceViewModel::updateData()
{
    this->beginResetModel();
        reloadVertices();
    this->endResetModel();
}


