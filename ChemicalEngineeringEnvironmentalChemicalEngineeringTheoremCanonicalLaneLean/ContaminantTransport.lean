import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ContaminantTransportPackage where
  diffusivity : Prop
  advectionVelocity : Prop
  dispersionCoefficient : Prop
  reactionRate : Prop

structure ContaminantTransportEvidence (C : ContaminantTransportPackage) where
  diffusivityClosed : C.diffusivity
  advectionVelocityClosed : C.advectionVelocity
  dispersionCoefficientClosed : C.dispersionCoefficient
  reactionRateClosed : C.reactionRate

def ContaminantTransportClosed (C : ContaminantTransportPackage) : Prop :=
  C.diffusivity ∧ C.advectionVelocity ∧ C.dispersionCoefficient ∧ C.reactionRate

theorem contaminant_transport_closed_from_evidence (C : ContaminantTransportPackage) (E : ContaminantTransportEvidence C) : ContaminantTransportClosed C := by
  exact And.intro E.diffusivityClosed (And.intro E.advectionVelocityClosed (And.intro E.dispersionCoefficientClosed E.reactionRateClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse