import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.BiographicalDataPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure LifeEventsPackage {B : BiographicalDataPackage} where
  majorEvents : Type u
  eventTimeline : Prop
  eventTypes : List String
  completenessClaim : Prop

structure LifeEventsEvidence {B : BiographicalDataPackage}
    (L : LifeEventsPackage B) where
  eventTimelineClosed : L.eventTimeline
  completenessClaimClosed : L.completenessClaim

def LifeEventsClosed {B : BiographicalDataPackage} (L : LifeEventsPackage B) : Prop :=
  L.eventTimeline ∧ L.completenessClaim

theorem life_events_closed_from_evidence {B : BiographicalDataPackage}
    (L : LifeEventsPackage B) (E : LifeEventsEvidence L) : LifeEventsClosed L := by
  exact And.intro E.eventTimelineClosed E.completenessClaimClosed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse