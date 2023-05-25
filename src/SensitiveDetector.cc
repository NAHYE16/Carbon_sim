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
/// file SensitiveDetector.cc
/// brief Implementation of the SensitiveDetector class

#include "SensitiveDetector.hh"
#include "SDHit.hh"

#include "G4HCofThisEvent.hh"
#include "G4TouchableHistory.hh"
#include "G4Track.hh"
#include "G4Step.hh"
#include "G4SDManager.hh"
#include "G4ios.hh"


SensitiveDetector::SensitiveDetector(G4String name)
: G4VSensitiveDetector(name), 
  fHitsCollection(nullptr), fHCID(-1)
{
  collectionName.insert("eDep");
}

SensitiveDetector::~SensitiveDetector()
{}

void SensitiveDetector::Initialize(G4HCofThisEvent* hce)
{
  fHitsCollection 
    = new SDHitsCollection(SensitiveDetectorName,collectionName[0]);
  if (fHCID<0) {
    fHCID = G4SDManager::GetSDMpointer()->GetCollectionID(fHitsCollection); 
  }
  hce->AddHitsCollection(fHCID,fHitsCollection);
  
  // fill SD hits with zero energy deposition
  for (G4int i=0;i<120;i++) {
    fHitsCollection->insert(new SDHit(i));
  }
}


G4bool SensitiveDetector::ProcessHits(G4Step*step, G4TouchableHistory*)
{
  auto edep = step->GetTotalEnergyDeposit();
  if (edep==0.) return true;
  
  auto touchable = step->GetPreStepPoint()->GetTouchable();
  auto repNo = touchable->GetReplicaNumber(0);
  auto hit = (*fHitsCollection)[repNo];  
  // add energy deposition
  hit->AddEdep(edep);
  
  
  return true;
}

