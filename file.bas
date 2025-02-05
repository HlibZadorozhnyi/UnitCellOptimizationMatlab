Option Explicit
Sub Main ()
OpenFile ("C:\Work\MatlabApps\UnitCellOptimizationMatlab\CST\unitcell.cst")
DeleteResults
StoreDoubleParameter ("Wgap", 0.558)
StoreDoubleParameter ("Wline", 7.172)
StoreDoubleParameter ("L", 10.000)
Rebuild
SimulationTask.Name("Sweep1")
SimulationTask.Update
End Sub
