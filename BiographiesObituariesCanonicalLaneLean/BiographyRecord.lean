import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure BiographyRecord where
  fullName : String
  aliases : List String
  birthPlace : String
  deathPlace : String
  education : List String
  career : List String
  awards : List String
  bibliography : List String

structure BiographyRecordEvidence (B : BiographyRecord) where
  nameNonempty : B.fullName ≠ ""
  birthPlaceNonempty : B.birthPlace ≠ ""
  deathPlaceNonempty : B.deathPlace ≠ ""

def BiographyRecordClosed (B : BiographyRecord) : Prop :=
  B.fullName ≠ "" ∧ B.birthPlace ≠ "" ∧ B.deathPlace ≠ ""

theorem biography_record_closed_from_evidence (B : BiographyRecord) (E : BiographyRecordEvidence B) : BiographyRecordClosed B := by
  exact And.intro E.nameNonempty (And.intro E.birthPlaceNonempty E.deathPlaceNonempty)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse