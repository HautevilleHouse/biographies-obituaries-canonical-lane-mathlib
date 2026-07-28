import BiographiesObituariesCanonicalLaneLean.LegacyBridgeLemmas

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.obituaryVerified ∨ A.legacyRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
