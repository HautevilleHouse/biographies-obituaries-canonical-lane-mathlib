import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure BiographicalSubject where
  name : String
  birthYear : ℕ
  deathYear : ℕ
  notableWorks : List String
  biographyWritten : Prop
  obituaryPublished : Prop
  legacyAccepted : Prop

structure BiographicalAdmittedObject where
  subject : BiographicalSubject
  lifeStoryComplete : Prop
  deathConfirmed : Prop
  memorialEstablished : Prop
  conclusion : lifeStoryComplete ∧ deathConfirmed ∧ memorialEstablished

def BiographicalWitnessClosed (O : BiographicalAdmittedObject) : Prop :=
  O.conclusion

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
