QT += qml quick opengl
QT += widgets
CONFIG += c++11

SOURCES += main.cpp \
    Model/tspevosolverviewmodel.cpp \
    Model/tspevofitnesshistorydatamodel.cpp \
    tsppathgraphview.cpp \
    tspdataservice.cpp \
    tspeval.cpp \
    tspxoverdual.cpp \
    tspdrouteinit.cpp \
    moroutegraph.cpp \
    tspdoualobjectivevectortraits.cpp \
    tspdualeval.cpp \
    tspdualcrossover.cpp \
    tspdualmutation.cpp \
    tspdroute.cpp \
    tspgenerationevaluationcheckpoint.cpp \
    tspgenerationprogressmonitor.cpp \
    paradiseo/eo/src/es/CMAParams.cpp \
    paradiseo/eo/src/es/CMAState.cpp \
    paradiseo/eo/src/es/eig.cpp \
    paradiseo/eo/src/es/make_algo_scalar_es.cpp \
    paradiseo/eo/src/es/make_algo_scalar_real.cpp \
    paradiseo/eo/src/es/make_checkpoint_es.cpp \
    paradiseo/eo/src/es/make_checkpoint_real.cpp \
    paradiseo/eo/src/es/make_continue_es.cpp \
    paradiseo/eo/src/es/make_continue_real.cpp \
    paradiseo/eo/src/es/make_genotype_es.cpp \
    paradiseo/eo/src/es/make_genotype_real.cpp \
    paradiseo/eo/src/es/make_op_es.cpp \
    paradiseo/eo/src/es/make_op_real.cpp \
    paradiseo/eo/src/es/make_pop_es.cpp \
    paradiseo/eo/src/es/make_pop_real.cpp \
    paradiseo/eo/src/es/make_run_es.cpp \
    paradiseo/eo/src/es/make_run_real.cpp \
    paradiseo/eo/src/ga/make_algo_scalar_ga.cpp \
    paradiseo/eo/src/ga/make_checkpoint_ga.cpp \
    paradiseo/eo/src/ga/make_continue_ga.cpp \
    paradiseo/eo/src/ga/make_genotype_ga.cpp \
    paradiseo/eo/src/ga/make_op_ga.cpp \
    paradiseo/eo/src/ga/make_pop_ga.cpp \
    paradiseo/eo/src/ga/make_run_ga.cpp \
    paradiseo/eo/src/utils/eoData.cpp \
    paradiseo/eo/src/utils/eoFileMonitor.cpp \
    paradiseo/eo/src/utils/eoIntBounds.cpp \
    paradiseo/eo/src/utils/eoLogger.cpp \
    paradiseo/eo/src/utils/eoOStreamMonitor.cpp \
    paradiseo/eo/src/utils/eoParallel.cpp \
    paradiseo/eo/src/utils/eoParser.cpp \
    paradiseo/eo/src/utils/eoRealBounds.cpp \
    paradiseo/eo/src/utils/eoRNG.cpp \
    paradiseo/eo/src/utils/eoSignal.cpp \
    paradiseo/eo/src/utils/eoState.cpp \
    paradiseo/eo/src/utils/eoUpdater.cpp \
    paradiseo/eo/src/utils/make_help.cpp \
    paradiseo/eo/src/eoCtrlCContinue.cpp \
    paradiseo/eo/src/eoFunctorStore.cpp \
    paradiseo/eo/src/eoPersistent.cpp \
    paradiseo/eo/src/eoPrintable.cpp \
    paradiseo/eo/src/eoScalarFitnessAssembled.cpp \
    paradiseo/eo/src/eoSIGContinue.cpp \
    paradiseo/moeo/src/core/moeoObjectiveVectorTraits.cpp \
    tspdualsolverresultsurfaceviewmodel.cpp \
    qsurfacemodelresultvertextsp.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS +=  tspevosolverviewmodel.h \
    Model/tspevosolverviewmodel.h \
    Model/tspevofitnesshistorydatamodel.h \
    tsppathgraphview.h \
    MOEO/tspobjectivevector.h \
    MOEO/tspdroute.h \
    tspdataservice.h \
    tspeval.h \
    MOEO/tspxoverdual.h \
    tspdrouteinit.h \
    moroutegraph.h \
    tspdualobjectivevectortraits.h \
    tspdualeval.h \
    tspdualcrossover.h \
    tspdualmutation.h \
    tspvertex.h \
    tspgenerationevaluationcheckpoint.h \
    tspgenerationprogressmonitor.h \
    Model/tspproblemdataset.h \
    paradislibcommon.h \
    tspsolver.h \
    tspbaseextlib.h \
    paradiseo/eo/src/do/make_algo_easea.h \
    paradiseo/eo/src/do/make_algo_scalar.h \
    paradiseo/eo/src/do/make_checkpoint.h \
    paradiseo/eo/src/do/make_checkpoint_assembled.h \
    paradiseo/eo/src/do/make_checkpoint_FDC.h \
    paradiseo/eo/src/do/make_continue.h \
    paradiseo/eo/src/do/make_general_replacement.h \
    paradiseo/eo/src/do/make_pop.h \
    paradiseo/eo/src/do/make_run.h \
    paradiseo/eo/src/es/CMAParams.h \
    paradiseo/eo/src/es/CMAState.h \
    paradiseo/eo/src/es/eig.h \
    paradiseo/eo/src/es/eoCMABreed.h \
    paradiseo/eo/src/es/eoCMAInit.h \
    paradiseo/eo/src/es/eoEsChromInit.h \
    paradiseo/eo/src/es/eoEsFull.h \
    paradiseo/eo/src/es/eoEsGlobalXover.h \
    paradiseo/eo/src/es/eoEsMutate.h \
    paradiseo/eo/src/es/eoEsMutationInit.h \
    paradiseo/eo/src/es/eoEsSimple.h \
    paradiseo/eo/src/es/eoEsStandardXover.h \
    paradiseo/eo/src/es/eoEsStdev.h \
    paradiseo/eo/src/es/eoNormalMutation.h \
    paradiseo/eo/src/es/eoReal.h \
    paradiseo/eo/src/es/eoRealAtomXover.h \
    paradiseo/eo/src/es/eoRealInitBounded.h \
    paradiseo/eo/src/es/eoRealOp.h \
    paradiseo/eo/src/es/eoSBXcross.h \
    paradiseo/eo/src/es/make_es.h \
    paradiseo/eo/src/es/make_genotype_real.h \
    paradiseo/eo/src/es/make_op.h \
    paradiseo/eo/src/es/make_op_es.h \
    paradiseo/eo/src/es/make_op_real.h \
    paradiseo/eo/src/es/make_real.h \
    paradiseo/eo/src/es/matrices.h \
    paradiseo/eo/src/ga/eoBit.h \
    paradiseo/eo/src/ga/eoBitOp.h \
    paradiseo/eo/src/ga/eoBitOpFactory.h \
    paradiseo/eo/src/ga/eoBoolFlip.h \
    paradiseo/eo/src/ga/eoPBILAdditive.h \
    paradiseo/eo/src/ga/eoPBILDistrib.h \
    paradiseo/eo/src/ga/eoPBILOrg.h \
    paradiseo/eo/src/ga/make_ga.h \
    paradiseo/eo/src/ga/make_genotype_ga.h \
    paradiseo/eo/src/ga/make_op.h \
    paradiseo/eo/src/ga/make_PBILdistrib.h \
    paradiseo/eo/src/ga/make_PBILupdate.h \
    paradiseo/eo/src/gp/eoParseTree.h \
    paradiseo/eo/src/gp/eoParseTreeDepthInit.h \
    paradiseo/eo/src/gp/eoParseTreeOp.h \
    paradiseo/eo/src/gp/eoStParseTreeDepthInit.h \
    paradiseo/eo/src/gp/eoStParseTreeOp.h \
    paradiseo/eo/src/gp/node_pool.h \
    paradiseo/eo/src/gp/parse_tree.h \
    paradiseo/eo/src/other/eoExternalEO.h \
    paradiseo/eo/src/other/eoExternalOpFunctions.h \
    paradiseo/eo/src/other/eoString.h \
    paradiseo/eo/src/other/external_eo \
    paradiseo/eo/src/utils/checkpointing \
    paradiseo/eo/src/utils/compatibility.h \
    tspdualsolverresultsurfaceviewmodel.h \
    paradiseo/eo/src/utils/eoAssembledFitnessStat.h \
    paradiseo/eo/src/utils/eoCheckPoint.h \
    paradiseo/eo/src/utils/eoData.h \
    paradiseo/eo/src/utils/eoDistance.h \
    paradiseo/eo/src/utils/eoFDCStat.h \
    paradiseo/eo/src/utils/eoFeasibleRatioStat.h \
    paradiseo/eo/src/utils/eoFileMonitor.h \
    paradiseo/eo/src/utils/eoFileSnapshot.h \
    paradiseo/eo/src/utils/eoFuncPtrStat.h \
    paradiseo/eo/src/utils/eoGenCounter.h \
    paradiseo/eo/src/utils/eoHowMany.h \
    paradiseo/eo/src/utils/eoIntBounds.h \
    paradiseo/eo/src/utils/eoLogger.h \
    paradiseo/eo/src/utils/eoMOFitnessStat.h \
    paradiseo/eo/src/utils/eoMonitor.h \
    paradiseo/eo/src/utils/eoOStreamMonitor.h \
    paradiseo/eo/src/utils/eoParallel.h \
    paradiseo/eo/src/utils/eoParam.h \
    paradiseo/eo/src/utils/eoParser.h \
    paradiseo/eo/src/utils/eoParserLogger.h \
    paradiseo/eo/src/utils/eoPopStat.h \
    paradiseo/eo/src/utils/eoRealBounds.h \
    paradiseo/eo/src/utils/eoRealVectorBounds.h \
    paradiseo/eo/src/utils/eoRndGenerators.h \
    paradiseo/eo/src/utils/eoRNG.h \
    paradiseo/eo/src/utils/eoScalarFitnessStat.h \
    paradiseo/eo/src/utils/eoSignal.h \
    paradiseo/eo/src/utils/eoStat.h \
    paradiseo/eo/src/utils/eoState.h \
    paradiseo/eo/src/utils/eoStdoutMonitor.h \
    paradiseo/eo/src/utils/eoTimeCounter.h \
    paradiseo/eo/src/utils/eoTimedMonitor.h \
    paradiseo/eo/src/utils/eoUniformInit.h \
    paradiseo/eo/src/utils/eoUpdatable.h \
    paradiseo/eo/src/utils/eoUpdater.h \
    paradiseo/eo/src/utils/rnd_generators.h \
    paradiseo/eo/src/utils/selectors.h \
    paradiseo/eo/src/apply.h \
    paradiseo/eo/src/eo \
    paradiseo/eo/src/EO.h \
    paradiseo/eo/src/eoAlgo.h \
    paradiseo/eo/src/eoBinaryFlight.h \
    paradiseo/eo/src/eoBitParticle.h \
    paradiseo/eo/src/eoBreed.h \
    paradiseo/eo/src/eoCellularEasyEA.h \
    paradiseo/eo/src/eoCloneOps.h \
    paradiseo/eo/src/eoCombinedContinue.h \
    paradiseo/eo/src/eoCombinedInit.h \
    paradiseo/eo/src/eoConstrictedVariableWeightVelocity.h \
    paradiseo/eo/src/eoConstrictedVelocity.h \
    paradiseo/eo/src/eoContinue.h \
    paradiseo/eo/src/eoCounter.h \
    paradiseo/eo/src/eoCtrlCContinue.h \
    paradiseo/eo/src/eoDetSelect.h \
    paradiseo/eo/src/eoDetTournamentSelect.h \
    paradiseo/eo/src/eoDistribUpdater.h \
    paradiseo/eo/src/eoDistribution.h \
    paradiseo/eo/src/eoDualFitness.h \
    paradiseo/eo/src/eoEasyEA.h \
    paradiseo/eo/src/eoEasyPSO.h \
    paradiseo/eo/src/eoEDA.h \
    paradiseo/eo/src/eoEvalContinue.h \
    paradiseo/eo/src/eoEvalCounterThrowException.h \
    paradiseo/eo/src/eoEvalFunc.h \
    paradiseo/eo/src/eoEvalFuncCounter.h \
    paradiseo/eo/src/eoEvalFuncCounterBounder.h \
    paradiseo/eo/src/eoEvalFuncPtr.h \
    paradiseo/eo/src/eoEvalTimeThrowException.h \
    paradiseo/eo/src/eoEvalUserTimeThrowException.h \
    paradiseo/eo/src/eoExceptions.h \
    paradiseo/eo/src/eoExtendedVelocity.h \
    paradiseo/eo/src/eoFactory.h \
    paradiseo/eo/src/eoFitContinue.h \
    paradiseo/eo/src/eoFitnessScalingSelect.h \
    paradiseo/eo/src/eoFixedInertiaWeightedVelocity.h \
    paradiseo/eo/src/eoFlight.h \
    paradiseo/eo/src/eoFlOrBinOp.h \
    paradiseo/eo/src/eoFlOrMonOp.h \
    paradiseo/eo/src/eoFlOrQuadOp.h \
    paradiseo/eo/src/eoFunctor.h \
    paradiseo/eo/src/eoFunctorStore.h \
    paradiseo/eo/src/eoG3Replacement.h \
    paradiseo/eo/src/eoGaussRealWeightUp.h \
    paradiseo/eo/src/eoGenContinue.h \
    paradiseo/eo/src/eoGeneralBreeder.h \
    paradiseo/eo/src/eoGenOp.h \
    paradiseo/eo/src/eoInit.h \
    paradiseo/eo/src/eoInitializer.h \
    paradiseo/eo/src/eoInt.h \
    paradiseo/eo/src/eoIntegerVelocity.h \
    paradiseo/eo/src/eoInvalidateOps.h \
    paradiseo/eo/src/eoLinearDecreasingWeightUp.h \
    paradiseo/eo/src/eoLinearFitScaling.h \
    paradiseo/eo/src/eoLinearTopology.h \
    paradiseo/eo/src/eoMerge.h \
    paradiseo/eo/src/eoMergeReduce.h \
    paradiseo/eo/src/eoMGGReplacement.h \
    paradiseo/eo/src/eoNDSorting.h \
    paradiseo/eo/src/eoNeighborhood.h \
    paradiseo/eo/src/eoObject.h \
    paradiseo/eo/src/eoOneToOneBreeder.h \
    paradiseo/eo/src/eoOp.h \
    paradiseo/eo/src/eoOpContainer.h \
    paradiseo/eo/src/eoOpSelMason.h \
    paradiseo/eo/src/eoOrderXover.h \
    paradiseo/eo/src/eoParticleBestInit.h \
    paradiseo/eo/src/eoParticleFullInitializer.h \
    paradiseo/eo/src/eoPerf2Worth.h \
    paradiseo/eo/src/eoPeriodicContinue.h \
    paradiseo/eo/src/eoPersistent.h \
    paradiseo/eo/src/eoPop.h \
    paradiseo/eo/src/eoPopEvalFunc.h \
    paradiseo/eo/src/eoPopulator.h \
    paradiseo/eo/src/eoPrintable.h \
    paradiseo/eo/src/eoPropGAGenOp.h \
    paradiseo/eo/src/eoProportionalCombinedOp.h \
    paradiseo/eo/src/eoProportionalSelect.h \
    paradiseo/eo/src/eoPSO.h \
    paradiseo/eo/src/eoRandomRealWeightUp.h \
    paradiseo/eo/src/eoRandomSelect.h \
    paradiseo/eo/src/eoRanking.h \
    paradiseo/eo/src/eoRankingSelect.h \
    paradiseo/eo/src/eoRealBoundModifier.h \
    paradiseo/eo/src/eoRealParticle.h \
    paradiseo/eo/src/eoReduce.h \
    paradiseo/eo/src/eoReduceMerge.h \
    paradiseo/eo/src/eoReduceMergeReduce.h \
    paradiseo/eo/src/eoReduceSplit.h \
    paradiseo/eo/src/eoReplacement.h \
    paradiseo/eo/src/eoRingTopology.h \
    paradiseo/eo/src/eoScalarFitness.h \
    paradiseo/eo/src/eoScalarFitnessAssembled.h \
    paradiseo/eo/src/eoSecondsElapsedContinue.h \
    paradiseo/eo/src/eoSelect.h \
    paradiseo/eo/src/eoSelectFactory.h \
    paradiseo/eo/src/eoSelectFromWorth.h \
    paradiseo/eo/src/eoSelectMany.h \
    paradiseo/eo/src/eoSelectNumber.h \
    paradiseo/eo/src/eoSelectOne.h \
    paradiseo/eo/src/eoSelectPerc.h \
    paradiseo/eo/src/eoSequentialSelect.h \
    paradiseo/eo/src/eoSGA.h \
    paradiseo/eo/src/eoSGAGenOp.h \
    paradiseo/eo/src/eoSGATransform.h \
    paradiseo/eo/src/eoSharing.h \
    paradiseo/eo/src/eoSharingSelect.h \
    paradiseo/eo/src/eoShiftMutation.h \
    paradiseo/eo/src/eoSigBinaryFlight.h \
    paradiseo/eo/src/eoSIGContinue.h \
    paradiseo/eo/src/eoSimpleEDA.h \
    paradiseo/eo/src/eoSocialNeighborhood.h \
    paradiseo/eo/src/eoStandardFlight.h \
    paradiseo/eo/src/eoStandardVelocity.h \
    paradiseo/eo/src/eoStarTopology.h \
    paradiseo/eo/src/eoSteadyFitContinue.h \
    paradiseo/eo/src/eoSTLFunctor.h \
    paradiseo/eo/src/eoStochasticUniversalSelect.h \
    paradiseo/eo/src/eoStochTournamentSelect.h \
    paradiseo/eo/src/eoSurviveAndDie.h \
    paradiseo/eo/src/eoSwapMutation.h \
    paradiseo/eo/src/eoSyncEasyPSO.h \
    paradiseo/eo/src/eoTimeContinue.h \
    paradiseo/eo/src/eoTopology.h \
    paradiseo/eo/src/eoTransform.h \
    paradiseo/eo/src/eoTruncatedSelectMany.h \
    paradiseo/eo/src/eoTruncatedSelectOne.h \
    paradiseo/eo/src/eoTruncSelect.h \
    paradiseo/eo/src/eoTwoOptMutation.h \
    paradiseo/eo/src/eoVariableInertiaWeightedVelocity.h \
    paradiseo/eo/src/eoVariableLengthCrossover.h \
    paradiseo/eo/src/eoVariableLengthMutation.h \
    paradiseo/eo/src/eoVector.h \
    paradiseo/eo/src/eoVectorParticle.h \
    paradiseo/eo/src/eoVelocity.h \
    paradiseo/eo/src/eoVelocityInit.h \
    paradiseo/eo/src/eoWeightUpdater.h \
    paradiseo/eo/src/es.h \
    paradiseo/eo/src/ga.h \
    paradiseo/eo/src/PO.h \
    paradiseo/mo/src/acceptCrit/moAcceptanceCriterion.h \
    paradiseo/mo/src/acceptCrit/moAlwaysAcceptCrit.h \
    paradiseo/mo/src/acceptCrit/moBetterAcceptCrit.h \
    paradiseo/mo/src/algo/eoDummyMonOp.h \
    paradiseo/mo/src/algo/moDummyLS.h \
    paradiseo/mo/src/algo/moFirstImprHC.h \
    paradiseo/mo/src/algo/moILS.h \
    paradiseo/mo/src/algo/moLocalSearch.h \
    paradiseo/mo/src/algo/moMetropolisHasting.h \
    paradiseo/mo/src/algo/moNeutralHC.h \
    paradiseo/mo/src/algo/moRandomBestHC.h \
    paradiseo/mo/src/algo/moRandomNeutralWalk.h \
    paradiseo/mo/src/algo/moRandomSearch.h \
    paradiseo/mo/src/algo/moRandomWalk.h \
    paradiseo/mo/src/algo/moSA.h \
    paradiseo/mo/src/algo/moSimpleHC.h \
    paradiseo/mo/src/algo/moTS.h \
    paradiseo/mo/src/algo/moVNS.h \
    paradiseo/mo/src/comparator/moComparator.h \
    paradiseo/mo/src/comparator/moEqualNeighborComparator.h \
    paradiseo/mo/src/comparator/moEqualSolComparator.h \
    paradiseo/mo/src/comparator/moEqualSolNeighborComparator.h \
    paradiseo/mo/src/comparator/moNeighborComparator.h \
    paradiseo/mo/src/comparator/moSolComparator.h \
    paradiseo/mo/src/comparator/moSolNeighborComparator.h \
    paradiseo/mo/src/continuator/moAverageFitnessNeighborStat.h \
    paradiseo/mo/src/continuator/moBestFitnessStat.h \
    paradiseo/mo/src/continuator/moBestNoImproveContinuator.h \
    paradiseo/mo/src/continuator/moBestSoFarStat.h \
    paradiseo/mo/src/continuator/moBooleanStat.h \
    paradiseo/mo/src/continuator/moCheckpoint.h \
    paradiseo/mo/src/continuator/moCombinedContinuator.h \
    paradiseo/mo/src/continuator/moContinuator.h \
    paradiseo/mo/src/continuator/moCounterMonitorSaver.h \
    paradiseo/mo/src/continuator/moCounterStat.h \
    paradiseo/mo/src/continuator/moDistanceStat.h \
    paradiseo/mo/src/continuator/moEvalsContinuator.h \
    paradiseo/mo/src/continuator/moFitContinuator.h \
    paradiseo/mo/src/continuator/moFitnessStat.h \
    paradiseo/mo/src/continuator/moFullEvalContinuator.h \
    paradiseo/mo/src/continuator/moIterContinuator.h \
    paradiseo/mo/src/continuator/moMaxNeighborStat.h \
    paradiseo/mo/src/continuator/moMinNeighborStat.h \
    paradiseo/mo/src/continuator/moMinusOneCounterStat.h \
    paradiseo/mo/src/continuator/moNbInfNeighborStat.h \
    paradiseo/mo/src/continuator/moNbSupNeighborStat.h \
    paradiseo/mo/src/continuator/moNeighborBestStat.h \
    paradiseo/mo/src/continuator/moNeighborEvalContinuator.h \
    paradiseo/mo/src/continuator/moNeighborFitnessStat.h \
    paradiseo/mo/src/continuator/moNeighborhoodStat.h \
    paradiseo/mo/src/continuator/moNeutralDegreeNeighborStat.h \
    paradiseo/mo/src/continuator/moSecondMomentNeighborStat.h \
    paradiseo/mo/src/continuator/moSizeNeighborStat.h \
    paradiseo/mo/src/continuator/moSolutionStat.h \
    paradiseo/mo/src/continuator/moStat.h \
    paradiseo/mo/src/continuator/moStatBase.h \
    paradiseo/mo/src/continuator/moStatFromStat.h \
    paradiseo/mo/src/continuator/moStdFitnessNeighborStat.h \
    paradiseo/mo/src/continuator/moTimeContinuator.h \
    paradiseo/mo/src/continuator/moTrueContinuator.h \
    paradiseo/mo/src/continuator/moUnsignedStat.h \
    paradiseo/mo/src/continuator/moUpdater.h \
    paradiseo/mo/src/continuator/moValueParamContinuator.h \
    paradiseo/mo/src/continuator/moValueStat.h \
    paradiseo/mo/src/continuator/moVectorMonitor.h \
    paradiseo/mo/src/coolingSchedule/moCoolingSchedule.h \
    paradiseo/mo/src/coolingSchedule/moDynSpanCoolingSchedule.h \
    paradiseo/mo/src/coolingSchedule/moSimpleCoolingSchedule.h \
    paradiseo/mo/src/eval/moDoubleIncrEvaluation.h \
    paradiseo/mo/src/eval/moDoubleIncrNeighborhoodEval.h \
    paradiseo/mo/src/eval/moDummyEval.h \
    paradiseo/mo/src/eval/moEval.h \
    paradiseo/mo/src/eval/moEvalCounter.h \
    paradiseo/mo/src/eval/moFullEvalByCopy.h \
    paradiseo/mo/src/eval/moFullEvalByModif.h \
    paradiseo/mo/src/eval/moNeighborhoodEvaluation.h \
    paradiseo/mo/src/explorer/moDummyExplorer.h \
    paradiseo/mo/src/explorer/moFirstImprHCexplorer.h \
    paradiseo/mo/src/explorer/moILSexplorer.h \
    paradiseo/mo/src/explorer/moMetropolisHastingExplorer.h \
    paradiseo/mo/src/explorer/moNeighborhoodExplorer.h \
    paradiseo/mo/src/explorer/moNeutralHCexplorer.h \
    paradiseo/mo/src/explorer/moRandomBestHCexplorer.h \
    paradiseo/mo/src/explorer/moRandomNeutralWalkExplorer.h \
    paradiseo/mo/src/explorer/moRandomSearchExplorer.h \
    paradiseo/mo/src/explorer/moRandomWalkExplorer.h \
    paradiseo/mo/src/explorer/moSAexplorer.h \
    paradiseo/mo/src/explorer/moSimpleHCexplorer.h \
    paradiseo/mo/src/explorer/moTSexplorer.h \
    paradiseo/mo/src/explorer/moVNSexplorer.h \
    paradiseo/mo/src/memory/moAspiration.h \
    paradiseo/mo/src/memory/moBestImprAspiration.h \
    paradiseo/mo/src/memory/moCountMoveMemory.h \
    paradiseo/mo/src/memory/moDiversification.h \
    paradiseo/mo/src/memory/moDummyDiversification.h \
    paradiseo/mo/src/memory/moDummyIntensification.h \
    paradiseo/mo/src/memory/moDummyMemory.h \
    paradiseo/mo/src/memory/moIndexedVectorTabuList.h \
    paradiseo/mo/src/memory/moIntensification.h \
    paradiseo/mo/src/memory/moMemory.h \
    paradiseo/mo/src/memory/moMonOpDiversification.h \
    paradiseo/mo/src/memory/moNeighborVectorTabuList.h \
    paradiseo/mo/src/memory/moRndIndexedVectorTabuList.h \
    paradiseo/mo/src/memory/moSolVectorTabuList.h \
    paradiseo/mo/src/memory/moTabuList.h \
    paradiseo/mo/src/neighborhood/moBackableNeighbor.h \
    paradiseo/mo/src/neighborhood/moBackwardVectorVNSelection.h \
    paradiseo/mo/src/neighborhood/moDummyNeighbor.h \
    paradiseo/mo/src/neighborhood/moDummyNeighborhood.h \
    paradiseo/mo/src/neighborhood/moEvaluatedNeighborhood.h \
    paradiseo/mo/src/neighborhood/moForwardVectorVNSelection.h \
    paradiseo/mo/src/neighborhood/moIndexNeighbor.h \
    paradiseo/mo/src/neighborhood/moIndexNeighborhood.h \
    paradiseo/mo/src/neighborhood/moNeighbor.h \
    paradiseo/mo/src/neighborhood/moNeighborhood.h \
    paradiseo/mo/src/neighborhood/moOrderNeighborhood.h \
    paradiseo/mo/src/neighborhood/moRndNeighborhood.h \
    paradiseo/mo/src/neighborhood/moRndVectorVNSelection.h \
    paradiseo/mo/src/neighborhood/moRndWithoutReplNeighborhood.h \
    paradiseo/mo/src/neighborhood/moRndWithReplNeighborhood.h \
    paradiseo/mo/src/neighborhood/moVariableNeighborhoodSelection.h \
    paradiseo/mo/src/neighborhood/moVectorVNSelection.h \
    paradiseo/mo/src/perturb/moLocalSearchInit.h \
    paradiseo/mo/src/perturb/moMonOpPerturb.h \
    paradiseo/mo/src/perturb/moNeighborhoodPerturb.h \
    paradiseo/mo/src/perturb/moPerturbation.h \
    paradiseo/mo/src/perturb/moRestartPerturb.h \
    paradiseo/mo/src/perturb/moSolInit.h \
    paradiseo/mo/src/problems/bitString/moBitNeighbor.h \
    paradiseo/mo/src/problems/bitString/moBitsNeighbor.h \
    paradiseo/mo/src/problems/bitString/moBitsNeighborhood.h \
    paradiseo/mo/src/problems/bitString/moBitsWithoutReplNeighborhood.h \
    paradiseo/mo/src/problems/bitString/moBitsWithReplNeighborhood.h \
    paradiseo/mo/src/problems/eval/moMaxSATincrEval.h \
    paradiseo/mo/src/problems/eval/moOneMaxIncrEval.h \
    paradiseo/mo/src/problems/eval/moQAPIncrEval.h \
    paradiseo/mo/src/problems/eval/moRoyalRoadIncrEval.h \
    paradiseo/mo/src/problems/eval/moUBQPBitsIncrEval.h \
    paradiseo/mo/src/problems/eval/moUBQPdoubleIncrEvaluation.h \
    paradiseo/mo/src/problems/eval/moUBQPSimpleIncrEval.h \
    paradiseo/mo/src/problems/permutation/moIndexedSwapNeighbor.h \
    paradiseo/mo/src/problems/permutation/moShiftNeighbor.h \
    paradiseo/mo/src/problems/permutation/moSwapNeighbor.h \
    paradiseo/mo/src/problems/permutation/moSwapNeighborhood.h \
    paradiseo/mo/src/problems/permutation/moTwoOptExNeighbor.h \
    paradiseo/mo/src/problems/permutation/moTwoOptExNeighborhood.h \
    paradiseo/mo/src/sampling/moAdaptiveWalkSampling.h \
    paradiseo/mo/src/sampling/moAutocorrelationSampling.h \
    paradiseo/mo/src/sampling/moDensityOfStatesSampling.h \
    paradiseo/mo/src/sampling/moFDCsampling.h \
    paradiseo/mo/src/sampling/moFitnessCloudSampling.h \
    paradiseo/mo/src/sampling/moHillClimberSampling.h \
    paradiseo/mo/src/sampling/moMHBestFitnessCloudSampling.h \
    paradiseo/mo/src/sampling/moMHRndFitnessCloudSampling.h \
    paradiseo/mo/src/sampling/moNeutralDegreeSampling.h \
    paradiseo/mo/src/sampling/moNeutralWalkSampling.h \
    paradiseo/mo/src/sampling/moRndBestFitnessCloudSampling.h \
    paradiseo/mo/src/sampling/moRndRndFitnessCloudSampling.h \
    paradiseo/mo/src/sampling/moSampling.h \
    paradiseo/mo/src/sampling/moStatistics.h \
    paradiseo/mo/src/mo \
    paradiseo/mo/src/mo.h \
    paradiseo/moeo/src/algo/moeoAlgo.h \
    paradiseo/moeo/src/algo/moeoASEEA.h \
    paradiseo/moeo/src/algo/moeoEA.h \
    paradiseo/moeo/src/algo/moeoEasyEA.h \
    paradiseo/moeo/src/algo/moeoIBEA.h \
    paradiseo/moeo/src/algo/moeoMOGA.h \
    paradiseo/moeo/src/algo/moeoNSGA.h \
    paradiseo/moeo/src/algo/moeoNSGAII.h \
    paradiseo/moeo/src/algo/moeoPLS1.h \
    paradiseo/moeo/src/algo/moeoPLS2.h \
    paradiseo/moeo/src/algo/moeoPopAlgo.h \
    paradiseo/moeo/src/algo/moeoPopLS.h \
    paradiseo/moeo/src/algo/moeoSEEA.h \
    paradiseo/moeo/src/algo/moeoSPEA2.h \
    paradiseo/moeo/src/algo/moeoUnifiedDominanceBasedLS.h \
    paradiseo/moeo/src/archive/moeo2DMinHypervolumeArchive.h \
    paradiseo/moeo/src/archive/moeoArchive.h \
    paradiseo/moeo/src/archive/moeoBoundedArchive.h \
    paradiseo/moeo/src/archive/moeoEpsilonHyperboxArchive.h \
    paradiseo/moeo/src/archive/moeoFitDivBoundedArchive.h \
    paradiseo/moeo/src/archive/moeoFixedSizeArchive.h \
    paradiseo/moeo/src/archive/moeoImprOnlyBoundedArchive.h \
    paradiseo/moeo/src/archive/moeoSPEA2Archive.h \
    paradiseo/moeo/src/archive/moeoUnboundedArchive.h \
    paradiseo/moeo/src/comparator/moeoAggregativeComparator.h \
    paradiseo/moeo/src/comparator/moeoComparator.h \
    paradiseo/moeo/src/comparator/moeoDiversityThenFitnessComparator.h \
    paradiseo/moeo/src/comparator/moeoEpsilonObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoFitnessComparator.h \
    paradiseo/moeo/src/comparator/moeoFitnessThenDiversityComparator.h \
    paradiseo/moeo/src/comparator/moeoGDominanceObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoObjectiveObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoOneObjectiveComparator.h \
    paradiseo/moeo/src/comparator/moeoParetoObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoPtrComparator.h \
    paradiseo/moeo/src/comparator/moeoStrictObjectiveVectorComparator.h \
    paradiseo/moeo/src/comparator/moeoWeakObjectiveVectorComparator.h \
    paradiseo/moeo/src/core/MOEO.h \
    paradiseo/moeo/src/core/moeoBitVector.h \
    paradiseo/moeo/src/core/moeoEvalFunc.h \
    paradiseo/moeo/src/core/moeoIntVector.h \
    paradiseo/moeo/src/core/moeoObjectiveVector.h \
    paradiseo/moeo/src/core/moeoObjectiveVectorTraits.h \
    paradiseo/moeo/src/core/moeoRealObjectiveVector.h \
    paradiseo/moeo/src/core/moeoRealVector.h \
    paradiseo/moeo/src/core/moeoVector.h \
    paradiseo/moeo/src/distance/moeoDistance.h \
    paradiseo/moeo/src/distance/moeoDistanceMatrix.h \
    paradiseo/moeo/src/distance/moeoEuclideanDistance.h \
    paradiseo/moeo/src/distance/moeoManhattanDistance.h \
    paradiseo/moeo/src/distance/moeoNormalizedDistance.h \
    paradiseo/moeo/src/distance/moeoObjSpaceDistance.h \
    paradiseo/moeo/src/diversity/moeoCrowdingDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoDummyDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoFrontByFrontCrowdingDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoFrontByFrontSharingDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoNearestNeighborDiversityAssignment.h \
    paradiseo/moeo/src/diversity/moeoSharingDiversityAssignment.h \
    paradiseo/moeo/src/do/make_checkpoint_moeo.h \
    paradiseo/moeo/src/do/make_continue_moeo.h \
    paradiseo/moeo/src/do/make_ea_moeo.h \
    paradiseo/moeo/src/explorer/moeoExhaustiveNeighborhoodExplorer.h \
    paradiseo/moeo/src/explorer/moeoFirstImprovingNeighborhoodExplorer.h \
    paradiseo/moeo/src/explorer/moeoNoDesimprovingNeighborhoodExplorer.h \
    paradiseo/moeo/src/explorer/moeoPopNeighborhoodExplorer.h \
    paradiseo/moeo/src/explorer/moeoSimpleSubNeighborhoodExplorer.h \
    paradiseo/moeo/src/explorer/moeoSubNeighborhoodExplorer.h \
    paradiseo/moeo/src/fitness/moeoAggregationFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoBinaryIndicatorBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoConstraintFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoCriterionBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDominanceBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDominanceCountFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDominanceCountRankingFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDominanceDepthFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDominanceRankFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoDummyFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoExpBinaryIndicatorBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoIndicatorBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoReferencePointIndicatorBasedFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoScalarFitnessAssignment.h \
    paradiseo/moeo/src/fitness/moeoSingleObjectivization.h \
    paradiseo/moeo/src/fitness/moeoUnaryIndicatorBasedFitnessAssignment.h \
    paradiseo/moeo/src/hybridization/moeoDMLSGenUpdater.h \
    paradiseo/moeo/src/hybridization/moeoDMLSMonOp.h \
    paradiseo/moeo/src/metric/moeoAdditiveEpsilonBinaryMetric.h \
    paradiseo/moeo/src/metric/moeoContributionMetric.h \
    paradiseo/moeo/src/metric/moeoDistanceMetric.h \
    paradiseo/moeo/src/metric/moeoEntropyMetric.h \
    paradiseo/moeo/src/metric/moeoHypervolumeBinaryMetric.h \
    paradiseo/moeo/src/metric/moeoHyperVolumeDifferenceMetric.h \
    paradiseo/moeo/src/metric/moeoHyperVolumeMetric.h \
    paradiseo/moeo/src/metric/moeoMetric.h \
    paradiseo/moeo/src/metric/moeoNormalizedSolutionVsSolutionBinaryMetric.h \
    paradiseo/moeo/src/metric/moeoVecVsVecAdditiveEpsilonBinaryMetric.h \
    paradiseo/moeo/src/metric/moeoVecVsVecEpsilonBinaryMetric.h \
    paradiseo/moeo/src/metric/moeoVecVsVecMultiplicativeEpsilonBinaryMetric.h \
    paradiseo/moeo/src/replacement/moeoElitistReplacement.h \
    paradiseo/moeo/src/replacement/moeoEnvironmentalReplacement.h \
    paradiseo/moeo/src/replacement/moeoGenerationalReplacement.h \
    paradiseo/moeo/src/replacement/moeoReplacement.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoHC.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoILS.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoSA.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoSolAlgo.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoTS.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoVFAS.h \
    paradiseo/moeo/src/scalarStuffs/algo/moeoVNS.h \
    paradiseo/moeo/src/scalarStuffs/archive/moeoArchiveIndex.h \
    paradiseo/moeo/src/scalarStuffs/archive/moeoIndexedArchive.h \
    paradiseo/moeo/src/scalarStuffs/archive/moeoQuadTree.h \
    paradiseo/moeo/src/scalarStuffs/archive/moeoQuadTreeArchive.h \
    paradiseo/moeo/src/scalarStuffs/archive/moeoQuickUnboundedArchiveIndex.h \
    paradiseo/moeo/src/scalarStuffs/distance/moeoAchievementScalarizingFunctionDistance.h \
    paradiseo/moeo/src/scalarStuffs/distance/moeoAugmentedAchievementScalarizingFunctionDistance.h \
    paradiseo/moeo/src/scalarStuffs/distance/moeoAugmentedWeightedChebychevDistance.h \
    paradiseo/moeo/src/scalarStuffs/distance/moeoWeightedChebychevDistance.h \
    paradiseo/moeo/src/scalarStuffs/explorer/moeoHCMoveLoopExpl.h \
    paradiseo/moeo/src/scalarStuffs/explorer/moeoTSMoveLoopExpl.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoAchievementFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoAchievementScalarizingFunctionMetricFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoAugmentedAchievementScalarizingFunctionMetricFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoAugmentedWeightedChebychevMetricFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoIncrEvalSingleObjectivizer.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoMetricFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/fitness/moeoWeightedChebychevMetricFitnessAssignment.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoAnytimeWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoAugmentedQexploreWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoDichoWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoDummyRefPointStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoDummyWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoFixedTimeBothDirectionWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoFixedTimeOneDirectionWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoQexploreWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoRandWeightStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoVariableRefPointStrategy.h \
    paradiseo/moeo/src/scalarStuffs/weighting/moeoVariableWeightStrategy.h \
    paradiseo/moeo/src/selection/moeoDetArchiveSelect.h \
    paradiseo/moeo/src/selection/moeoDetTournamentSelect.h \
    paradiseo/moeo/src/selection/moeoExhaustiveUnvisitedSelect.h \
    paradiseo/moeo/src/selection/moeoNumberUnvisitedSelect.h \
    paradiseo/moeo/src/selection/moeoRandomSelect.h \
    paradiseo/moeo/src/selection/moeoRouletteSelect.h \
    paradiseo/moeo/src/selection/moeoSelectFromPopAndArch.h \
    paradiseo/moeo/src/selection/moeoSelectOne.h \
    paradiseo/moeo/src/selection/moeoSelectors.h \
    paradiseo/moeo/src/selection/moeoStochTournamentSelect.h \
    paradiseo/moeo/src/selection/moeoUnvisitedSelect.h \
    paradiseo/moeo/src/utils/moeoArchiveObjectiveVectorSavingUpdater.h \
    paradiseo/moeo/src/utils/moeoArchiveUpdater.h \
    paradiseo/moeo/src/utils/moeoAverageObjVecStat.h \
    paradiseo/moeo/src/utils/moeoBestObjVecStat.h \
    paradiseo/moeo/src/utils/moeoBinaryMetricSavingUpdater.h \
    paradiseo/moeo/src/utils/moeoConvertPopToObjectiveVectors.h \
    paradiseo/moeo/src/utils/moeoDominanceMatrix.h \
    paradiseo/moeo/src/utils/moeoFullEvalByCopy.h \
    paradiseo/moeo/src/utils/moeoObjectiveVectorNormalizer.h \
    paradiseo/moeo/src/utils/moeoObjVecStat.h \
    paradiseo/moeo/src/moeo \
    qsurfacemodelresultvertextsp.h

INCLUDEPATH +=  "$$PWD\paradiseo\include" \
                "$$PWD\paradiseo\include\eo" \
                "$$PWD\paradiseo\include\mo"  \
                "$$PWD\paradiseo\include\moeo" \
                "$$PWD\paradiseo\eo\src\es" \
"$$PWD\paradiseo\eo\src" \
"$$PWD\paradiseo\eo\src\do" \
"$$PWD\paradiseo\eo\src\ga" \
"$$PWD\paradiseo\eo\src\pa" \
"$$PWD\paradiseo\eo\src\gp" \
"$$PWD\paradiseo\eo\src\other" \
"$$PWD\paradiseo\eo\src\utils" \
"$$PWD\paradiseo\eo\src\mo" \
"$$PWD\paradiseo\eo\src\mo\acceptCrit" \
"$$PWD\paradiseo\eo\src\mo\algo" \
"$$PWD\paradiseo\eo\src\mo\comparator" \
"$$PWD\paradiseo\eo\src\mo\continuator" \
"$$PWD\paradiseo\eo\src\mo\coolingSchedule" \
"$$PWD\paradiseo\eo\src\mo\eval" \
"$$PWD\paradiseo\eo\src\mo\explorer" \
"$$PWD\paradiseo\eo\src\mo\memory" \
"$$PWD\paradiseo\eo\src\mo\neighborhood" \
"$$PWD\paradiseo\eo\src\mo\perturb" \
"$$PWD\paradiseo\eo\src\mo\problems" \
"$$PWD\paradiseo\eo\src\mo\sampling" \
"$$PWD\paradiseo\eo\src\moeo" \
"$$PWD\paradiseo\eo\src\moeo\archive" \
"$$PWD\paradiseo\eo\src\moeo\algo" \
"$$PWD\paradiseo\eo\src\moeo\comparator" \
"$$PWD\paradiseo\eo\src\moeo\core" \
"$$PWD\paradiseo\eo\src\moeo\distance" \
"$$PWD\paradiseo\eo\src\moeo\diversity" \
"$$PWD\paradiseo\eo\src\moeo\explorer" \
"$$PWD\paradiseo\eo\src\moeo\do" \
"$$PWD\paradiseo\eo\src\moeo\fitness" \
"$$PWD\paradiseo\eo\src\moeo\hybridization" \
"$$PWD\paradiseo\eo\src\moeo\metric" \
"$$PWD\paradiseo\eo\src\moeo\replacement" \
"$$PWD\paradiseo\eo\src\moeo\scalarStuffs" \
"$$PWD\paradiseo\eo\src\moeo\selection" \
"$$PWD\paradiseo\eo\src\moeo\utils"
