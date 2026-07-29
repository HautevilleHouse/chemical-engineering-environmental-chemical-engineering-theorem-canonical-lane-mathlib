import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure AdsorptionIsothermPackage where
  adsorptionConstant : Prop
  surfaceCoverage : Prop
  pressureRange : Prop
  temperatureDependence : Prop

structure AdsorptionIsothermEvidence (A : AdsorptionIsothermPackage) where
  adsorptionConstantClosed : A.adsorptionConstant
  surfaceCoverageClosed : A.surfaceCoverage
  pressureRangeClosed : A.pressureRange
  temperatureDependenceClosed : A.temperatureDependence

def AdsorptionIsothermClosed (A : AdsorptionIsothermPackage) : Prop :=
  A.adsorptionConstant ∧ A.surfaceCoverage ∧ A.pressureRange ∧ A.temperatureDependence

theorem adsorption_isotherm_closed_from_evidence (A : AdsorptionIsothermPackage) (E : AdsorptionIsothermEvidence A) : AdsorptionIsothermClosed A := by
  exact And.intro E.adsorptionConstantClosed (And.intro E.surfaceCoverageClosed (And.intro E.pressureRangeClosed E.temperatureDependenceClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse