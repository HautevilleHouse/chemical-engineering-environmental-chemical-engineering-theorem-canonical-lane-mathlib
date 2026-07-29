import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure EnvironmentalCatalysisPackage where
  adsorptionIsotherm : Prop
  langmuirHinshelwoodMechanism : Prop
  catalystDeactivation : Prop
  reactorDesign : Prop

structure EnvironmentalCatalysisEvidence (E : EnvironmentalCatalysisPackage) where
  adsorptionIsothermClosed : E.adsorptionIsotherm
  langmuirHinshelwoodMechanismClosed : E.langmuirHinshelwoodMechanism
  catalystDeactivationClosed : E.catalystDeactivation
  reactorDesignClosed : E.reactorDesign

def EnvironmentalCatalysisClosed (E : EnvironmentalCatalysisPackage) : Prop :=
  E.adsorptionIsotherm ∧ E.langmuirHinshelwoodMechanism ∧ E.catalystDeactivation ∧ E.reactorDesign

theorem environmental_catalysis_closed_from_evidence (E : EnvironmentalCatalysisPackage) (Ev : EnvironmentalCatalysisEvidence E) :
    EnvironmentalCatalysisClosed E := by
  exact And.intro Ev.adsorptionIsothermClosed (And.intro Ev.langmuirHinshelwoodMechanismClosed (And.intro Ev.catalystDeactivationClosed Ev.reactorDesignClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
