import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ObituaryRecord where
  deceased : String
  birthDate : String
  deathDate : String
  obituaryText : String
  source : String

structure ObituaryPackage where
  record : ObituaryRecord
  verified : Prop
  completeness : Prop

structure ObituaryEvidence (O : ObituaryPackage) where
  verifiedClosed : O.verified
  completenessClosed : O.completeness

def ObituaryClosed (O : ObituaryPackage) : Prop :=
  O.verified ∧ O.completeness

theorem obituary_closed_from_evidence (O : ObituaryPackage) (E : ObituaryEvidence O) :
    ObituaryClosed O := by
  exact And.intro E.verifiedClosed E.completenessClosed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse