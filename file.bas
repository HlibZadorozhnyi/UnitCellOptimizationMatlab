Option Explicit
Sub Main ()
OpenFile ("C:\Work\MatlabApps\UnitCellOptimizationMatlabNew\CST\unitcell.cst")
DeleteResults
StoreDoubleParameter ("Wgap", 1.000)
StoreDoubleParameter ("Wline", 1.420)
StoreDoubleParameter ("L", 10.000)
Rebuild
SimulationTask.Name("Sweep1")
SimulationTask.Update
End Sub
