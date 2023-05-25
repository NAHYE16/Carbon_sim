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


	G4double A, Z;
  G4double density, massfraction;
  G4int natoms, nel;

  G4Material* Lu = new G4Material("Lutetium", 71., 174.97*g/mole, 9.841*g/cm3);
	G4Material* Y = new G4Material("Yttrium", 39., 88.90585*g/mole, 4.472*g/cm3);
	G4Material* O = new G4Material("Oxygen", 8., 16.00*g/mole, 1.141*g/cm3);

	G4double LYSO_density = 7.1*g/cm3;
	G4Material* LYSO = new G4Material("LYSO", LYSO_density, 3);
	LYSO->AddMaterial(Lu, 71.*perCent);
	LYSO->AddMaterial(Y, 4.*perCent);
	LYSO->AddMaterial(O, 25.*perCent);

// PMMA
	G4Material* PMMA = new G4Material("PMMA", 1.19*g/cm3, 3);
  // Element
	G4Element* elH  = new G4Element("Hydrogen","H",  Z=1.,  A=1.00794*g/mole);
  G4Element* elC  = new G4Element("Carbon",  "C",  Z=6.,  A= 12.011 *g/mole);
  G4Element* elO  = new G4Element("Oxygen",  "O",  Z=8.,  A= 15.9994*g/mole);
	PMMA->AddElement(elC, 5);
  PMMA->AddElement(elH, 8);
  PMMA->AddElement(elO, 2);

  //     
  // World
  //
  G4double world_sizeXYZ = 30*cm;  
  
  G4Box* solidWorld =    
    new G4Box("World",                       //its name
       0.5*world_sizeXYZ, 0.5*world_sizeXYZ, 0.5*world_sizeXYZ); //its size
      
  G4LogicalVolume* logicWorld =                         
    new G4LogicalVolume(solidWorld,          //its solid
                        matVacuum,         //its material
                        "World");            //its name
                                   
  G4VPhysicalVolume* physWorld = 
    new G4PVPlacement(0,                     //no rotation
                      G4ThreeVector(),       //at (0,0,0)
                      logicWorld,            //its logical volume
                      "World",               //its name
                      0,                     //its mother  volume
                      false,                 //no boolean operation
                      0);                     //copy number
                      
                 
  //
  // Box
  //
  G4double box_sizeXY = 2*cm;  
  G4double box_sizeZ = 12*cm;
  G4VSolid* solidWaterBox =
    new G4Box("WaterBox", 0.5*box_sizeXY, 0.5*box_sizeXY, 0.5*box_sizeZ);
      
  G4LogicalVolume* logicBox =                         
    new G4LogicalVolume(solidWaterBox,           //its solid
                        LYSO,                    //its material
                        "WaterBox");             //its name
  
    new G4PVPlacement(0,                         //no rotation
                      G4ThreeVector(0,0,0.5*box_sizeZ),       //at (0,0,0)
                      logicBox,                  //its logical volume
                      "WaterBox",                //its name
                      logicWorld,                //its mother  volume
                      false,                     //no boolean operation
                      0);                        //copy number
                      
  //
  // Replica
  //
  
  G4double rep_sizeZ = 1.0*mm;
  G4int kNoRepZ = box_sizeZ/rep_sizeZ;
  // hadron calorimeter column
  G4VSolid* solidRepZ = 
    new G4Box("RepBox_Z",0.5*box_sizeXY, 0.5*box_sizeXY, 0.5*rep_sizeZ);
  logicRepZ =  
    new G4LogicalVolume(solidRepZ, LYSO,"RepBox_Z");

    new G4PVReplica("RepBox_Z",logicRepZ,
                   logicBox,kZAxis,kNoRepZ,rep_sizeZ);

  //                      
  // Visualization attributes
  //
  G4VisAttributes* visWaterBox = new G4VisAttributes(G4Colour(0.0,0.0,1.0));
  
  
  logicBox->SetVisAttributes(visWaterBox);
  logicRepZ->SetVisAttributes(G4VisAttributes::GetInvisible());
  
  // Print materials
  G4cout << *(G4Material::GetMaterialTable()) << G4endl; 

  //always return the physical World
  //
  return physWorld;
}



void DetectorConstruction::ConstructSDandField()
{
  auto sdManager = G4SDManager::GetSDMpointer();  
  auto sensitiveDetector = new SensitiveDetector("SD");
  sdManager->AddNewDetector(sensitiveDetector);
  logicRepZ->SetSensitiveDetector(sensitiveDetector);  
}


