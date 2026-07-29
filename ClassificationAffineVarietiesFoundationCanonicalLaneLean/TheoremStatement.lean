import ClassificationAffineVarietiesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "classification-affine-varieties-foundation",
  theoremName := "ClassificationAffineVarietiesFoundation",
  theoremObject := "Classification of affine varieties",
  classicalBoundary := "carried classical boundary",
  manifoldConstrainedStatement := "affine variety constrained theorem certificate internalized through bridge and gate",
  certificateLane := "affine_variety_constrained",
  carriedRemainder := "carried remainder"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "classification-affine-varieties-foundation" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "affine_variety_constrained" := by
  rfl

end ClassificationAffineVarietiesFoundationCanonicalLaneLean
end HautevilleHouse