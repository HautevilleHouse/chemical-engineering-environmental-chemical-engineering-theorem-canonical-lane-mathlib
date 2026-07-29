import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheorem

structure Pollutant where
  name : String
  initialConcentration : ℕ
  degradationRate : ℕ
  halfLife : ℕ
  isBiodegradable : Bool

structure EnvironmentalReaction where
  pollutant : Pollutant
  degradationProducts : List String
  kineticOrder : ℕ
  rateConstant : ℕ
  temperatureDependence : ℕ
  activationEnergy : ℕ
  reactionRateCalculated : Prop
  reactionRateCalculatedTerm : reactionRateCalculated

structure EnvironmentalSystem where
  pollutants : List Pollutant
  reactions : List EnvironmentalReaction
  massBalanceEquations : List String
  transportTerms : List String
  systemClosed : Prop
  systemClosedTerm : systemClosed

structure EnvironmentalKineticsPackage where
  system : EnvironmentalSystem
  allRatesCalculated : ∀ r ∈ system.reactions, r.reactionRateCalculated
  systemClosed : system.systemClosed
  allRatesCalculatedTerm : allRatesCalculated
  systemClosedTerm : systemClosed

structure EnvironmentalKineticsEvidence (P : EnvironmentalKineticsPackage) where
  allRatesClosed : ∀ r ∈ P.system.reactions, r.reactionRateCalculated
  systemClosedEvidence : P.systemClosed

def EnvironmentalKineticsClosed (P : EnvironmentalKineticsPackage) : Prop :=
  (∀ r ∈ P.system.reactions, r.reactionRateCalculated) ∧ P.systemClosed

theorem environmental_kinetics_closed_from_evidence (P : EnvironmentalKineticsPackage) (E : EnvironmentalKineticsEvidence P) : EnvironmentalKineticsClosed P := by
  exact And.intro (fun r hr => E.allRatesClosed r hr) E.systemClosedEvidence

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheorem
end HautevilleHouse
