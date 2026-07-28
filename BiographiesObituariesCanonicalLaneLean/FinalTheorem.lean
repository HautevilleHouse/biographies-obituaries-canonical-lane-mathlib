import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.BiographyAdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

def bridgeClosed (A : BiographiesAdmissibleClass) : Prop :=
  BiographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : BiographiesAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : BiographiesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BiographiesAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBiographyClosure (A : BiographiesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biography_endgame (A : BiographiesAdmissibleClass) : ConstrainedBiographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse