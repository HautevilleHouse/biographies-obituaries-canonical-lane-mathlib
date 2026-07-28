import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

def gateClosed (A : BiographicalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BiographicalAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse