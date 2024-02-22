#############################################################################
###############################  Information  ###############################
#############################################################################

#
# Reactions from Table I in Pimblott J. Phys. Chem. 1992, 96(11).
# Rates are taken from Buxton compilation.
# Diffusion coefficients are from Plante et al. 2017
#


#############################################################################
##########################  Diffusion Coefficients  #########################
#############################################################################

sv:Ch/TOPASChemistry/DiffusionCoefficients/Molecules = 7 
"SolvatedElectron" "Hydroxyl"  "Hydrogen"  "Hydronium" "DyHydrogen" "Hydroxide" "HydrogenPeroxide"
dv:Ch/TOPASChemistry/DiffusionCoefficients/Values    = 7  
 4.900e9 2.30e9 8.0e9 9.46e9 4.8e9 5.3e9 2.3e9 nm2/s

b:Ch/TOPASChemistry/SetWaterMolecularConfiguration = "False"

#############################################################################
########################  TOPAS DEFAULT REACTIONS  ##########################
#############################################################################

# R1: H+  + OH-  = None 
sv:Ch/TOPASChemistry/Reaction/Hydronium/Hydroxide/Products = 1 "None"
d:Ch/TOPASChemistry/Reaction/Hydronium/Hydroxide/ReactionRate = 14.3e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydronium/Hydroxide/ReactionType = 3
b:Ch/TOPASChemistry/Reaction/Hydronium/Hydroxide/CompatibleWithStepByStep = "True"

# H + H = H2
sv:Ch/TOPASChemistry/Reaction/Hydrogen/Hydrogen/Products = 1 "Dyhydrogen"
d:Ch/TOPASChemistry/Reaction/Hydrogen/Hydrogen/ReactionRate = 1.56e10 /M/s
i:Ch/TOPASChemistry/Reaction/Hydrogen/Hydrogen/ReactionType = 1 
b:Ch/TOPASChemistry/Reaction/Hydrogen/Hydrogen/CompatibleWithStepByStep = "True"

# H + OH = None
sv:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydrogen/Products = 1 "None"
d:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydrogen/ReactionRate = 2.0e10 /M/s
i:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydrogen/ReactionType = 2
b:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydrogen/CompatibleWithStepByStep = "True"

# H + H2O2 = OH
sv:Ch/TOPASChemistry/Reaction/Hydrogen/HydrogenPeroxide/Products = 1 "Hydroxyl"
d:Ch/TOPASChemistry/Reaction/Hydrogen/HydrogenPeroxide/ReactionRate = 0.009e10 /M/s
i:Ch/TOPASChemistry/Reaction/Hydrogen/HydrogenPeroxide/ReactionType = 2
b:Ch/TOPASChemistry/Reaction/Hydrogen/HydrogenPeroxide/CompatibleWithStepByStep = "True"

# H + eaq = H2 + OH-
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydrogen/Products = 2 "Hydroxide" "Dyhydrogen"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydrogen/ReactionRate = 2.5e10 /M/s
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydrogen/ReactionType = 1
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydrogen/CompatibleWithStepByStep = "True"

# OH + OH = H2O2
sv:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydroxyl/Products = 1 "HydrogenPeroxide"
d:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydroxyl/ReactionRate = 0.55e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydroxyl/ReactionType = 2
b:Ch/TOPASChemistry/Reaction/Hydroxyl/Hydroxyl/CompatibleWithStepByStep = "True"

# OH + eaq- = OH-
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroxyl/Products = 1 "Hydroxide"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroxyl/ReactionRate = 3.0e10 /M/s
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroxyl/ReactionType = 2
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroxyl/CompatibleWithStepByStep = "True"

# H2O2 + eaq = OH- + OH
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/HydrogenPeroxide/Products = 2 "Hydroxide" "Hydroxyl"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/HydrogenPeroxide/ReactionRate = 1.1e10 /M/s
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/HydrogenPeroxide/ReactionType = 2
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/HydrogenPeroxide/CompatibleWithStepByStep = "True"

# Eaq + eaq = OH- + OH- + H2
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/SolvatedElectron/Products = 3 "Hydroxide" "Hydroxide" "Dyhydrogen"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/SolvatedElectron/ReactionRate = 1.1e10 /M/s
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/SolvatedElectron/ReactionType = 3
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/SolvatedElectron/CompatibleWithStepByStep = "True"

# Eaq + H+ = H
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydronium/Products = 1 "Hydrogen"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydronium/ReactionRate = 2.3e10 /M/s
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydronium/ReactionType = 4
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydronium/CompatibleWithStepByStep = "True"


#############################################################################
##################  TOPAS DEFAULT REACTIONS - Background  ###################
#############################################################################

# eaq + H+ -> H
sv:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Hydronium/Products     = 1 "Hydrogen"
d:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Hydronium/ReactionRate  = 2.3e10 /M/s
d:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Hydronium/Concentration = 1.00e-7 M
b:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Hydronium/CompatibleWithStepByStep = "True"

# H+  + OH-  = H2O/None 
sv:Ch/TOPASChemistry/BackgroundReaction/Hydronium/Hydroxide/Products     =  1 "None"
d:Ch/TOPASChemistry/BackgroundReaction/Hydronium/Hydroxide/ReactionRate  = 14.3e10 /M/s 
d:Ch/TOPASChemistry/BackgroundReaction/Hydronium/Hydroxide/Concentration = 1E-7 M
b:Ch/TOPASChemistry/BackgroundReaction/Hydronium/Hydroxide/CompatibleWithStepByStep = "True"

# H+  + OH-  = H2O/None 
sv:Ch/TOPASChemistry/BackgroundReaction/Hydroxide/Hydronium/Products     =  1 "None"
d:Ch/TOPASChemistry/BackgroundReaction/Hydroxide/Hydronium/ReactionRate  = 14.3e10 /M/s 
d:Ch/TOPASChemistry/BackgroundReaction/Hydroxide/Hydronium/Concentration = 1E-7 M
b:Ch/TOPASChemistry/BackgroundReaction/Hydroxide/Hydronium/CompatibleWithStepByStep = "True"

#############################################################################
###########################  WARDMAN REACTIONS  #############################
#############################################################################
# Reactions From Wardman - Rates from Plante 2021

# HO2 recombination reactions
# HO2 + None = H+ + O2- : Don't create H+ otherwise the amount of H+ molecules will be too high at the end
sv:Ch/TOPASChemistry/BackgroundReaction/HydroPeroxy/None/Products     =  2 "Superoxideanion" "Hydronium"
d:Ch/TOPASChemistry/BackgroundReaction/HydroPeroxy/None/ReactionRate  = 8.05e5 /M/s 
d:Ch/TOPASChemistry/BackgroundReaction/HydroPeroxy/None/Concentration = 0 M
b:Ch/TOPASChemistry/BackgroundReaction/HydroPeroxy/None/CompatibleWithStepByStep = "True"

# H+ + O2- -> HO2
sv:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydronium/Products     =  1 "HydroPeroxy"
d:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydronium/ReactionRate  = 5.00e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydronium/ReactionType  = 4
b:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydronium/CompatibleWithStepByStep = "False"

#sv:Ch/TOPASChemistry/BackgroundReaction/Superoxideanion/Hydronium/Products     =  1 "HydroPeroxy"
#d:Ch/TOPASChemistry/BackgroundReaction/Superoxideanion/Hydronium/ReactionRate  = 5.00e10 /M/s 
#d:Ch/TOPASChemistry/BackgroundReaction/Superoxideanion/Hydronium/Concentration = 1E-7 M
#b:Ch/TOPASChemistry/BackgroundReaction/Superoxideanion/Hydronium/CompatibleWithStepByStep = "False"

# R6: eaq- + O2 -> O2-
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Oxygen/Products     =  1 "Superoxideanion"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Oxygen/ReactionRate  = 1.9e10 /M/s 
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Oxygen/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Oxygen/CompatibleWithStepByStep = "False"

