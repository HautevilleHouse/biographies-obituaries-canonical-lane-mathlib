import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LifeSpanPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure NarrativePackage where
  biographyText : String
  obituaryText : String
  keyEvents : List String
  sources : List String
  factChecked : Prop

structure NarrativeEvidence (N : NarrativePackage) where
  factCheckedClosed : N.factChecked
  keyEventsCovered : N.keyEvents.length > 0
  sourcesValid : N.sources.length > 0

def NarrativeClosed (N : NarrativePackage) : Prop :=
  N.factChecked ∧ N.keyEvents.length > 0 ∧ N.sources.length > 0

theorem narrative_closed_from_evidence (N : NarrativePackage) (E : NarrativeEvidence N) :
    NarrativeClosed N := by
  exact And.intro E.factCheckedClosed (And.intro E.keyEventsCovered E.sourcesValid)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
