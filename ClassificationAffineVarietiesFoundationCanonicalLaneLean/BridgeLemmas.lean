import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse