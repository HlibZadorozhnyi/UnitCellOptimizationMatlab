'# MWS Version: Version 2024.1 - Oct 16 2023 - ACIS 33.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 9 fmax = 13
'# created = '[VERSION]2024.1|33.0.1|20231016[/VERSION]


'@ define material: Copper (pure)

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material
     .Reset
     .Name "Copper (pure)"
     .Folder ""
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Mu "1.0"
     .Sigma "5.96e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.96e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ new component: bottom

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Component.New "bottom"

'@ define brick: bottom:solid1

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "bottom" 
     .Material "Copper (pure)" 
     .Xrange "-W/2", "W/2" 
     .Yrange "-L/2", "L/2" 
     .Zrange "0", "th" 
     .Create
End With

'@ define material: material1

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Reset 
     .Name "material1"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "4.43"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "5" 
     .Create
End With

'@ new component: substrate

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Component.New "substrate"

'@ define brick: substrate:solid2

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid2" 
     .Component "substrate" 
     .Material "material1" 
     .Xrange "-W/2", "W/2" 
     .Yrange "-L/2", "L/2" 
     .Zrange "th", "th+h" 
     .Create
End With

'@ rename material: material1 to: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Material.Rename "material1", "IS400"

'@ define material colour: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Name "IS400"
     .Folder ""
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ new component: top

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Component.New "top"

'@ define brick: top:solid3

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid3" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-Wline/2", "Wline/2" 
     .Yrange "-L/2", "L/2" 
     .Zrange "th+h", "(th*2)+h" 
     .Create
End With

'@ define brick: top:solid4

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid4" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-W/2", "-1*(Wline/2+Wgap)" 
     .Yrange "-L/2", "L/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid5

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid5" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "Wgap+Wline/2", "W/2" 
     .Yrange "-L/2", "L/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid6

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid6" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-Xpad1-Wpad/2", "-Xpad1+Wpad/2" 
     .Yrange "-Lpad/2", "Lpad/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid7

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid7" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-Xpad2-Wpad/2", "-Xpad2+Wpad/2" 
     .Yrange "-Lpad/2", "Lpad/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ pick edge

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickEdgeFromId "top:solid6", "4", "4"

'@ define distance dimension

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "0"
    .SetOrientation "Smart Mode"
    .SetDistance "0.573119"
    .SetViewVector "-0.265615", "0.435535", "-0.860092"
    .SetConnectedElement1 "top:solid6"
    .SetConnectedElement2 "top:solid6"
    .Create
End With

Pick.ClearAllPicks

'@ pick edge

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickEdgeFromId "top:solid6", "3", "3"

'@ define distance dimension

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "1"
    .SetOrientation "Smart Mode"
    .SetDistance "0.405679"
    .SetViewVector "-0.265615", "0.435535", "-0.860092"
    .SetConnectedElement1 "top:solid6"
    .SetConnectedElement2 "top:solid6"
    .Create
End With

Pick.ClearAllPicks

'@ define brick: top:solid8

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid8" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "Xpad3-Wpad/2", "Xpad3+Wpad/2" 
     .Yrange "-Lpad/2", "Lpad/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid9

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid9" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "Xpad4-Wpad/2", "Xpad4+Wpad/2" 
     .Yrange "-Lpad/2", "Lpad/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ delete dimension 0

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Dimension
    .RemoveDimension "0"
End With

'@ delete dimension 1

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Dimension
    .RemoveDimension "1"
End With

'@ define brick: top:solid10

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid10" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-1*(Wgap+Wline/2)", "-1*(Xpad1+Wpad/2)" 
     .Yrange "-L1/2", "L1/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid11

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid11" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "-1*(Xpad2-Wpad/2)", "-Wline/2" 
     .Yrange "-L1/2", "L1/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid12

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid12" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "Wline/2+Wgap", "Xpad3+Wpad/2" 
     .Yrange "-L1/2", "L1/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ define brick: top:solid13

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Brick
     .Reset 
     .Name "solid13" 
     .Component "top" 
     .Material "Copper (pure)" 
     .Xrange "Wline/2", "Xpad4-Wpad/2" 
     .Yrange "-L1/2", "L1/2" 
     .Zrange "th+h", "th+h+th" 
     .Create
End With

'@ boolean add shapes: top:solid10, top:solid11

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid10", "top:solid11"

'@ boolean add shapes: top:solid12, top:solid13

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid12", "top:solid13"

'@ boolean add shapes: top:solid3, top:solid4

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid3", "top:solid4"

'@ boolean add shapes: top:solid5, top:solid6

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid5", "top:solid6"

'@ boolean add shapes: top:solid7, top:solid8

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid7", "top:solid8"

'@ boolean add shapes: top:solid7, top:solid9

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid7", "top:solid9"

'@ boolean add shapes: top:solid10, top:solid12

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid10", "top:solid12"

