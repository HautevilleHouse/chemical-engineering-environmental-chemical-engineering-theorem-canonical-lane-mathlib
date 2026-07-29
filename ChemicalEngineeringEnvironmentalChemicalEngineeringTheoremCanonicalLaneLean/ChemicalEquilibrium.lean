import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantExpression : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop
  phaseEquilibrium : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantExpressionClosed : C.equilibriumConstantExpression
  reactionQuotientClosed : C.reactionQuotient
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  phaseEquilibriumClosed : C.phaseEquilibrium

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantExpression ∧ C.reactionQuotient ∧ C.leChatelierPrinciple ∧ C.phaseEquilibrium

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantExpressionClosed (And.intro E.reactionQuotientClosed (And.intro E.leChatelierPrincipleClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
