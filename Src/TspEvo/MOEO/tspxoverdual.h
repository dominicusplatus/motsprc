#ifndef TSPXOVERDUAL_H
#define TSPXOVERDUAL_H

#include "tspbaseextlib.h"
#include "MOEO/tspdroute.h"

template <class T> void mix(std::vector<T> &__vect)
{
    for(unsigned i=0;i<__vect.size();i++){
        std::swap(__vect[i],__vect[rng.random(__vect.size())]);
    }

}

/** Partial Mapped Crossover */
class TspDualXover : public eoQuadOp <TspDRoute> {

public :

  bool operator () (TspDRoute & __route1, TspDRoute & __route2) ;

private :

  void repair (TspDRoute & __route, unsigned __cut1, unsigned __cut2) ;
} ;



#endif // TSPXOVERDUAL_H
