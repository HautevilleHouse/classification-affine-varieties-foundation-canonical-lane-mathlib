import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineCoordinateRing (k : Type u) [Field k] where
  carrier : Type v
  ring : Ring carrier
  algebra : Algebra k carrier
  finitelyGenerated : Prop
  reduced : Prop

structure AffineCoordinateRingEvidence (k : Type u) [Field k] (R : AffineCoordinateRing k) where
  finitelyGeneratedClosed : R.finitelyGenerated
  reducedClosed : R.reduced

def AffineCoordinateRingClosed (k : Type u) [Field k] (R : AffineCoordinateRing k) : Prop :=
  R.finitelyGenerated ∧ R.reduced

theorem affine_coordinate_ring_closed_from_evidence (k : Type u) [Field k] (R : AffineCoordinateRing k)
    (E : AffineCoordinateRingEvidence k R) : AffineCoordinateRingClosed k R := by
  exact And.intro E.finitelyGeneratedClosed E.reducedClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse