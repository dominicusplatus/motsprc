#ifndef TSPGENERATIONEVALUATIONCHECKPOINT_H
#define TSPGENERATIONEVALUATIONCHECKPOINT_H
#include "tspbaseextlib.h"
#include "MOEO/tspdroute.h"

class TspGenerationEvaluationCheckpoint: public eoContinue<TspDRoute>
{
public:

  /** Returns false when a certain number of generations is
         * reached */
  virtual bool operator() ( const eoPop<TspDRoute>& _vEO ) {
      //  eoPop<TspDRoute>& population = ( eoPop<TspDRoute> &)_vEO;
        TspRoutePopulationsHistory.push_back(_vEO);
        return true;
  }

  virtual std::string className(void) const { return "TspGenerationEvaluationCheckpoint"; }

};

#endif // TSPGENERATIONEVALUATIONCHECKPOINT_H
