import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.BiographyRecord

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure LifeEvent where
  date : String
  description : String
  category : String

structure LifeTimeline where
  events : List LifeEvent
  chronologicalOrder : Prop
  completeCoverage : Prop

structure LifeTimelineEvidence (T : LifeTimeline) where
  eventsNonempty : T.events ≠ []
  chronologicalOrderClosed : T.chronologicalOrder
  completeCoverageClosed : T.completeCoverage

def LifeTimelineClosed (T : LifeTimeline) : Prop :=
  T.events ≠ [] ∧ T.chronologicalOrder ∧ T.completeCoverage

theorem life_timeline_closed_from_evidence (T : LifeTimeline) (E : LifeTimelineEvidence T) : LifeTimelineClosed T := by
  exact And.intro E.eventsNonempty (And.intro E.chronologicalOrderClosed E.completeCoverageClosed)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse