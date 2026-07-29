import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AffineVarietyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VarietyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse