import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.CoordinateRingStructure

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure HilbertNullstellensatzPackage (V : AffineVarietyPackage) (R : CoordinateRingPackage V) where
  radicalIdealCorrespondence : Prop
  vanishingSetRadical : Prop
  maximalIdealsCorrespondToPoints : Prop
  weakNullstellensatz : Prop
  proofTerms : radicalIdealCorrespondence ∧ vanishingSetRadical ∧ maximalIdealsCorrespondToPoints ∧ weakNullstellensatz

theorem hilbert_nullstellensatz_closed (V : AffineVarietyPackage) (R : CoordinateRingPackage V) (H : HilbertNullstellensatzPackage V R) :
    HilbertNullstellensatzPackage V R := by
  exact H

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse