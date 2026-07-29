import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure TransportPhenomenaPackage where
  massTransfer : Prop
  heatTransfer : Prop
  momentumTransfer : Prop
  dimensionlessNumbers : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  massTransferClosed : T.massTransfer
  heatTransferClosed : T.heatTransfer
  momentumTransferClosed : T.momentumTransfer
  dimensionlessNumbersClosed : T.dimensionlessNumbers

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.massTransfer ∧ T.heatTransfer ∧ T.momentumTransfer ∧ T.dimensionlessNumbers

theorem transport_phenomena_closed_from_evidence (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.massTransferClosed (And.intro E.heatTransferClosed (And.intro E.momentumTransferClosed E.dimensionlessNumbersClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
