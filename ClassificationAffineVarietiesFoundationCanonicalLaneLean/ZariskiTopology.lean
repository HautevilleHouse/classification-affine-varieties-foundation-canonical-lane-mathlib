import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.AffineVarietyPackage

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure ZariskiTopologyPackage (V : AffineVarietyPackage) where
  closedSets : Set (Set V.variety)
  finiteUnionOfClosedClosed : Prop
  arbitraryIntersectionClosed : Prop
  emptyAndWholeClosed : Prop
  closedIffAlgebraicSet : Prop

def ZariskiTopologyClosed (V : AffineVarietyPackage) (Z : ZariskiTopologyPackage V) : Prop :=
  Z.finiteUnionOfClosedClosed ∧ Z.arbitraryIntersectionClosed ∧ Z.emptyAndWholeClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse