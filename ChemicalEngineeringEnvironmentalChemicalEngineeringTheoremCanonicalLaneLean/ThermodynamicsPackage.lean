import canononicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ThermodynamicsPackage (A : AdmissibleClass) where
  enthalpyBalance : Prop
  entropyGeneration : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  spontaneityCondition : Prop

structure ThermodynamicsEvidence (A : AdmissibleClass) (T : ThermodynamicsPackage A) where
  enthalpyBalanceClosed : T.enthalpyBalance
  entropyGenerationClosed : T.entropyGeneration
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  spontaneityConditionClosed : T.spontaneityCondition

def ThermodynamicsClosed (A : AdmissibleClass) (T : ThermodynamicsPackage A) : Prop :=
  T.enthalpyBalance ∧ T.entropyGeneration ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.spontaneityCondition

theorem thermodynamics_closed_from_evidence (A : AdmissibleClass) (T : ThermodynamicsPackage A) (E : ThermodynamicsEvidence A T) :
    ThermodynamicsClosed A T := by
  exact And.intro E.enthalpyBalanceClosed
    (And.intro E.entropyGenerationClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.equilibriumConstantClosed E.spontaneityConditionClosed)))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
