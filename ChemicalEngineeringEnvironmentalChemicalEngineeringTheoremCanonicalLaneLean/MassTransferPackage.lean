import canononicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure MassTransferPackage (A : AdmissibleClass) where
  diffusionCoefficient : Prop
  massTransferCoefficient : Prop
  concentrationProfile : Prop
  fluxEquation : Prop
  boundaryLayerModel : Prop

structure MassTransferEvidence (A : AdmissibleClass) (M : MassTransferPackage A) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  massTransferCoefficientClosed : M.massTransferCoefficient
  concentrationProfileClosed : M.concentrationProfile
  fluxEquationClosed : M.fluxEquation
  boundaryLayerModelClosed : M.boundaryLayerModel

def MassTransferClosed (A : AdmissibleClass) (M : MassTransferPackage A) : Prop :=
  M.diffusionCoefficient ∧ M.massTransferCoefficient ∧ M.concentrationProfile ∧ M.fluxEquation ∧ M.boundaryLayerModel

theorem mass_transfer_closed_from_evidence (A : AdmissibleClass) (M : MassTransferPackage A) (E : MassTransferEvidence A M) :
    MassTransferClosed A M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.massTransferCoefficientClosed
      (And.intro E.concentrationProfileClosed
        (And.intro E.fluxEquationClosed E.boundaryLayerModelClosed)))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
