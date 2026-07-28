import BiographiesObituariesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiographicalWitnessClosed A.subject

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.subject.conclusion

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
