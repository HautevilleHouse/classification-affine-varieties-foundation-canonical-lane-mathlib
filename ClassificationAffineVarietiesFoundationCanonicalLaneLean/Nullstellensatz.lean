import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure NullstellensatzPackage (k : Type u) [Field k] [AlgebraicallyClosed k] where
  vanishingIdealBijection : Prop
  radicalIdealCorrespondence : Prop
  coordinateRingCharacterization : Prop

structure NullstellensatzEvidence (k : Type u) [Field k] [AlgebraicallyClosed k] (N : NullstellensatzPackage k) where
  vanishingIdealBijectionClosed : N.vanishingIdealBijection
  radicalIdealCorrespondenceClosed : N.radicalIdealCorrespondence
  coordinateRingCharacterizationClosed : N.coordinateRingCharacterization

def NullstellensatzClosed (k : Type u) [Field k] [AlgebraicallyClosed k] (N : NullstellensatzPackage k) : Prop :=
  N.vanishingIdealBijection ∧ N.radicalIdealCorrespondence ∧ N.coordinateRingCharacterization

theorem nullstellensatz_closed_from_evidence (k : Type u) [Field k] [AlgebraicallyClosed k]
    (N : NullstellensatzPackage k) (E : NullstellensatzEvidence k N) : NullstellensatzClosed k N := by
  exact And.intro E.vanishingIdealBijectionClosed
    (And.intro E.radicalIdealCorrespondenceClosed E.coordinateRingCharacterizationClosed)

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse