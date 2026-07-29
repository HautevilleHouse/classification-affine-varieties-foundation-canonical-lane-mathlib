import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVarietyPackage where
  baseField : Type u
  coordinateRing : Type v
  variety : Type w
  zariskiTopology : TopologicalSpace variety
  irreducible : Prop
  reduced : Prop
  separated : Prop
  finiteType : Prop

def AffineVarietyClosed (V : AffineVarietyPackage) : Prop :=
  V.irreducible ∧ V.reduced ∧ V.separated ∧ V.finiteType

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse