import canononicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ChemicalAdmissibleObject where
  system : Type
  equilibriumCondition : Prop
  kineticRateLaw : Prop
  massBalance : Prop
  conclusion : equilibriumCondition ∧ kineticRateLaw ∧ massBalance

structure AdmissibleClass where
  object : ChemicalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.equilibriumCondition ∧ A.object.kineticRateLaw ∧ A.object.massBalance) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
