import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure CoordinateRingPackage where
  ringType : Type u
  isDomain : Prop
  isNoetherian : Prop
  krullDimension : Nat
  integrallyClosed : Prop
  isDomainClosed : isDomain
  isNoetherianClosed : isNoetherian
  integrallyClosedClosed : integrallyClosed

def CoordinateRingClosed (C : CoordinateRingPackage) : Prop :=
  C.isDomain ∧ C.isNoetherian ∧ C.integrallyClosed

theorem coordinate_ring_closed_from_package (C : CoordinateRingPackage) :
    CoordinateRingClosed C := by
  exact And.intro C.isDomainClosed (And.intro C.isNoetherianClosed C.integrallyClosedClosed)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
