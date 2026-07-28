import BiographiesObituariesCanonicalLaneLean.BiographicalGateLemmas

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

def ConstrainedBiographyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biography_endgame (A : AdmissibleClass) :
    ConstrainedBiographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
