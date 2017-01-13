#ifndef TSPDUALSOLVERRESULTSPARETOSURFACEVIEWMODEL_H
#define TSPDUALSOLVERRESULTSPARETOSURFACEVIEWMODEL_H


#include <QObject>
#include <QAbstractListModel>
#include <QHash>
#include <QByteArray>

#include "tspdataservice.h"
#include "moroutegraph.h"
#include "tspdualeval.h"
#include "qsurfacemodelresultvertextsp.h"
#include "tspdualsolverresultsurfaceviewmodel.h"



class TspDualSolverResultsParetoSurfaceViewModel  : public  QAbstractListModel
{
    Q_OBJECT

public:
    explicit TspDualSolverResultsParetoSurfaceViewModel(QObject *parent = 0);

        QHash<int, QByteArray> roleNames() const Q_DECL_OVERRIDE;
        int rowCount(const QModelIndex &parent = QModelIndex()) const Q_DECL_OVERRIDE;
       QVariant data(const QModelIndex &item, int role = Qt::DisplayRole) const Q_DECL_OVERRIDE;
       QVariant headerData(int section, Qt::Orientation orientation,

                           int role = Qt::DisplayRole) const Q_DECL_OVERRIDE;

       bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value,
                          int role = Qt::EditRole) Q_DECL_OVERRIDE;


       Q_INVOKABLE void updateData();

private :
    QList<QSurfaceModelResultVertexTsp*> m_vertices;
    void reloadVertices();

};


#endif // TSPDUALSOLVERRESULTSPARETOSURFACEVIEWMODEL_H
