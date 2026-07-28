import BiographiesObituariesCanonicalLaneLean.BiographicalSubject

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ObituaryNarrative where
  subject : BiographicalSubject
  dateOfDeath : String
  causeOfDeath : String
  survivors : List String
  legacyStatement : String
  obituaryText : String

structure ObituaryEvidence (N : ObituaryNarrative) where
  deathConfirmed : N.subject.deathYear = 2020 -- example
  survivorsListed : N.survivors.length ≥ 1
  legacyCoherent : N.legacyStatement ≠ ""

def ObituaryClosed (N : ObituaryNarrative) : Prop :=
  N.subject.obituaryPublished ∧ N.subject.deathConfirmed

theorem obituary_closed_from_evidence (N : ObituaryNarrative) (E : ObituaryEvidence N) :
    ObituaryClosed N := by
  exact And.intro E.deathConfirmed E.survivorsListed

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
