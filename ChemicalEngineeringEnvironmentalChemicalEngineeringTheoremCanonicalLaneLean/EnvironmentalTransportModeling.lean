import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean

structure EnvironmentalTransportModelingPackage where
  advectionDispersionEquation : Prop
  pollutantFateModel : Prop
  sourceSinkTerm : Prop
  numericalSolution : Prop

structure EnvironmentalTransportModelingEvidence (E : EnvironmentalTransportModelingPackage) where
  advectionDispersionEquationClosed : E.advectionDispersionEquation
  pollutantFateModelClosed : E.pollutantFateModel
  sourceSinkTermClosed : E.sourceSinkTerm
  numericalSolutionClosed : E.numericalSolution

def EnvironmentalTransportModelingClosed (E : EnvironmentalTransportModelingPackage) : Prop :=
  E.advectionDispersionEquation ∧ E.pollutantFateModel ∧ E.sourceSinkTerm ∧ E.numericalSolution

theorem environmental_transport_modeling_closed_from_evidence (E : EnvironmentalTransportModelingPackage) (Ev : EnvironmentalTransportModelingEvidence E) :
    EnvironmentalTransportModelingClosed E := by
  exact And.intro Ev.advectionDispersionEquationClosed (And.intro Ev.pollutantFateModelClosed (And.intro Ev.sourceSinkTermClosed Ev.numericalSolutionClosed))

end ChemicalEngineeringEnvironmentalChemicalEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
