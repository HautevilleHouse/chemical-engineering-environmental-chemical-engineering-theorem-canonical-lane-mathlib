import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure ActiveSitePackage where
  siteDensity : Prop
  bindingEnergy : Prop
  turnoverFrequency : Prop

structure ActivitySiteEvidence (A : ActiveSitePackage) where
  siteDensityClosed : A.siteDensity
  bindingEnergyClosed : A.bindingEnergy
  turnoverFrequencyClosed : A.turnoverFrequency

def ActiveSiteClosed (A : ActiveSitePackage) : Prop :=
  A.siteDensity ∧ A.bindingEnergy ∧ A.turnoverFrequency

theorem active_site_closed_from_evidence (A : ActiveSitePackage) (E : ActivitySiteEvidence A) : ActiveSiteClosed A := by
  exact And.intro E.siteDensityClosed (And.intro E.bindingEnergyClosed E.turnoverFrequencyClosed)

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse