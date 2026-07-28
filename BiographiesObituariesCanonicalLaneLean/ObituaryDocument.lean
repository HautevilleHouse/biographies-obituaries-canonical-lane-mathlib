import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.BiographyRecord

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure ObituaryDocument where
  headline : String
  lifeSummary : String
  survivors : List String
  funeralDetails : String
  memorialContributions : String
  sources : List String

structure ObituaryDocumentEvidence (O : ObituaryDocument) where
  headlineNonempty : O.headline ≠ ""
  survivorsListNonempty : O.survivors ≠ []
  sourcesListNonempty : O.sources ≠ []

def ObituaryDocumentClosed (O : ObituaryDocument) : Prop :=
  O.headline ≠ "" ∧ O.survivors ≠ [] ∧ O.sources ≠ []

theorem obituary_document_closed_from_evidence (O : ObituaryDocument) (E : ObituaryDocumentEvidence O) : ObituaryDocumentClosed O := by
  exact And.intro E.headlineNonempty (And.intro E.survivorsListNonempty E.sourcesListNonempty)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse