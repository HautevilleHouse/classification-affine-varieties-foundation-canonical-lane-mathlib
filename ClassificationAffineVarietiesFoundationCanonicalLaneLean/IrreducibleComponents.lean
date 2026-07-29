import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.AffineVarietyAdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure IrreducibleDecompositionPackage where
  variety : AffineVarietyAdmittedObject
  irreducibleComponents : List (Submodule variety.ring)
  decompositionCover : Prop
  minimality : Prop
  uniqueness : Prop
  decompositionCoverClosed : decompositionCover
  minimalityClosed : minimality
  uniquenessClosed : uniqueness

def IrreducibleDecompositionClosed (P : IrreducibleDecompositionPackage) : Prop :=
  P.decompositionCover ∧ P.minimality ∧ P.uniqueness

theorem irreducible_decomposition_closed_from_package (P : IrreducibleDecompositionPackage) :
    IrreducibleDecompositionClosed P := by
  exact And.intro P.decompositionCoverClosed (And.intro P.minimalityClosed P.uniquenessClosed)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
