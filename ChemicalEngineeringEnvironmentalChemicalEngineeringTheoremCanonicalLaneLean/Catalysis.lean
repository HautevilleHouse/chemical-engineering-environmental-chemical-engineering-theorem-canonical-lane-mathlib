import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure CatalysisPackage where
  activeSite : Prop
  adsorptionIsotherm : Prop
  reactionMechanism : Prop
  catalystDeactivation : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  activeSiteClosed : C.activeSite
  adsorptionIsothermClosed : C.adsorptionIsotherm
  reactionMechanismClosed : C.reactionMechanism
  catalystDeactivationClosed : C.catalystDeactivation

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.activeSite ∧ C.adsorptionIsotherm ∧ C.reactionMechanism ∧ C.catalystDeactivation

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.activeSiteClosed (And.intro E.adsorptionIsothermClosed (And.intro E.reactionMechanismClosed E.catalystDeactivationClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
