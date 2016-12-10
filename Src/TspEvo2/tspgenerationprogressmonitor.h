#ifndef TSPGENERATIONPROGRESSMONITOR_H
#define TSPGENERATIONPROGRESSMONITOR_H

#include "tspbaseextlib.h"
#include "MOEO/tspdroute.h"
class TspGenerationProgressMonitor : public eoMonitor
{
    public:
        eoMonitor& operator()(void);
};

#endif // TSPGENERATIONPROGRESSMONITOR_H
