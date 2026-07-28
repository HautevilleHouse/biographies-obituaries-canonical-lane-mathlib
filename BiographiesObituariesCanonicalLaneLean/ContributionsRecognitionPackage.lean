import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LifeEventsPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ContributionsRecognitionPackage {B : BiographicalDataPackage}
    (L : LifeEventsPackage B) where
  keyContributions : Type u
  recognitionAwards : Type v
  contributionsDocumented : Prop
  recognitionVerified : Prop

structure ContributionsRecognitionEvidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} (C : ContributionsRecognitionPackage L) where
  contributionsDocumentedClosed : C.contributionsDocumented
  recognitionVerifiedClosed : C.recognitionVerified

def ContributionsRecognitionClosed {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} (C : ContributionsRecognitionPackage L) : Prop :=
  C.contributionsDocumented ∧ C.recognitionVerified

theorem contributions_recognition_closed_from_evidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} (C : ContributionsRecognitionPackage L)
    (E : ContributionsRecognitionEvidence C) : ContributionsRecognitionClosed C := by
  exact And.intro E.contributionsDocumentedClosed E.recognitionVerifiedClosed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse