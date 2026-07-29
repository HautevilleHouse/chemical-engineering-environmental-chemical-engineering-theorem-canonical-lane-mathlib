import canononicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ReactorDesignPackage (A : AdmissibleClass) where
  materialBalance : Prop
  energyBalance : Prop
  residenceTimeDistribution : Prop
  conversionEfficiency : Prop
  reactorStability : Prop

structure ReactorDesignEvidence (A : AdmissibleClass) (R : ReactorDesignPackage A) where
  materialBalanceClosed : R.materialBalance
  energyBalanceClosed : R.energyBalance
  residenceTimeDistributionClosed : R.residenceTimeDistribution
  conversionEfficiencyClosed : R.conversionEfficiency
  reactorStabilityClosed : R.reactorStability

def ReactorDesignClosed (A : AdmissibleClass) (R : ReactorDesignPackage A) : Prop :=
  R.materialBalance ∧ R.energyBalance ∧ R.residenceTimeDistribution ∧ R.conversionEfficiency ∧ R.reactorStability

theorem reactor_design_closed_from_evidence (A : AdmissibleClass) (R : ReactorDesignPackage A) (E : ReactorDesignEvidence A R) :
    ReactorDesignClosed A R := by
  exact And.intro E.materialBalanceClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.residenceTimeDistributionClosed
        (And.intro E.conversionEfficiencyClosed E.reactorStabilityClosed)))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
