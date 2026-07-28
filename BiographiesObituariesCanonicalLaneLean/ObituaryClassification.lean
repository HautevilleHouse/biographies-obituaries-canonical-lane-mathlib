import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ObituaryClassificationPackage where
  obituaryType : String -- e.g., "newspaper", "online", "family"
  publicationDate : String
  verified : Prop
  archived : Prop

structure ObituaryClassificationEvidence (O : ObituaryClassificationPackage) where
  verifiedClosed : O.verified
  archivedClosed : O.archived

def ObituaryClassificationClosed (O : ObituaryClassificationPackage) : Prop :=
  O.verified ∧ O.archived

theorem obituary_classification_closed_from_evidence (O : ObituaryClassificationPackage) (E : ObituaryClassificationEvidence O) :
    ObituaryClassificationClosed O := by
  exact And.intro E.verifiedClosed E.archivedClosed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
