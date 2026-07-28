import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure BiographicalDataPackage where
  personName : Type u
  birthDate : Type v
  deathDate : Type w
  lifeSpanRecorded : Prop
  biographyText : Prop
  verifiedSources : Prop

structure BiographicalDataEvidence (B : BiographicalDataPackage) where
  lifeSpanRecordedClosed : B.lifeSpanRecorded
  biographyTextClosed : B.biographyText
  verifiedSourcesClosed : B.verifiedSources

def BiographicalDataClosed (B : BiographicalDataPackage) : Prop :=
  B.lifeSpanRecorded ∧ B.biographyText ∧ B.verifiedSources

theorem biographical_data_closed_from_evidence (B : BiographicalDataPackage)
    (E : BiographicalDataEvidence B) : BiographicalDataClosed B := by
  exact And.intro E.lifeSpanRecordedClosed
    (And.intro E.biographyTextClosed E.verifiedSourcesClosed)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse