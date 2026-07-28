import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

inductive LifeEventType where
  | birth
  | death
  | marriage
  | graduation
  | publication
  | other (description : String)

structure LifeEvent where
  date : String
  eventType : LifeEventType
  description : String

structure LifeEventPackage where
  events : List LifeEvent
  chronological : Prop
  significant : Prop

structure LifeEventEvidence (L : LifeEventPackage) where
  chronologicalClosed : L.chronological
  significantClosed : L.significant

def LifeEventClosed (L : LifeEventPackage) : Prop :=
  L.chronological ∧ L.significant

theorem life_event_closed_from_evidence (L : LifeEventPackage) (E : LifeEventEvidence L) :
    LifeEventClosed L := by
  exact And.intro E.chronologicalClosed E.significantClosed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse