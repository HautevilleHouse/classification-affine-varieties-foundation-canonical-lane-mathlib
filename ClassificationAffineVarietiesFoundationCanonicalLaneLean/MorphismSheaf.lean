import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure MorphismSheaf (k : Type u) [Field k] (V W : AffineVariety k) where
  underlyingMap : V.underlyingSet → W.underlyingSet
  regular : Prop
  compositionClosed : Prop
  identitySheaf : Prop

structure MorphismSheafEvidence (k : Type u) [Field k] {V W : AffineVariety k} (M : MorphismSheaf k V W) where
  regularClosed : M.regular
  compositionClosedClosed : M.compositionClosed
  identitySheafClosed : M.identitySheaf

def MorphismSheafClosed (k : Type u) [Field k] {V W : AffineVariety k} (M : MorphismSheaf k V W) : Prop :=
  M.regular ∧ M.compositionClosed ∧ M.identitySheaf

theorem morphism_sheaf_closed_from_evidence (k : Type u) [Field k] {V W : AffineVariety k}
    (M : MorphismSheaf k V W) (E : MorphismSheafEvidence k M) : MorphismSheafClosed k M := by
  exact And.intro E.regularClosed (And.intro E.compositionClosedClosed E.identitySheafClosed)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse