import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.AffineScheme

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure IrreducibleDecomposition (X : AffineVarietyObject) where
  components : List (Type u)
  closedImmersion : ∀ (comp : components), TopologicalSpace comp
  irreducible : ∀ (comp : components), Prop
  unionCovers : Prop
  unionCoversClosed : unionCovers
  irreducibleClosed : ∀ (comp : components), irreducible comp

def IrreducibleDecompositionClosed (X : AffineVarietyObject) (D : IrreducibleDecomposition X) : Prop :=
  D.unionCovers ∧ (∀ (comp : D.components), D.irreducible comp)

theorem irreducible_decomposition_closed_from_evidence (X : AffineVarietyObject)
    (D : IrreducibleDecomposition X) : IrreducibleDecompositionClosed X D := by
  exact And.intro D.unionCoversClosed D.irreducibleClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse