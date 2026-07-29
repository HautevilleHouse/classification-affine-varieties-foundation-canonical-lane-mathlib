import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVarietyObject where
  space : Type u
  topology : TopologicalSpace space
  coordinateRing : Type v
  isIntegral : Prop
  isSeparated : Prop
  isNoetherian : Prop
  dimensionFinite : Prop
  conclusion : isIntegral ∧ isSeparated ∧ isNoetherian ∧ dimensionFinite

def VarietyWitnessClosed (O : AffineVarietyObject) : Prop :=
  O.conclusion

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse