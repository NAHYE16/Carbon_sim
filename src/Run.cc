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
/// file Run.cc
/// brief Implementation of the Run class

#include "Run.hh"

#include "G4RunManager.hh"
#include "G4Event.hh"

#include "G4SDManager.hh"
#include "G4HCofThisEvent.hh"
#include "G4THitsMap.hh"
#include "G4SystemOfUnits.hh"

Run::Run()
 : G4Run()
{ 
  for(int i=0;i<120;i++)
    doseArray[i]=0;
}

Run::~Run()
{ }

void Run::RecordEvent(const G4Event* event)
{
 
  //Hits collections
  //  
  G4HCofThisEvent* HCE = event->GetHCofThisEvent();
  if(!HCE) return;
   
  SDHitsCollection* hitsColl = static_cast<SDHitsCollection*> (HCE->GetHC(0));

  for (size_t i=0;i<hitsColl->GetSize();i++){
    G4int idx=((*hitsColl)[i]->GetDepthID());
    G4double dose = ((*hitsColl)[i]->GetEdep());
    doseArray[idx]+=dose;
  }   
  G4Run::RecordEvent(event);      
}  

void Run::Merge(const G4Run* aRun)
{
  const Run* localRun = static_cast<const Run*>(aRun);
  for(int i=0;i<120;i++)
    doseArray[i]    += localRun->doseArray[i];
  
  G4Run::Merge(aRun); 
} 


