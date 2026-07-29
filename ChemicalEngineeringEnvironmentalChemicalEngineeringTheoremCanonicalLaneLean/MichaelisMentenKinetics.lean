import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure MichaelisMentenPackage where
  maxRate : Prop
  halfSaturationConstant : Prop
  substrateRange : Prop
  reactionOrder : Prop

structure MichaelisMentenEvidence (M : MichaelisMentenPackage) where
  maxRateClosed : M.maxRate
  halfSaturationConstantClosed : M.halfSaturationConstant
  substrateRangeClosed : M.substrateRange
  reactionOrderClosed : M.reactionOrder

def MichaelisMentenClosed (M : MichaelisMentenPackage) : Prop :=
  M.maxRate ∧ M.halfSaturationConstant ∧ M.substrateRange ∧ M.reactionOrder

theorem michaelis_menten_closed_from_evidence (M : MichaelisMentenPackage) (E : MichaelisMentenEvidence M) : MichaelisMentenClosed M := by
  exact And.intro E.maxRateClosed (And.intro E.halfSaturationConstantClosed (And.intro E.substrateRangeClosed E.reactionOrderClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse