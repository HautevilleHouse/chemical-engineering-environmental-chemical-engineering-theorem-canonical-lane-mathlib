import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  huckelMethod : Prop
  symmetryAdaptation : Prop
  orbitalEnergyLevels : Prop
  frontierMolecularOrbitals : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  huckelMethodClosed : M.huckelMethod
  symmetryAdaptationClosed : M.symmetryAdaptation
  orbitalEnergyLevelsClosed : M.orbitalEnergyLevels
  frontierMolecularOrbitalsClosed : M.frontierMolecularOrbitals

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.huckelMethod ∧ M.symmetryAdaptation ∧ M.orbitalEnergyLevels ∧ M.frontierMolecularOrbitals

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.huckelMethodClosed (And.intro E.symmetryAdaptationClosed (And.intro E.orbitalEnergyLevelsClosed E.frontierMolecularOrbitalsClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
