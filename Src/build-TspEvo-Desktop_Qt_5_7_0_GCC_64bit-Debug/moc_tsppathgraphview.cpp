/****************************************************************************
** Meta object code from reading C++ file 'tsppathgraphview.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../TspEvo/tsppathgraphview.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tsppathgraphview.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_TspPathGraphView_t {
    QByteArrayData data[7];
    char stringdata0[56];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TspPathGraphView_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TspPathGraphView_t qt_meta_stringdata_TspPathGraphView = {
    {
QT_MOC_LITERAL(0, 0, 16), // "TspPathGraphView"
QT_MOC_LITERAL(1, 17, 6), // "redraw"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 5), // "paint"
QT_MOC_LITERAL(4, 31, 9), // "QPainter*"
QT_MOC_LITERAL(5, 41, 7), // "painter"
QT_MOC_LITERAL(6, 49, 6) // "length"

    },
    "TspPathGraphView\0redraw\0\0paint\0QPainter*\0"
    "painter\0length"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TspPathGraphView[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x02 /* Public */,
       3,    1,   30,    2, 0x02 /* Public */,
       6,    0,   33,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4,    5,
    QMetaType::Int,

       0        // eod
};

void TspPathGraphView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TspPathGraphView *_t = static_cast<TspPathGraphView *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->redraw(); break;
        case 1: _t->paint((*reinterpret_cast< QPainter*(*)>(_a[1]))); break;
        case 2: { int _r = _t->length();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject TspPathGraphView::staticMetaObject = {
    { &QQuickPaintedItem::staticMetaObject, qt_meta_stringdata_TspPathGraphView.data,
      qt_meta_data_TspPathGraphView,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *TspPathGraphView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TspPathGraphView::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_TspPathGraphView.stringdata0))
        return static_cast<void*>(const_cast< TspPathGraphView*>(this));
    return QQuickPaintedItem::qt_metacast(_clname);
}

int TspPathGraphView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QQuickPaintedItem::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
