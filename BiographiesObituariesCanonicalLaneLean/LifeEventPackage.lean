import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure LifeEventPackage where
  birthDate : Prop
  deathDate : Prop
  majorAchievements : Prop
  chronologicalConsistency : Prop

structure LifeEventEvidence (L : LifeEventPackage) where
  birthDateClosed : L.birthDate
  deathDateClosed : L.deathDate
  majorAchievementsClosed : L.majorAchievements
  chronologicalConsistencyClosed : L.chronologicalConsistency

def LifeEventClosed (L : LifeEventPackage) : Prop :=
  L.birthDate ∧ L.deathDate ∧ L.majorAchievements ∧ L.chronologicalConsistency

theorem life_event_closed_from_evidence (L : LifeEventPackage) (E : LifeEventEvidence L) : LifeEventClosed L := by
  exact And.intro E.birthDateClosed (And.intro E.deathDateClosed (And.intro E.majorAchievementsClosed E.chronologicalConsistencyClosed))

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse