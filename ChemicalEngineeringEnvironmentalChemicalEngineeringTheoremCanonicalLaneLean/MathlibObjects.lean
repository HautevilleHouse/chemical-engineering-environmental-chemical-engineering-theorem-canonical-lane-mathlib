import ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemicalEngineeringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalEngineeringAdmittedObject where
  space : ChemicalEngineeringSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure ChemicalEngineeringEndgameState where
  object : ChemicalEngineeringAdmittedObject

def ChemicalEngineeringWitnessClosed (O : ChemicalEngineeringAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse