import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure BiographyAdmittedObject where
  person : String
  birthYear : Nat
  deathYear : Nat
  biographyPublished : Bool
  obituaryPublished : Bool
  conclusion : biographyPublished ∧ obituaryPublished

structure AdmissibleClass where
  object : BiographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.biographyPublished ∧ A.object.obituaryPublished) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
