import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure AdsorptionReactionKineticsPackage where
  rateConstant : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  equilibriumConstant : Prop

structure AdsorptionReactionKineticsEvidence (K : AdsorptionReactionKineticsPackage) where
  rateConstantClosed : K.rateConstant
  activationEnergyClosed : K.activationEnergy
  preExponentialFactorClosed : K.preExponentialFactor
  equilibriumConstantClosed : K.equilibriumConstant

def AdsorptionReactionKineticsClosed (K : AdsorptionReactionKineticsPackage) : Prop :=
  K.rateConstant ∧ K.activationEnergy ∧ K.preExponentialFactor ∧ K.equilibriumConstant

theorem adsorption_reaction_kinetics_closed_from_evidence (K : AdsorptionReactionKineticsPackage) (E : AdsorptionReactionKineticsEvidence K) : AdsorptionReactionKineticsClosed K := by
  exact And.intro E.rateConstantClosed (And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed E.equilibriumConstantClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse