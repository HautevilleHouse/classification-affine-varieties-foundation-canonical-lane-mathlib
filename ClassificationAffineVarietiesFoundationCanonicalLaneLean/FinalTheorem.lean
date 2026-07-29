import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ClassificationAffineVarietiesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

def ConstrainedAffineVarietyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_affine_variety_endgame (A : AdmissibleClass) :
    ConstrainedAffineVarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse
