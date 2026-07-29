import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.AffineVarietyPackage

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure CoordinateRingPackage (V : AffineVarietyPackage) where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  isReduced : Prop
  isIntegralDomain : Prop
  finitelyGenerated : Prop
  spec : ring → V.variety

def CoordinateRingClosed {V : AffineVarietyPackage} (R : CoordinateRingPackage V) : Prop :=
  R.isReduced ∧ R.finitelyGenerated

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse