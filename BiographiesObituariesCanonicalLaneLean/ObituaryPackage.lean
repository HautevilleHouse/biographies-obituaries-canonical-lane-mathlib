import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LifeEventPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ObituaryPackage (L : LifeEventPackage) where
  obituaryPublished : Prop
  factsVerified : Prop
  sourcesCited : Prop
  consistencyWithLifeEvent : LifeEventClosed L

structure ObituaryEvidence {L : LifeEventPackage} (O : ObituaryPackage L) where
  obituaryPublishedClosed : O.obituaryPublished
  factsVerifiedClosed : O.factsVerified
  sourcesCitedClosed : O.sourcesCited
  consistencyWithLifeEventClosed : O.consistencyWithLifeEvent

def ObituaryClosed {L : LifeEventPackage} (O : ObituaryPackage L) : Prop :=
  O.obituaryPublished ∧ O.factsVerified ∧ O.sourcesCited ∧ O.consistencyWithLifeEvent

theorem obituary_closed_from_evidence {L : LifeEventPackage} (O : ObituaryPackage L) (E : ObituaryEvidence O) : ObituaryClosed O := by
  exact And.intro E.obituaryPublishedClosed (And.intro E.factsVerifiedClosed (And.intro E.sourcesCitedClosed E.consistencyWithLifeEventClosed))

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse