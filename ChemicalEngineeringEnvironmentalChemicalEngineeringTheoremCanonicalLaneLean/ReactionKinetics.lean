import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  equilibriumConstant : Prop
  activationEnergy : Prop
  rateConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  equilibriumConstantClosed : R.equilibriumConstant
  activationEnergyClosed : R.activationEnergy
  rateConstantClosed : R.rateConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.equilibriumConstant ∧ R.activationEnergy ∧ R.rateConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.equilibriumConstantClosed (And.intro E.activationEnergyClosed E.rateConstantClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
