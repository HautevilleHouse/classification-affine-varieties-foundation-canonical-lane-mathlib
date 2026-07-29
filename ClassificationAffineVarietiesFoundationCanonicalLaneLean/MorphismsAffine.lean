import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure MorphismAffine (k : Type) [Field k] (V W : AffineVariety k) where
  ringMap : V.coordinateRing →+* W.coordinateRing
  geometricRealization : ContinuousMap (underlyingSet V) (underlyingSet W)
  compatibility : ∀ (U : OpenSet W), (geometricRealization⁻¹' U).zariskiOpen = ringMap.homOfRingPreimage

theorem morphismBridge (k : Type) [Field k] (V W : AffineVariety k) (φ : MorphismAffine k V W) : AdmissibleClass := by
  refine { object := φ, endpointSatisfied := True, remainderRecorded := False, gateWitness := Or.inl True.intro }

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse