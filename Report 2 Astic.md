Report für Astic:
=================

1.
----

Beispiel für "was fehlt", gibt string fehler

	Hier werden alle Erze angezeigt die nicht mehr auf der Basis sind
	{#itemlist E.S.Items '4296,4297,4298,4299,4300,4301,4317,4318,4332,4345,4328,4302'}}
	{{#test Count leq 0}}
	{{Count}} {{i18n Key}}
	{{/test}}
	{{/itemlist}}

Solution:

	{{#test Count geq 1}}{{else}}


2.
----

Ids.Ore - Sathium Ore fehlt = 4332 // SathiumOre

3.
----

When using (concat @Ids.Ingot 'random,ids,...'), only entries from @Ids.Ingot get reckognizes as 0.

4.
----

Switch syntax:  \<prefix\>-\<Description\>-\<OreID\>-\<IngotID\>

- Why does it not reckognize strings .2 & .3 as they remain empty - while .1 is the last string that is displayed 
- BUT does work when .3 is the Description which was .1 previously



Pre-Code:

	{{~#devices @root.E.S (concat @root.data.PreSwitch '-*')}}
		{{~#each .}}
			{{~#split CustomName '-'}}
				{{set 'InputName' .1}}
				{{set 'InputId' .2}}
				{{set 'OutputId' .3}}

Actual Issue:

	{{~#split CustomName '-'}}
		Debug 0:{{.0}}  // 1:{{.1}} // 2:{{.2}}  // 3:{{.3}}
	{{/split}}

Also, {{items}} can not be called from within a {{devices}} call.



New ID List
============

New Suggestions - TODO:
-----------------------


Done - Added by Astic
---------------------


IDs.EdenWeaponUpgradeLarge
TurretBaseProjectileBlocksT2,TurretBaseRocketBlocksT2,TurretBaseLaserBlocksT2,TurretBaseArtilleryBlocksT2,TurretZiraxMSPlasmaT2,TurretZiraxMSRocketT2,TurretBABeamLaserBlocksT2,Eden_TurretBolterBA,LargeUpgradeKit,TurretMSProjectileBlocksT2,TurretMSRocketBlocksT2,TurretMSLaserBlocksT2,TurretMSArtilleryBlocksT2,TurretMSBeamLaserBlocksT2,Eden_TurretBolterCV,

IDs.EdenWeaponUpgradeSmall
TurretGVRocketBlocksT2,TurretGVArtilleryBlocksT2,TurretGVBeamLaserBlocksT2,SmallUpgradeKit,TurretSVPulseLaserT2,TurretGVProjectileBlocksT2,TurretGVPlasmaBlocksT2,WeaponSV06,WeaponSV07,WeaponSV08,MultitoolSV,WeaponSV10,TurretGVBeamLaserBlocksT2,Eden_ModularPulseLaserSVIR,Eden_ModularPulseLaserSVUV,Eden_ModularPulseLaserSVGamma,Eden_ShieldBoosterSV,TurretSVSmall,TurretGVArtilleryBlocksT2,WeaponSV09,

IDs.Armor:
ArmorLight,ArmorMedium,ArmorHeavy,ArmorLightEpic,ArmorMediumEpic,ArmorHeavyEpic,Eden_ArmorLightAugmented,Eden_ArmorLightReinforced,Eden_ArmorMediumReinforced,Eden_ArmorHeavyReinforced,Eden_ArmorHeavyEpicReinforced,Eden_ArmorAbyssLight,

IDs.EdenComponents:
AluminiumOre,AluminiumPowder,AluminiumCoil,Coolant,Fertilizer,Superconductor,RadiationShielding,SolarCell,ThrusterComponents,ReactorCore,QuantumProcessor,HeatExchanger,HeliumBottle,NitrogenBottle,XenonBottle,Eden_ModularPulseLaserLensSmall,Eden_DiamondCut,Eden_PowerRegulator,Eden_Voidium,Eden_DroneSalvageProcessor,Eden_DarkMatter,Eden_PlasmaCoil,Eden_DarkMatterSmall,Eden_Electromagnet,Eden_ModularPulseLaserLensLarge,Eden_DroneSalvageCore,Eden_GaussRail,Eden_Semiconductor,Eden_ComputerT2,Eden_ProgenitorArtifact,

IDs.Components:
PromethiumOre,OpticalFiber,MechanicalComponents,CapacitorComponent,Computer,EnergyMatrix,Electronics,FluxCoil,Motor,Nanotubes,CobaltAlloy,SteelPlate,EnergyCell,GlassPlate,MagnesiumPowder,PromethiumPellets,RockDust,Oscillator,PlasticMaterial,PowerCoil,HydrogenBottle,WoodLogs,WoodPlanks,Cement,PentaxidOre,PentaxidCrystal,SteelPlateArmored,GoldIngot,AutoMinerCore,PentaxidElement,IceBlocks,AluminiumOre,AluminiumPowder,AluminiumCoil,ErestrumGel,ZascosiumAlloy,XenoSubstrate,NCPowder,SmallOptronicBridge,SmallOptronicMatrix,LargeOptronicBridge,LargeOptronicMatrix,Fiber,WaterJug,RawDiamond,

IDs.Ingredient
PromethiumPellets,RockDust,PlasticMaterial,PentaxidElement,PlatinOunce,ErestrumGel,XenoSubstrate,NCPowder,Meat,Fiber,AlienParts01,AlienParts02,AlienParts03,Egg,AlienTooth,Milk,Cheese,NutrientSolution,RottenFood,ConfettiMossScrapings,FireMossScrapings,PlantProtein,WaterBottle,AloeVera,AlienThorn,Flour,Ham,Salami,Ratatouille,FruitJuice,VegetableJuice,BerryJuice,FishMeat,Eden_SilverIngot,HWSFish,

IDs.ArmorMod: (No volume/popeye geadded - also eher nicht :D )
ArmorBoost,JetpackBoost,MultiBoost,OxygenBoost,InsulationBoost,MobilityBoost,RadiationBoost,EVABoost,TransportationBoost,ArmorBoostEpic,JetpackBoostEpic,MultiBoostEpic,InsulationBoostEpic,MobilityBoostEpic,RadiationBoostEpic,Eden_JetpackBoostAugmented,Eden_HeatBoostAugmented,Eden_ColdBoostAugmented,Eden_RadiationBoostAugmented,Eden_TransportationBoostAugmented,Eden_ArmorBoostAugmented,Eden_JetpackBoostAbyss,Eden_HeatBoostAbyss,Eden_RadiationBoostAbyss,Eden_ArmorBoostAbyss,Eden_ColdBoostAbyss,,NoVolumeBoost,
