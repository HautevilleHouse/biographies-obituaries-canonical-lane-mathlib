import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LifeTimeline

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure LegacyStatement where
  majorContributions : List String
  impactAssessment : String
  honors : List String
  remembrance : String

structure LegacyStatementEvidence (L : LegacyStatement) where
  contributionsNonempty : L.majorContributions ≠ []
  honorsNonempty : L.honors ≠ []
  remembranceNonempty : L.remembrance ≠ ""

def LegacyStatementClosed (L : LegacyStatement) : Prop :=
  L.majorContributions ≠ [] ∧ L.honors ≠ [] ∧ L.remembrance ≠ ""

theorem legacy_statement_closed_from_evidence (L : LegacyStatement) (E : LegacyStatementEvidence L) : LegacyStatementClosed L := by
  exact And.intro E.contributionsNonempty (And.intro E.honorsNonempty E.remembranceNonempty)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse