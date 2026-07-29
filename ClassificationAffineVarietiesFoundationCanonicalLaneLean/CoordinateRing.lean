import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure CoordinateRing where
  ring : Type u
  ringStructure : CommRing ring
  finitelyGenerated : Prop
  reduced : Prop
  integralDomain : Prop
  Noetherian : Prop

structure CoordinateRingEvidence (R : CoordinateRing) where
  finitelyGeneratedClosed : R.finitelyGenerated
  reducedClosed : R.reduced
  integralDomainClosed : R.integralDomain
  NoetherianClosed : R.Noetherian

def CoordinateRingClosed (R : CoordinateRing) : Prop :=
  R.finitelyGenerated ∧ R.reduced ∧ R.integralDomain ∧ R.Noetherian

theorem coordinate_ring_closed_from_evidence (R : CoordinateRing) (E : CoordinateRingEvidence R) : CoordinateRingClosed R := by
  exact And.intro E.finitelyGeneratedClosed (And.intro E.reducedClosed (And.intro E.integralDomainClosed E.NoetherianClosed))

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse