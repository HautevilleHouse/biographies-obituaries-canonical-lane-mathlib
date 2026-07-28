import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.LifeEventPackage
import HautevilleHouse.BiographiesObituariesCanonicalLaneLean.ObituaryPackage

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure BiographyObject where
  lifeEvent : LifeEventPackage
  obituary : ObituaryPackage lifeEvent
  conclusion : LifeEventClosed lifeEvent ∧ ObituaryClosed obituary

structure BiographyEndgameState where
  object : BiographyObject

def BiographyWitnessClosed (O : BiographyObject) : Prop :=
  O.conclusion

structure BiographiesAdmissibleClass where
  object : BiographyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse