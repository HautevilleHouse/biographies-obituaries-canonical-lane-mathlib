import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.ContributionsRecognitionPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure LegacyClosurePackage {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} (C : ContributionsRecognitionPackage L) where
  lastingImpact : Prop
  influenceDocumented : Prop
  closureStatus : Prop

structure LegacyClosureEvidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    (G : LegacyClosurePackage C) where
  lastingImpactClosed : G.lastingImpact
  influenceDocumentedClosed : G.influenceDocumented
  closureStatusClosed : G.closureStatus

def LegacyClosureClosed {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    (G : LegacyClosurePackage C) : Prop :=
  G.lastingImpact ∧ G.influenceDocumented ∧ G.closureStatus

theorem legacy_closure_closed_from_evidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    (G : LegacyClosurePackage C) (E : LegacyClosureEvidence G) :
    LegacyClosureClosed G := by
  exact And.intro E.lastingImpactClosed
    (And.intro E.influenceDocumentedClosed E.closureStatusClosed)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse