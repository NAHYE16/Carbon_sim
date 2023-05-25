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
/// file SDHit.cc
/// brief Implementation of the SDHit class

#include "SDHit.hh"

#include "G4VVisManager.hh"
#include "G4VisAttributes.hh"
#include "G4Colour.hh"
#include "G4AttDefStore.hh"
#include "G4AttDef.hh"
#include "G4AttValue.hh"
#include "G4UIcommand.hh"
#include "G4UnitsTable.hh"
#include "G4SystemOfUnits.hh"
#include "G4ios.hh"


G4ThreadLocal G4Allocator<SDHit>* SDHitAllocator;


SDHit::SDHit()
: G4VHit(), fEdep(0.), fDepthID(0.)
{}


SDHit::~SDHit()
{}

SDHit::SDHit(const SDHit &right)
: G4VHit(),  
  fEdep(right.fEdep),
  fDepthID(right.fDepthID)  
{}

SDHit::SDHit(G4int depthID)
: G4VHit(), 
  fEdep(0.),fDepthID(depthID)
{}

const SDHit& SDHit::operator=(const SDHit
                                                          &right)
{  
  fEdep = right.fEdep;
  fDepthID = right.fDepthID;
  return *this;
}

void SDHit::Print()
{
  G4cout << "  Depth[" << fDepthID << "] " << fEdep/MeV << " (MeV)" << G4endl;
}