sv:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Oxygen/Products     =  1 "Superoxideanion"
d:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Oxygen/ReactionRate  = 1.9e10 /M/s 
d:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Oxygen/Concentration = 0.27e-3 M
b:Ch/TOPASChemistry/BackgroundReaction/SolvatedElectron/Oxygen/CompatibleWithStepByStep = "False"

# R7: H + O2 -> HO2
sv:Ch/TOPASChemistry/Reaction/Hydrogen/Oxygen/Products     =  1 "Hydroperoxy"
d:Ch/TOPASChemistry/Reaction/Hydrogen/Oxygen/ReactionRate  = 2.10e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydrogen/Oxygen/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydrogen/Oxygen/CompatibleWithStepByStep = "False"

sv:Ch/TOPASChemistry/BackgroundReaction/Hydrogen/Oxygen/Products      =  1 "Hydroperoxy"
d:Ch/TOPASChemistry/BackgroundReaction/Hydrogen/Oxygen/ReactionRate   = 2.10e10 /M/s 
d:Ch/TOPASChemistry/BackgroundReaction/Hydrogen/Oxygen/Concentration  = 0.27e-3 M
b:Ch/TOPASChemistry/BackgroundReaction/Hydrogen/Oxygen/CompatibleWithStepByStep = "False"

# R8a: HO2 + HO2 -> H2O2 + O2
sv:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroperoxy/Products     =  2 "HydrogenPeroxide" "Oxygen"
d:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroperoxy/ReactionRate  = 8.3e5 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroperoxy/ReactionType  = 1
b:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroperoxy/CompatibleWithStepByStep = "False"

# R8b: HO2 + O2- -> HO2- + O2 #H2O2 + O2 + OH-
sv:Ch/TOPASChemistry/Reaction/Hydroperoxy/Superoxideanion/Products     =  3 "HydrogenPeroxide" "Oxygen" "Hydroxide"
d:Ch/TOPASChemistry/Reaction/Hydroperoxy/Superoxideanion/ReactionRate  = 9.7e7 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroperoxy/Superoxideanion/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydroperoxy/Superoxideanion/CompatibleWithStepByStep = "False"

# R8c: O2- + O2- -> H2O2 + O2 + OH- | kObs = 0
#sv:Ch/TOPASChemistry/Reaction/Superoxideanion/Superoxideanion/Products     =  3 "HydrogenPeroxide" "Oxygen" "Hydroxide"
#d:Ch/TOPASChemistry/Reaction/Superoxideanion/Superoxideanion/ReactionRate  = 4.9e3 /M/s 
#i:Ch/TOPASChemistry/Reaction/Superoxideanion/Superoxideanion/ReactionType  = 1
#b:Ch/TOPASChemistry/Reaction/Superoxideanion/Superoxideanion/CompatibleWithStepByStep = "False"

# R9: From TOPAS-Default

# R10a: HO2 + OH -> O2 + H2O
sv:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroxyl/Products     =  1 "Oxygen"
d:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroxyl/ReactionRate  = 6.00e9 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroxyl/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydroperoxy/Hydroxyl/CompatibleWithStepByStep = "False"

# R10b: O2- + OH -> O2 + OH-
sv:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydroxyl/Products     = 2 "Oxygen" "Hydroxide"
d:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydroxyl/ReactionRate  = 8.2e9 /M/s 
i:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydroxyl/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Superoxideanion/Hydroxyl/CompatibleWithStepByStep = "False"

# R11: From TOPAS-Default

# R12: From TOPAS-Default

# R13: From TOPAS-Default

# R14: From TOPAS-Default

# R15a: eaq + HO2 -> H2O2 + OH- # Plante Says eaq + HO2 -> HO2- instead
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroperoxy/Products     =  2 "HydrogenPeroxide" "Hydroxide"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroperoxy/ReactionRate  = 2.00e10 /M/s 
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroperoxy/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Hydroperoxy/CompatibleWithStepByStep = "False"

