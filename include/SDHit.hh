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
/// file SDHit.hh
/// brief Definition of the SDHit class

#ifndef SDHit_h
#define SDHit_h 1

#include "G4VHit.hh"
#include "G4THitsCollection.hh"
#include "G4Allocator.hh"
#include "G4ThreeVector.hh"

class G4AttDef;
class G4AttValue;

class SDHit : public G4VHit
{
  public:
    SDHit();
    SDHit(G4int depthID);
    SDHit(const SDHit &right);
    virtual ~SDHit();

    const SDHit& operator=(const SDHit &right);
    
    
    
    inline void *operator new(size_t);
    inline void operator delete(void *aHit);
    
    virtual void Draw(){};
    virtual void Print();
    
    void SetEdep(G4double de) { fEdep = de; }
    void AddEdep(G4double de) { fEdep += de; }
    G4double GetEdep() const { return fEdep; }

    void SetDepthID(G4int z) { fDepthID = z; }
    G4int GetDepthID() const { return fDepthID; }
    
  private:    
    G4double fEdep;
    G4int fDepthID;
};

using SDHitsCollection = G4THitsCollection<SDHit>;

extern G4ThreadLocal G4Allocator<SDHit>* SDHitAllocator;

inline void* SDHit::operator new(size_t)
{
  if (!SDHitAllocator) {
       SDHitAllocator = new G4Allocator<SDHit>;
  }
  return (void*)SDHitAllocator->MallocSingle();
}

inline void SDHit::operator delete(void* aHit)
{
  SDHitAllocator->FreeSingle((SDHit*) aHit);
}


#endif
