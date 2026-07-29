import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVariety (k : Type) [Field k] where
  coordinateRing : CommRing k
  underlyingSet : Set (PrimeSpectrum coordinateRing)
  zariskiClosed : Prop
  irreducible : Prop

def affineVarietyObject (k : Type) [Field k] (V : AffineVariety k) : AdmittedObject := by
  exact { /* stub */ }

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse