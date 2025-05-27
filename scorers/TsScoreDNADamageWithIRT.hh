//
// ********************************************************************
// *                                                                  *
// * This file is part of the TOPAS-nBio extensions to the            *
// *   TOPAS Simulation Toolkit.                                      *
// * The TOPAS-nBio extensions are freely available under the license *
// *   agreement set forth at: https://topas-nbio.readthedocs.io/     *
// *                                                                  *
// ********************************************************************
//

#ifndef TsScoreDNADamageWithIRT_hh
#define TsScoreDNADamageWithIRT_hh

#include "TsVNtupleScorer.hh"
#include "TsIRTConfiguration.hh"
#include "Randomize.hh"

#include <stdint.h>

class TsIRT;

class TsScoreDNADamageWithIRT : public TsVNtupleScorer
{
public:
    TsScoreDNADamageWithIRT(TsParameterManager* pM, TsMaterialManager* mM, TsGeometryManager* gM, TsScoringManager* scM, TsExtensionManager* eM,
                      G4String scorerName, G4String quantity, G4String outFileName, G4bool isSubScorer);
    ~TsScoreDNADamageWithIRT();
    
    virtual G4bool ProcessHits(G4Step*, G4TouchableHistory*);
 
    void UserHookForEndOfEvent();   

    virtual void UserHookForPreTimeStepAction();

protected:
    
    // Output variables
    G4int fBasePair;
    G4bool fIsDamaged;
	G4double fTime;
	G4int fOHDNAReactions;
	G4String fMoleculeName;
	
private:
    TsParameterManager* fPm;
	TsIRT* fIRT;

	G4double fPrescribedDose;
    G4double fEnergyDepositPerEvent;
    G4int fNbOfScoredEvents;
	G4String fName;
	std::map<G4int, std::map<G4int, G4double>> fDirectSSB;
	G4String fOutputFileName;
	
};

#endif

