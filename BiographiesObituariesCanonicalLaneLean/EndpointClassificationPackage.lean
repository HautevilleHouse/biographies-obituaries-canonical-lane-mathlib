import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LegacyClosurePackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure EndpointClassificationPackage {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    (G : LegacyClosurePackage C) where
  endpointType : String  -- "death" or "immortal_legacy"
  lifeCompleted : Prop
  legacyContinues : Prop
  endpointMatched : Prop

structure EndpointClassificationEvidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    {G : LegacyClosurePackage C} (E : EndpointClassificationPackage G) where
  lifeCompletedClosed : E.lifeCompleted
  legacyContinuesClosed : E.legacyContinues
  endpointMatchedClosed : E.endpointMatched

def EndpointClassificationClosed {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    {G : LegacyClosurePackage C} (E : EndpointClassificationPackage G) : Prop :=
  E.lifeCompleted ∧ E.legacyContinues ∧ E.endpointMatched

theorem endpoint_classification_closed_from_evidence {B : BiographicalDataPackage}
    {L : LifeEventsPackage B} {C : ContributionsRecognitionPackage L}
    {G : LegacyClosurePackage C} (E : EndpointClassificationPackage G)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.lifeCompletedClosed
    (And.intro Ev.legacyContinuesClosed Ev.endpointMatchedClosed)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse