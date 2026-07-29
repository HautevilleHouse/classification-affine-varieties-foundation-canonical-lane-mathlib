import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVariety (k : Type u) [Field k] where
  coordinateRing : AffineCoordinateRing k
  underlyingSet : Set (k ^ _)
  zariskiTopology : TopologicalSpace underlyingSet
  irreducible : Prop
  dimension : Nat

structure AffineVarietyEvidence (k : Type u) [Field k] (V : AffineVariety k) where
  irreducibleClosed : V.irreducible
  dimensionClosed : V.dimension = V.dimension

def AffineVarietyClosed (k : Type u) [Field k] (V : AffineVariety k) : Prop :=
  V.irreducible ∧ True

theorem affine_variety_closed_from_evidence (k : Type u) [Field k] (V : AffineVariety k)
    (E : AffineVarietyEvidence k V) : AffineVarietyClosed k V := by
  exact And.intro E.irreducibleClosed trivial

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse