import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure DimensionPackage where
  variety : AffineVarietyAdmittedObject
  dimension : Nat
  equalToKrullDimension : Prop
  chainConditionHolds : Prop
  dimensionFormulaHolds : Prop
  equalToKrullDimensionClosed : equalToKrullDimension
  chainConditionHoldsClosed : chainConditionHolds
  dimensionFormulaHoldsClosed : dimensionFormulaHolds

def DimensionClosed (D : DimensionPackage) : Prop :=
  D.equalToKrullDimension ∧ D.chainConditionHolds ∧ D.dimensionFormulaHolds

theorem dimension_closed_from_package (D : DimensionPackage) :
    DimensionClosed D := by
  exact And.intro D.equalToKrullDimensionClosed (And.intro D.chainConditionHoldsClosed D.dimensionFormulaHoldsClosed)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
