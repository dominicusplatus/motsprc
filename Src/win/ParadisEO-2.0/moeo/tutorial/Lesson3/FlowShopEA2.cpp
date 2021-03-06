/*
* <FlowShopEA.cpp>
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


// moeo general include
#include <moeo>
// for the creation of an evaluator
#include <make_eval_FlowShop.h>
// for the creation of an initializer
#include <make_genotype_FlowShop.h>
// for the creation of the variation operators
#include <make_op_FlowShop.h>
// how to initialize the population
#include <do/make_pop.h>
// the stopping criterion
#include <do/make_continue_moeo.h>
// outputs (stats, population dumps, ...)
#include <do/make_checkpoint_moeo.h>
// evolution engine (selection and replacement)
#include <do/make_ea_moeo.h>
// simple call to the algo
#include <do/make_run.h>
// checks for help demand, and writes the status file and make_help; in libutils
void make_help(eoParser & _parser);
// definition of the representation
#include <FlowShop.h>


using namespace std;


int main(int argc, char* argv[])
{
  try
    {

      eoParser parser(argc, argv);  // for user-parameter reading
      eoState state;                // to keep all things allocated


      /*** the representation-dependent things ***/

      // The fitness evaluation
      eoEvalFuncCounter<FlowShop>& eval = do_make_eval(parser, state);
      // the genotype (through a genotype initializer)
      eoInit<FlowShop>& init = do_make_genotype(parser, state);
      // the variation operators
      eoGenOp<FlowShop>& op = do_make_op(parser, state);


      /*** the representation-independent things ***/

      // initialization of the population
      eoPop<FlowShop>& pop = do_make_pop(parser, state, init);
      // definition of the archive
      moeoUnboundedArchive<FlowShop> arch;
      // stopping criteria
      eoContinue<FlowShop>& term = do_make_continue_moeo(parser, state, eval);
      // output
      eoCheckPoint<FlowShop>& checkpoint = do_make_checkpoint_moeo(parser, state, eval, term, pop, arch);
      // algorithm
      eoAlgo<FlowShop>& algo = do_make_ea_moeo(parser, state, eval, checkpoint, op, arch);


      /*** Go ! ***/

      // help ?
      make_help(parser);

      // first evalution (for printing)
      apply<FlowShop>(eval, pop);

      // printing of the initial population
      cout << "Initial Population\n";
      pop.sortedPrintOn(cout);
      cout << endl;

      // run the algo
      algo(pop);

      // printing of the final population
      cout << "Final Population\n";
      pop.sortedPrintOn(cout);
      cout << endl;

      // printing of the final archive
      cout << "Final Archive\n";
      arch.sortedPrintOn(cout);
      cout << endl;


    }
  catch (exception& e)
    {
      cout << e.what() << endl;
    }
  return EXIT_SUCCESS;
}
