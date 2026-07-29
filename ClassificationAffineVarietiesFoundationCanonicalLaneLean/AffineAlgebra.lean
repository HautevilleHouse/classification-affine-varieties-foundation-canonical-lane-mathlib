import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineAlgebra where
  algebra : Type u
  ringStructure : CommRing algebra
  algebraStructure : Algebra (Ring ℚ) algebra
  finitelyGenerated : Prop
  reduced : Prop

structure AffineAlgebraEvidence (A : AffineAlgebra) where
  finitelyGeneratedClosed : A.finitelyGenerated
  reducedClosed : A.reduced

def AffineAlgebraClosed (A : AffineAlgebra) : Prop :=
  A.finitelyGenerated ∧ A.reduced

theorem affine_algebra_closed_from_evidence (A : AffineAlgebra) (E : AffineAlgebraEvidence A) : AffineAlgebraClosed A := by
  exact And.intro E.finitelyGeneratedClosed E.reducedClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse