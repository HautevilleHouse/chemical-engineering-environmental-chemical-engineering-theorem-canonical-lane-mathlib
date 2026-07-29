import canononicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure KineticsPackage (A : AdmissibleClass) where
  rateConstantDefined : Prop
  reactionOrderDetermined : Prop
  activationEnergyGiven : Prop
  rateLawDerived : Prop
  rateLawConsistent : Prop

structure KineticsEvidence (A : AdmissibleClass) (K : KineticsPackage A) where
  rateConstantDefinedClosed : K.rateConstantDefined
  reactionOrderDeterminedClosed : K.reactionOrderDetermined
  activationEnergyGivenClosed : K.activationEnergyGiven
  rateLawDerivedClosed : K.rateLawDerived
  rateLawConsistentClosed : K.rateLawConsistent

def KineticsClosed (A : AdmissibleClass) (K : KineticsPackage A) : Prop :=
  K.rateConstantDefined ∧ K.reactionOrderDetermined ∧ K.activationEnergyGiven ∧ K.rateLawDerived ∧ K.rateLawConsistent

theorem kinetics_closed_from_evidence (A : AdmissibleClass) (K : KineticsPackage A) (E : KineticsEvidence A K) :
    KineticsClosed A K := by
  exact And.intro E.rateConstantDefinedClosed
    (And.intro E.reactionOrderDeterminedClosed
      (And.intro E.activationEnergyGivenClosed
        (And.intro E.rateLawDerivedClosed E.rateLawConsistentClosed)))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
