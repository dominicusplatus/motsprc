#ifndef TSPDROUTEINIT_H
#define TSPDROUTEINIT_H

#include "tspbaseextlib.h"
#include "MOEO/tspdroute.h"

class TspDRouteInit : public eoInit <TspDRoute> {

public :

  void operator () (TspDRoute & __route) ;

} ;

#endif // TSPDROUTEINIT_H
