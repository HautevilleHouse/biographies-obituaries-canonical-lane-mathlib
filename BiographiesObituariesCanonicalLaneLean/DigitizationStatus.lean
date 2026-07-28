import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiographiesObituariesCanonicalLaneLean

structure DigitizationStatusPackage where
  digitalCopyAvailable : Prop
  metadataComplete : Prop
  ocrPerformed : Prop
  transcriptionVerified : Prop

structure DigitizationStatusEvidence (D : DigitizationStatusPackage) where
  digitalCopyAvailableClosed : D.digitalCopyAvailable
  metadataCompleteClosed : D.metadataComplete
  ocrPerformedClosed : D.ocrPerformed
  transcriptionVerifiedClosed : D.transcriptionVerified

def DigitizationStatusClosed (D : DigitizationStatusPackage) : Prop :=
  D.digitalCopyAvailable ∧ D.metadataComplete ∧ D.ocrPerformed ∧ D.transcriptionVerified

theorem digitization_status_closed_from_evidence (D : DigitizationStatusPackage) (E : DigitizationStatusEvidence D) :
    DigitizationStatusClosed D := by
  exact And.intro E.digitalCopyAvailableClosed (And.intro E.metadataCompleteClosed (And.intro E.ocrPerformedClosed E.transcriptionVerifiedClosed))

end BiographiesObituariesCanonicalLaneLean
end HautevilleHouse
