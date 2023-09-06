//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
//
/// file DetectorConstruction.cc
/// brief Implementation of the DetectorConstruction class

#include "DetectorConstruction.hh"
#include "SensitiveDetector.hh"

#include "G4NistManager.hh"
#include "G4Box.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"
#include "G4PVReplica.hh"
#include "G4SDManager.hh"
#include "G4VisAttributes.hh"
#include "G4PhysicalConstants.hh"
#include "G4SystemOfUnits.hh"
#include "G4SDManager.hh"
#include "G4VSensitiveDetector.hh"

DetectorConstruction::DetectorConstruction()
: G4VUserDetectorConstruction(),
  matVacuum(),matWater(),logicRepZ()
{
  DefineMaterials();
}

DetectorConstruction::~DetectorConstruction()
{ }



void DetectorConstruction::DefineMaterials()
{
  G4NistManager* man = G4NistManager::Instance();
  
  matVacuum = man->FindOrBuildMaterial("G4_Galactic");
  matWater = man->FindOrBuildMaterial("G4_WATER");  

}



G4VPhysicalVolume* DetectorConstruction::Construct()
{
  /////////////////
  // Material !!!
  /////////////////

	G4double A, Z;
  G4double density, massfraction;
  G4int natoms, nel;

  // Element
  G4Material* Lu = new G4Material("Lutetium", 71., 174.97*g/mole, 9.841*g/cm3);
	G4Material* Y = new G4Material("Yttrium", 39., 88.90585*g/mole, 4.472*g/cm3);
	G4Material* O = new G4Material("Oxygen", 8., 16.00*g/mole, 1.141*g/cm3);
  
	G4Element* elH  = new G4Element("Hydrogen","H",  Z=1.,  A= 1.00794*g/mole);
  G4Element* elC  = new G4Element("Carbon",  "C",  Z=6.,  A= 12.011 *g/mole);
  G4Element* elO  = new G4Element("Oxygen",  "O",  Z=8.,  A= 15.9994*g/mole);
  G4Element* elF  = new G4Element("Fluorine","F",  Z=9.,  A= 18.9984*g/mole);

  //LYSO
	G4double LYSO_density = 7.1*g/cm3;
	G4Material* LYSO = new G4Material("LYSO", LYSO_density, 3);
	LYSO->AddMaterial(Lu, 71.*perCent);
	LYSO->AddMaterial(Y, 4.*perCent);
	LYSO->AddMaterial(O, 25.*perCent);

  // PMMA
	G4Material* PMMA = new G4Material("PMMA", 1.19*g/cm3, 3);
  
	PMMA->AddElement(elC, 5);
  PMMA->AddElement(elH, 8);
  PMMA->AddElement(elO, 2);


  //FluorinatedPolymer
  G4Material* FluoPoly = new G4Material("FluorinatedPolymer", density=1.43*g/cm3, 2);
  FluoPoly->AddElement(elC, 2);
  FluoPoly->AddElement(elF, 2);

  //Polystyrene
  G4Material* PS = new G4Material("Polystyrene", density=1.05*g/cm3, 2);
  PS->AddElement(elC, 8);
  PS->AddElement(elH, 8);

  //Copper
  G4Material* Cu = new G4Material("Copper", Z=29., A= 63.546*g/mole, density = 8.96*g/cm3);

  //Material Propertise for optical physics
  // *******************************************************************************************
	// Material properties
	// *******************************************************************************************

  // G4MaterialPropertiesTable* mpPMMA;
	// G4MaterialPropertiesTable* mpLYSO;
  
  //   G4double opEn[] = { // from 900nm to 300nm with 25nm step
  //     1.37760*eV, 1.41696*eV, 1.45864*eV, 1.50284*eV, 1.54980*eV, 1.59980*eV, 1.65312*eV, 1.71013*eV,
  //     1.77120*eV, 1.83680*eV, 1.90745*eV, 1.98375*eV, 2.06640*eV, 2.15625*eV, 2.25426*eV, 2.36160*eV,
  //     2.47968*eV, 2.61019*eV, 2.75520*eV, 2.91728*eV, 3.09960*eV, 3.30625*eV, 3.54241*eV, 3.81490*eV, 4.13281*eV
  //   };
  
  //   const G4int nEnt = sizeof(opEn) / sizeof(G4double);
  
  //   G4double RI_PMMA[nEnt] = {
  //     1.48329, 1.48355, 1.48392, 1.48434, 1.48467, 1.48515, 1.48569, 1.48628,
  //     1.48677, 1.48749, 1.48831, 1.48899, 1.49000, 1.49119, 1.49219, 1.49372,
  //     1.49552, 1.49766, 1.49953, 1.50252, 1.50519, 1.51000, 1.51518, 1.52182, 1.53055
  //   };
  //   G4double AbsLen_PMMA[nEnt] = {
  //     0.414*m, 0.543*m, 0.965*m, 2.171*m, 2.171*m, 3.341*m, 4.343*m, 1.448*m,
  //     4.343*m, 14.48*m, 21.71*m, 8.686*m, 28.95*m, 54.29*m, 43.43*m, 48.25*m,
  //     54.29*m, 48.25*m, 43.43*m, 28.95*m, 21.71*m, 4.343*m, 2.171*m, 0.869*m, 0.434*m
  //   };
  //   mpPMMA = new G4MaterialPropertiesTable();
  //   mpPMMA->AddProperty("RINDEX",opEn,RI_PMMA,nEnt);
  //   mpPMMA->AddProperty("ABSLENGTH",opEn,AbsLen_PMMA,nEnt);
  //   PMMA->SetMaterialPropertiesTable(mpPMMA);


	// //--- LYSO ---
	// G4double RI_LYSO[nEnt]; std::fill_n(RI_LYSO, nEnt, 1.81);
	// G4double Abslength_LYSO[nEnt]; std::fill_n(Abslength_LYSO, nEnt, 42*cm);
	// G4double scintFast_LYSO[nEnt] = {
	//   0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00,
	//   0.00, 0.00, 0.00, 0.03, 0.07, 0.12, 0.16, 0.32,
	//   0.50, 0.68, 0.92, 0.97, 0.50, 0.07, 0.00, 0.00, 0.00
	// };
	// mpLYSO = new G4MaterialPropertiesTable();
	// mpLYSO->AddProperty("RINDEX",opEn,RI_LYSO,nEnt);
	// mpLYSO->AddProperty("ABSLENGTH",opEn,Abslength_LYSO,nEnt);
	// mpLYSO->AddProperty("FASTCOMPONENT",opEn,scintFast_LYSO,nEnt);
	// mpLYSO->AddConstProperty("SCINTILLATIONYIELD",33200./MeV);
	// mpLYSO->AddConstProperty("RESOLUTIONSCALE",2.0);
	// mpLYSO->AddConstProperty("FASTTIMECONSTANT",36*ns);
	// LYSO->SetMaterialPropertiesTable(mpLYSO);


	// *******************************************************************************************
	// GEOMETRY
	// *******************************************************************************************

  //     
  // World
  //
  G4double world_sizeXYZ = 100*cm;  
  
  G4Box* solidWorld = new G4Box("World", 0.5*world_sizeXYZ, 0.5*world_sizeXYZ, 0.5*world_sizeXYZ);     
  G4LogicalVolume* logicWorld = new G4LogicalVolume(solidWorld, matVacuum, "World"); //its solid, material, name            
  G4VPhysicalVolume* physWorld = new G4PVPlacement(0, G4ThreeVector(), logicWorld, "World", 0, false,0);                    
  //no rotation, at (0,0,0), its logical volume, its name, its mother  volume, no boolean operation, copy number              
                 
  //
  // Box
  //
  // G4double box_sizeXY = 10*cm;  
  // G4double box_sizeZ = 30*cm;

  // G4VSolid* solidWaterBox = new G4Box("WaterBox", 0.5*box_sizeXY, 0.5*box_sizeXY, 0.5*box_sizeZ);
  // G4LogicalVolume* logicBox = new G4LogicalVolume(solidWaterBox, matWater, "WaterBox");
  // G4VPhysicalVolume* PhysBox = new G4PVPlacement(0, G4ThreeVector(0,0,0.5*box_sizeZ), logicBox, "WaterBox", logicWorld, false, 0);                        
                      
  /************************************************** 
  Replica
  **************************************************/
  // G4double rep_sizeZ = 0.1*mm;
  // G4int kNoRepZ = box_sizeZ/rep_sizeZ;
  // // hadron calorimeter column
  // G4VSolid* solidRepZ = new G4Box("RepBox_Z",0.5*box_sizeXY, 0.5*box_sizeXY, 0.5*rep_sizeZ);
  // logicRepZ = new G4LogicalVolume(solidRepZ, matWater,"RepBox_Z");

  //   new G4PVReplica("RepBox_Z",logicRepZ, logicBox,kZAxis,kNoRepZ,rep_sizeZ);

  
  G4double number_of_X_detectors = 100;
  G4double number_of_Y_detectors = 100;

  G4double X_detector_size = 1.0*mm;
  G4double Y_detector_size = 1.0*mm;
  G4double Z_detector_size = 30.0*cm;

  G4double totalXsize = number_of_X_detectors*X_detector_size;
  G4double totalYsize = number_of_Y_detectors*Y_detector_size;
  G4double totalZsize = Z_detector_size;

  //total detector : 10cm*10cm*30cm, water
  G4VSolid* totalDetectorSolid = new G4Box("totalDet", 0.5*totalXsize, 0.5*totalYsize, 0.5*totalZsize);
  G4LogicalVolume* totalLogicDetector = new G4LogicalVolume(totalDetectorSolid, matWater, "totalDet"); 

  // S & C Fiber
  G4VSolid* fiberSolid = new G4Box("fiber", 0.5*X_detector_size, 0.5*Y_detector_size, 0.5*totalZsize);

  G4LogicalVolume* sfiberLogicVolume = new G4LogicalVolume(fiberSolid, matWater, "sfiber");
  G4LogicalVolume* cfiberLogicVolume = new G4LogicalVolume(fiberSolid, matWater, "cfiber");
    for (int j = 0; j < number_of_Y_detectors; j+=1) { //loop on y axis
      for(int i = 0 ; i < number_of_X_detectors; i+=2) { //loop on x axis
        auto sfiberXpos = -0.5*totalXsize + (i + 0.5)*X_detector_size;
        auto cfiberXpos = -0.5*totalXsize + (i + 1.5)*X_detector_size;
        auto sfiberYpos = -0.5*totalYsize + (j + 0.5)*Y_detector_size;
        auto cfiberYpos = -0.5*totalYsize + (j + 0.5)*Y_detector_size;
        auto zPos = 0.5*totalZsize;

        if (j%2 == 0)
        std::swap(sfiberXpos, cfiberXpos);

        G4VPhysicalVolume* sfiberphys = new G4PVPlacement(nullptr, G4ThreeVector(sfiberXpos, sfiberYpos, 0),
        sfiberLogicVolume, "sfiberDet", totalLogicDetector, false, j*100+i, true ); //scintillation fiber

        G4VPhysicalVolume* cfiberphys = new G4PVPlacement(nullptr, G4ThreeVector(cfiberXpos, cfiberYpos, 0),
        cfiberLogicVolume, "cfiberDet", totalLogicDetector, false, j*100+i, true ); //cerencov fiber
    }
}

G4VPhysicalVolume* totalphysDetector = new G4PVPlacement(nullptr, G4ThreeVector(0, 0, 15.0*cm),
    totalLogicDetector, "totalDet", logicWorld, false, 0, true ); //total detector


  //                      
  // Visualization attributes
  //

  G4VisAttributes* white = new G4VisAttributes(G4Colour(1.0,1.0,1.0));
  G4VisAttributes* visWaterBox = new G4VisAttributes(G4Colour(0.0,1.0,0.0));
  G4VisAttributes* cfiberBox = new G4VisAttributes(G4Colour(0.0,0.0,1.0));

  // logicBox->SetVisAttributes(visWaterBox);
  // logicRepZ->SetVisAttributes(G4VisAttributes::GetInvisible());
  sfiberLogicVolume->SetVisAttributes(visWaterBox);
  cfiberLogicVolume->SetVisAttributes(cfiberBox);
  totalLogicDetector->SetVisAttributes(white);

  // Print materials
  // G4cout << *(G4Material::GetMaterialTable()) << G4endl; 

 
  return physWorld;
}


void DetectorConstruction::ConstructSDandField()  //-->PMT
{
  auto sdManager = G4SDManager::GetSDMpointer();  
  auto sensitiveDetector = new SensitiveDetector("SD");
  sdManager->AddNewDetector(sensitiveDetector);
  //totalLogicDetector->SetSensitiveDetector(sensitiveDetector);  
}


