import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.AffineVarietyPackage

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure MorphismPackage (X Y : AffineVarietyPackage) where
  underlyingMap : X.variety → Y.variety
  regularMap : Prop
  continuousWrtZariski : Prop
  pullbackOnFunctions : Prop
  dominant : Prop
  finite : Prop
  etale : Prop

def MorphismClosed {X Y : AffineVarietyPackage} (f : MorphismPackage X Y) : Prop :=
  f.regularMap ∧ f.continuousWrtZariski ∧ f.pullbackOnFunctions

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse