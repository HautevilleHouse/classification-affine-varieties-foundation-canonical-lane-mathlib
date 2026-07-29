import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVarietyAdmittedObject where
  carrier : Type u
  ring : Type v
  isFinitelyGenerated : Prop
  isReduced : Prop
  coordinateRing : ring
  specClosed : Prop
  conclusion : specClosed

def AffineVarietyWitnessClosed (O : AffineVarietyAdmittedObject) : Prop :=
  O.specClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