'@ boolean add shapes: top:solid3, top:solid5

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid3", "top:solid5"

'@ boolean add shapes: top:solid3, top:solid7

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid3", "top:solid7"

'@ boolean add shapes: top:solid10, top:solid3

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solid.Add "top:solid10", "top:solid3"

'@ define material: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Reset 
     .Name "IS400"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "4.43"
     .Mu "1"
     .Sigma "0"
     .TanD "0.0189"
     .TanDFreq "0.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material colour: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Name "IS400"
     .Folder ""
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

'@ define boundaries

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Boundary
     .Xmin "electric"
     .Xmax "electric"
     .Ymin "magnetic"
     .Ymax "magnetic"
     .Zmin "electric"
     .Zmax "open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
     .ApplyInAllDirections "False"
End With

'@ define background

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Background 
     .ResetBackground 
     .XminSpace "0.0" 
     .XmaxSpace "0.0" 
     .YminSpace "0.0" 
     .YmaxSpace "0.0" 
     .ZminSpace "0.0" 
     .ZmaxSpace "D" 
     .ApplyInAllDirections "False" 
End With 

With Material 
     .Reset 
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "K"
     .Epsilon "1.0"
     .Mu "1.0"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ pick mid point

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickMidpointFromId "top:solid10", "37"

'@ pick mid point

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickMidpointFromId "top:solid10", "27"

'@ define discrete port: 1

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "1" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "-1.385", "0", "0.97"
     .SetP2 "True", "-1.035", "0", "0.97"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ clear picks

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.ClearAllPicks

'@ pick mid point

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickMidpointFromId "top:solid10", "15"

'@ pick mid point

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Pick.PickMidpointFromId "top:solid10", "1"

'@ define discrete port: 2

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With DiscretePort 
     .Reset 
     .PortNumber "2" 
     .Type "SParameter"
     .Label ""
     .Folder ""
     .Impedance "50.0"
     .Voltage "1.0"
     .Current "1.0"
     .Monitor "True"
     .Radius "0.0"
     .SetP1 "True", "1.385", "0", "0.97"
     .SetP2 "True", "1.035", "0", "0.97"
     .InvertDirection "False"
     .LocalCoordinates "False"
     .Wire ""
     .Position "end1"
     .Create 
End With

'@ define port: 3

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Port 
     .Reset 
     .PortNumber "3" 
     .Label ""
     .Folder ""
     .NumberOfModes "1"
     .AdjustPolarization "False"
     .PolarizationAngle "0.0"
     .ReferencePlaneDistance "0"
     .TextSize "50"
     .TextMaxLimit "1"
     .Coordinates "Full"
     .Orientation "zmax"
     .PortOnBound "True"
     .ClipPickedPortToBound "False"
     .Xrange "-5", "5"
     .Yrange "-5", "5"
     .Zrange "15.97", "15.97"
     .XrangeAdd "0.0", "0.0"
     .YrangeAdd "0.0", "0.0"
     .ZrangeAdd "0.0", "0.0"
     .SingleEnded "False"
     .WaveguideMonitor "False"
     .Create 
End With

'@ define frequency range

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solver.FrequencyRange "8", "15"

'@ define time domain solver acceleration

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Solver 
     .UseParallelization "True"
     .MaximumNumberOfThreads "1024"
     .MaximumNumberOfCPUDevices "8"
     .RemoteCalculation "False"
     .UseDistributedComputing "False"
     .MaxNumberOfDistributedComputingPorts "64"
     .DistributeMatrixCalculation "True"
     .MPIParallelization "False"
     .AutomaticMPI "False"
     .ConsiderOnly0D1DResultsForMPI "False"
     .HardwareAcceleration "True"
     .MaximumNumberOfGPUs "16"
End With
UseDistributedComputingForParameters "False"
MaxNumberOfDistributedComputingParameters "2"
UseDistributedComputingMemorySetting "False"
MinDistributedComputingMemoryLimit "0"
UseDistributedComputingSharedDirectory "False"
OnlyConsider0D1DResultsForDC "False"

'@ define time domain solver parameters

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ set PBA version

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Discretizer.PBAVersion "2023101624"

'@ change solver type

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
ChangeSolverType "HF Time Domain"

'@ define frequency range

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
Solver.FrequencyRange "9", "13"

'@ define material: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Reset 
     .Name "IS400"
     .Folder ""
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .Absorptance "0"
     .MechanicsType "Unused"
     .IntrinsicCarrierDensity "0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "ns"
     .MaterialUnit "Temperature", "degC"
     .Epsilon "4.43"
     .Mu "1"
     .Sigma "0.0"
     .TanD "0.0189"
     .TanDFreq "10"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With

'@ define material colour: IS400

'[VERSION]2024.1|33.0.1|20231016[/VERSION]
With Material 
     .Name "IS400"
     .Folder ""
     .Colour "1", "0", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeColour 
End With

