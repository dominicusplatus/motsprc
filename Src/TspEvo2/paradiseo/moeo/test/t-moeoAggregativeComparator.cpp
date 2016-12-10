/*
* <t-moeoAggregativeComparator.cpp>
* Copyright (C) DOLPHIN Project-Team, INRIA Futurs, 2006-2007
* (C) OPAC Team, LIFL, 2002-2007
*
* Arnaud Liefooghe
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use,
* modify and/ or redistribute the software under the terms of the CeCILL
* license as circulated by CEA, CNRS and INRIA at the following URL
* "http://www.cecill.info".
*
* As a counterpart to the access to the source code and  rights to copy,
* modify and redistribute granted by the license, users are provided only
* with a limited warranty  and the software's author,  the holder of the
* economic rights,  and the successive licensors  have only  limited liability.
*
* In this respect, the user's attention is drawn to the risks associated
* with loading,  using,  modifying and/or developing or reproducing the
* software by the user in light of its specific status of free software,
* that may mean  that it is complicated to manipulate,  and  that  also
* therefore means  that it is reserved for developers  and  experienced
* professionals having in-depth computer knowledge. Users are therefore
* encouraged to load and test the software's suitability as regards their
* requirements in conditions enabling the security of their systems and/or
* data to be ensured and,  more generally, to use and operate it in the
* same conditions as regards security.
* The fact that you are presently reading this means that you have had
* knowledge of the CeCILL license and that you accept its terms.
*
* ParadisEO WebSite : http://paradiseo.gforge.inria.fr
* Contact: paradiseo-help@lists.gforge.inria.fr
*
*/
//-----------------------------------------------------------------------------
// t-moeoAggregativeComparator.cpp
//-----------------------------------------------------------------------------

#include <eo>
#include <moeo>

//-----------------------------------------------------------------------------

typedef MOEO < double, double, double > Solution;

//-----------------------------------------------------------------------------

int main()
{
    std::cout << "[moeoAggregativeComparator]\t=>\t";

    // fitness & diversity
    double fit1 = 1.0;
    double div1 = 2.0;
    double fit2 = 3.0;
    double div2 = 1.0;

    // solutions
    Solution sol1;
    sol1.fitness(fit1);
    sol1.diversity(div1);
    Solution sol2;
    sol2.fitness(fit2);
    sol2.diversity(div2);

    // comparator
    moeoAggregativeComparator < Solution > comparator;

    // sol1 not better than sol2?
    if (! comparator(sol1, sol2))
    {
        std::cout << "ERROR (sol1 must be better)" << std::endl;
        return EXIT_FAILURE;
    }

    std::cout << "OK" << std::endl;
    return EXIT_SUCCESS;
}

//-----------------------------------------------------------------------------