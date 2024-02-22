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

#ifndef TsPlasmidSupercoiledSetup_hh
#define TsPlasmidSupercoiledSetup_hh

#include "TsVGeometryComponent.hh"
#include "G4RotationMatrix.hh"
#include "G4ThreeVector.hh"
#include "G4Orb.hh"
#include "G4Point3D.hh"

#include <map>
#include <vector>

class G4VSolid;
class G4Material;
class G4LogicalVolume;

class TsPlasmidSupercoiledSetup : public TsVGeometryComponent
{
public:
	TsPlasmidSupercoiledSetup(TsParameterManager* pM, TsExtensionManager* eM, TsMaterialManager* mM, TsGeometryManager* gM,
						 TsVGeometryComponent* parentComponent, G4VPhysicalVolume* parentVolume, G4String& name);
	~TsPlasmidSupercoiledSetup();
	
	G4VPhysicalVolume* Construct();
	
private:
	
	std::vector<std::pair<G4int, std::pair<G4int, G4ThreeVector>>> fDNASpecies;
	std::string fGeoName;
	G4Orb* fSolid;
	
	void ParseFile(G4String fileName);
	
	G4double fSize;
	G4double fOffsetX;
	G4double fOffsetY;
	G4double fOffsetZ;
	G4double fXMin;
	G4double fXMax;
	G4double fYMin;
	G4double fYMax;
	G4double fZMin;
	G4double fZMax;

};

#endif