# R15b: eaq + O2- -> H2O2 + 2 OH- # Plante Says eaq + O2- -> 2 OH-
sv:Ch/TOPASChemistry/Reaction/SolvatedElectron/Superoxideanion/Products     =  3 "Hydroxide" "Hydroxide"  "HydrogenPeroxide"
d:Ch/TOPASChemistry/Reaction/SolvatedElectron/Superoxideanion/ReactionRate  = 1.3e10 /M/s 
i:Ch/TOPASChemistry/Reaction/SolvatedElectron/Superoxideanion/ReactionType  = 4
b:Ch/TOPASChemistry/Reaction/SolvatedElectron/Superoxideanion/CompatibleWithStepByStep = "False"

# R16: From TOPAS-Default

# R17: From TOPAS-Default

# R18: From TOPAS-Default

# R19a: H + HO2 -> H2O2
sv:Ch/TOPASChemistry/Reaction/Hydrogen/HydroPeroxy/Products     =  1 "HydrogenPeroxide"
d:Ch/TOPASChemistry/Reaction/Hydrogen/HydroPeroxy/ReactionRate  = 1.5e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydrogen/HydroPeroxy/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydrogen/HydroPeroxy/CompatibleWithStepByStep = "False"

# R19b: H + O2- -> H2O2 + OH- # Plante Says H + O2- -> HO2-
sv:Ch/TOPASChemistry/Reaction/Hydrogen/Superoxideanion/Products     =  2 "HydrogenPeroxide" "Hydroxide"
d:Ch/TOPASChemistry/Reaction/Hydrogen/Superoxideanion/ReactionRate  = 1.8e10 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydrogen/Superoxideanion/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydrogen/Superoxideanion/CompatibleWithStepByStep = "False"

# R20a: HO2 + H2O2 -> OH + O2
sv:Ch/TOPASChemistry/Reaction/HydroPeroxy/HydrogenPeroxide/Products     =  2 "Oxygen" "Hydroxyl"
d:Ch/TOPASChemistry/Reaction/HydroPeroxy/HydrogenPeroxide/ReactionRate  = 5.0e-1 /M/s 
i:Ch/TOPASChemistry/Reaction/HydroPeroxy/HydrogenPeroxide/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/HydroPeroxy/HydrogenPeroxide/CompatibleWithStepByStep = "False"

# R20b: O2- + H2O2 -> OH + O2 + OH-
sv:Ch/TOPASChemistry/Reaction/Superoxideanion/HydrogenPeroxide/Products     =  3 "Oxygen" "Hydroxyl" "Hydroxide"
d:Ch/TOPASChemistry/Reaction/Superoxideanion/HydrogenPeroxide/ReactionRate  = 1.3e-1 /M/s 
i:Ch/TOPASChemistry/Reaction/Superoxideanion/HydrogenPeroxide/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Superoxideanion/HydrogenPeroxide/CompatibleWithStepByStep = "False"

# R21: OH + H2 -> H + H2O
sv:Ch/TOPASChemistry/Reaction/Hydroxyl/DyHydrogen/Products     =  1 "Hydrogen"
d:Ch/TOPASChemistry/Reaction/Hydroxyl/DyHydrogen/ReactionRate  = 4.3e7 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroxyl/DyHydrogen/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydroxyl/DyHydrogen/CompatibleWithStepByStep = "False"

# R22: From TOPAS-Default

# R23: OH + H2O2 -> H2O + O2- + H+ # Plante Says OH + H2O2 -> HO2 + H2O
sv:Ch/TOPASChemistry/Reaction/Hydroxyl/HydrogenPeroxide/Products     = 2 "Superoxideanion" "Hydronium"
d:Ch/TOPASChemistry/Reaction/Hydroxyl/HydrogenPeroxide/ReactionRate  = 2.7e7 /M/s 
i:Ch/TOPASChemistry/Reaction/Hydroxyl/HydrogenPeroxide/ReactionType  = 2
b:Ch/TOPASChemistry/Reaction/Hydroxyl/HydrogenPeroxide/CompatibleWithStepByStep = "False"

#############################################################################