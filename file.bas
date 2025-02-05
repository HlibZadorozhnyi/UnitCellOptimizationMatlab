Option Explicit
Sub Main ()
OpenFile ("C:\Work\MatlabApps\UnitCellOptimizationMatlab\CST\unitcell.cst")
DeleteResults
StoreDoubleParameter ("Wgap", 2.810)
StoreDoubleParameter ("Wline", 0.360)
StoreDoubleParameter ("L", 10.000)
Rebuild
SimulationTask.Name("Sweep1")
SimulationTask.Update
End Sub
