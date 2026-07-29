import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure MassTransferPackage where
  fickLaw : Prop
  filmTheory : Prop
  penetrationTheory : Prop
  interphaseMassTransfer : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  fickLawClosed : M.fickLaw
  filmTheoryClosed : M.filmTheory
  penetrationTheoryClosed : M.penetrationTheory
  interphaseMassTransferClosed : M.interphaseMassTransfer

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.fickLaw ∧ M.filmTheory ∧ M.penetrationTheory ∧ M.interphaseMassTransfer

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage) (E : MassTransferEvidence M) :
    MassTransferClosed M := by
  exact And.intro E.fickLawClosed (And.intro E.filmTheoryClosed (And.intro E.penetrationTheoryClosed E.interphaseMassTransferClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
