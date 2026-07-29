import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure AffineVarietyMorphism where
  source : AffineVarietyAdmittedObject
  target : AffineVarietyAdmittedObject
  ringHom : source.ring →+* target.ring
  inducesContinuousMap : Prop
  isPolynomialMap : Prop
  inducesContinuousMapClosed : inducesContinuousMap
  isPolynomialMapClosed : isPolynomialMap

def MorphismClosed (f : AffineVarietyMorphism) : Prop :=
  f.inducesContinuousMap ∧ f.isPolynomialMap

theorem morphism_closed_from_fields (f : AffineVarietyMorphism) :
    MorphismClosed f := by
  exact And.intro f.inducesContinuousMapClosed f.isPolynomialMapClosed

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
