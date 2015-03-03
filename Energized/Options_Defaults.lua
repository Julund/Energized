if not Energized then return end
local E = Energized
local L = LibStub("AceLocale-3.0"):GetLocale("Energized")


function E:PrepareDefaults()

	self.defaults = {
		profile = {
			minimap = { hide = true },

			enableSolo = false,
			enableParty = false,
			enableBattleground = false,
			enableArena = false,
			enableRaid = true,

			lowWarn = true,
			itemWarn = true,
			equippedWarn = true,
			petBuffs = E.isPetClass,
			weaponBuffs = true,
			inCombatScan = true,
			scanThrottle = 3.0,

			iconSet = "Default",
			feedText = 3,
			recentCaster = 3,
			showYourselfAsRecentCaster = true,
			hideTime = 10,
			subtipAnchor = 2,
			showHint = true,
			showZeroIssuesMessage = false,

			enableReporting = true,
			reportPetIssues = false,
			reportUnexpected = false,

			minDurability = .10,
			petMode = "NONE",
			
			warriorStance = true,
   warlockShards = "3",
			
			doNotEquip = {
				-- Fishing items
				[6256] = true,
				[6365] = true,
    [46337] = true,
				[6366] = true,
    [6367] = true,
				[19022] = true,
				[25978] = true,
				[45858] = true,
    [19970] = true,
				[45992] = true,
				[45991] = true,
				[44050] = true,
				[12225] = true,
    [84660] = true,
    [84661] = true,
				[19970] = true,
				[50287] = true,
				[19972] = true,
				[19969] = true,
				[33820] = true,
				[6397] = true,
				[46337] = true,
				-- Chef's Hat
				[46349] = true,
				-- Riding crops
				[25653] = true,
				[32863] = true,
				[11122] = true,
			},
			
			groups = {
			 ["**"] = {
					name = L["Unknown"],
					me = "EXPECTED",
					pet = "EXPECTED",
					when = "ALWAYS",
					report = true,
			  items = {
						["*"] = {
							mode = "EXACT",
							value = "",
							warn = 300,
							partyFormat = "ANY",
							difficulty = "ANY",
							quantity = 1,
							talentTree = 0,
							talentWho = "ANYONE",
							priorityMe = "0",
							priorityPet = "0",
							mountMode = "NONE",
							enableSolo = true,
							fromPet = false,
						},
					},
				},

			},
		},
	} -- self.defaults



-------------------------------------------------------------------------------------------------------------------------------------------------
-- CLASS RULE GROUPS ----------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------
	
-- COMMON ---------------------------------------------------------------------------------------------------------------------------------------

	-- Well Fed
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(57399),
		report = false,
		items = {
			{ id = "fed", type = "CONSUMABLE", value = "\"57399\"", partyFormat = "ANY_RAID", enableSolo = false },
		},
	})

	-- Flasks
	table.insert(self.defaults.profile.groups, {
		name = L["Flasks"],
		report = false,
		pet = "NONE",
		items = {--                                         200 AGI |  200 INT |  200 STA |  200 STR |  250 AGI |  250 INT |  250 STA |  250 STR
			{ id = "flask", type = "CONSUMABLE", value = "\"156073\",\"156070\",\"156077\",\"156071\",\"156064\",\"156079\",\"156084\",\"156080\"", partyFormat = "ANY_RAID", enableSolo = false },
		},
	})

	-- Stats
	table.insert(self.defaults.profile.groups, {
		name = L["Stats"],
		items = {
			{ type = "BUFF", value = "\"1126\"", class = "DRUID" }, -- Mark of the Wild
			{ type = "BUFF", value = "\"116781\"", class = "MONK" talentTree=1 }, -- Legacy of the White Tiger (Brewmaster)
			{ type = "BUFF", value = "\"115921\"", class = "MONK" talentTree=2 }, -- Legacy of the Emperor (Mistweaver)
			{ type = "BUFF", value = "\"116781\"", class = "MONK" talentTree=3 }, -- Legacy of the White Tiger (Windwalker)
			{ id = "BoK", type = "BUFF", value = "\"20217\"", class = "PALADIN", priorityMe = "1" }, -- Blessing of Kings
			{ type = "BUFF", value = "\"160206\"", class = "HUNTER" }, -- Lone Wolf: Power of the Primates
			{ type = "BUFF", value = "\"90363\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Shale Spider"], talentTree=1 }, -- Embrace of the Shale Spider (Shale Spider, Beast Mastery)
			{ type = "BUFF", value = "\"160077\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Worm"], talentTree=1 }, -- Strength of the Earth (Worm, Beast Mastery)
			{ type = "BUFF", value = "\"159988\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Gorilla"] }, -- Blessing of Kongs (Gorilla)
			{ type = "BUFF", value = "\"160017\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Dog"] }, -- Bark of the Wild (Dog)

		},
	})

	-- Stamina
	table.insert(self.defaults.profile.groups, {
		name = L["Stamina"],
		items = {
			{ type = "BUFF", value = "\"21562\"", class = "PRIEST" }, -- Power Word: Fortitude
			{ type = "BUFF", value = "\"469\"", class = "WARRIOR", warn = 15, priorityMe = "2" }, -- Commanding Shout
			{ type = "BUFF", value = "\"166928\"", class = "WARLOCK" }, -- Blood Pact
			{ type = "BUFF", value = "\"160199\"", class = "HUNTER" }, -- Lone Wolf: Fortitude of the Bear
			{ type = "BUFF", value = "\"90364\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Silithid"], talentTree=1 }, -- Qiraji Fortitude (Silithid, Beast Mastery)
			{ type = "BUFF", value = "\"160003\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Rylak"], talentTree=1 }, -- Savage Vigor (Rylak, Beast Mastery)
			{ type = "BUFF", value = "\"160014\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Goat"] }, -- Sturdiness (Goat)
			{ type = "BUFF", value = "\"50256\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Bear"] }, -- Invigorating Roar (Bear)
		},
	})

	-- Attack Power
	table.insert(self.defaults.profile.groups, {
		name = L["Attack Power"],
		items = {
			{ type = "BUFF", value = "\"57330\"", class = "DEATHKNIGHT", warn = 15 }, -- Horn of Winter
			{ id = "tsa", type = "BUFF", value = "\"19506\"", class = "HUNTER" }, -- Trueshot Aura
			{ type = "BUFF", value = "\"6673\"", class = "WARRIOR", warn = 15, priorityMe = "1" }, -- Battle Shout
		},
	})
	
	-- Spell Power
	table.insert(self.defaults.profile.groups, {
		name = L["Spell Power"],
		items = {
			{ id = "ai", type = "BUFF", value = "\"1459\",\"61316\"", class = "MAGE" }, -- Arcane Brilliance, Dalaran Brilliance
			{ type = "BUFF", value = "\"109773\"", class = "WARLOCK" }, -- Dark Intent
			{ type = "BUFF", value = "\"160205\"", class = "HUNTER" }, -- Lone Wolf: Wisdom of the Serpent
			{ type = "BUFF", value = "\"90364\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Waterstrider"], talentTree=1 }, -- Still Water (Waterstrider, Beast Mastery)
			{ type = "BUFF", value = "\"126309\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Silithid"], talentTree=1 }, -- Qiraji Fortitude (Silithid, Beast Mastery)
			{ type = "BUFF", value = "\"128433\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Serpent"] }, -- Serpent's Cunning (Serpent)
		},
	})

	-- Haste
	table.insert(self.defaults.profile.groups, {
		name = L["Haste"],
		items = {
			{ id = "haste", type = "BUFF", value = "\"55610\"", class = "DEATHKNIGHT", talentTree = 2 }, -- Unholy Aura (Frost)
			{ type = "BUFF", value = "\"55610\"", class = "DEATHKNIGHT", talentTree = 3 }, -- Unholy Aura (Unholy)
			{ type = "BUFF", value = "\"113742\"", class = "ROGUE" }, -- Swiftblade's Cunning
			{ type = "BUFF", value = "\"116956\"", class = "SHAMAN" }, -- Grace of Air
			{ type = "BUFF", value = "\"49868\"", class = "PRIEST", talentTree = 3 }, -- Mind Quickening (Shadow)
			{ type = "BUFF", value = "\"160203\"", class = "HUNTER" }, -- Lone Wolf: Haste of the Hyena
			{ type = "BUFF", value = "\"128432\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Hyena"] }, -- Cackling Houl (Hyena)
			{ type = "BUFF", value = "\"135678\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Sporebat"] }, -- Energizing Spores (Sporebat)
			{ type = "BUFF", value = "\"160074\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Wasp"] }, -- Speed of the Swarm (Wasp)
			{ type = "BUFF", value = "\"160003\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Rylak"], talentTree=1 }, -- Savage Vigor (Rylak, Beast Mastery)
			
		},
	})

 -- Critical Strike
	table.insert(self.defaults.profile.groups, {
		name = L["Critical Strike"],
		items = {
			{ id = "crit", type = "BUFF", value = "\"1459\",\"61316\"", class = "MAGE" }, -- Arcane Brilliance, Dalaran Brilliance
			{ type = "BUFF", value = "\"17007\"", class = "DRUID", talentTree = 2 }, -- Leader of the Pack (Feral)
			{ type = "BUFF", value = "\"17007\"", class = "DRUID", talentTree = 3 }, -- Leader of the Pack (Guardian)
			{ type = "BUFF", value = "\"116781\"", class = "MONK" talentTree=1 }, -- Legacy of the White Tiger (Brewmaster)
			{ type = "BUFF", value = "\"116781\"", class = "MONK" talentTree=3 }, -- Legacy of the White Tiger (Windwalker)
			{ type = "BUFF", value = "\"160200\"", class = "HUNTER" }, -- Lone Wolf: Ferocity of the Raptor
			{ type = "BUFF", value = "\"160052\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Raptor"] }, -- Strength of the Pack (Raptor)
			{ type = "BUFF", value = "\"24604\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Wolf"] }, -- Furious Howl (Wolf)
			{ type = "BUFF", value = "\"90309\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Devilsaur"], talentTree=1 }, -- Terrifying Roar (Devilsaur, Beast Mastery)
			{ type = "BUFF", value = "\"126373\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Quilen"], talentTree=1 }, -- Fearless Roar (Quilen, Beast Mastery)
			{ type = "BUFF", value = "\"126309\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Waterstrider"], talentTree=1 }, -- Still Water (Waterstrider, Beast Mastery)
			{ type = "BUFF", value = "\"90363\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Shale Spider"], talentTree=1 }, -- Embrace of the Shale Spider (Shale Spider, Beast Mastery)
			
		},
	})

 -- Mastery
	table.insert(self.defaults.profile.groups, {
		name = L["Mastery"],
		items = {
			{ id = "crit", type = "BUFF", value = "\"19740\"", class = "PALADIN", priorityMe = "2" }, -- Blessing of Might
			{ type = "BUFF", value = "\"116956\"", class = "SHAMAN" }, -- Grace of Air
			{ type = "BUFF", value = "\"155522\"", class = "DEATHKNIGHT", talentTree = 1 }, -- Power of the Grave (Blood)
			{ type = "BUFF", value = "\"24907\"", class = "DRUID", talentTree = 1 }, -- Moonkin Aura (Balance)
			{ type = "BUFF", value = "\"160198\"", class = "HUNTER" }, -- Lone Wolf: Grace of the Cat
			{ type = "BUFF", value = "\"93435\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Cat"] }, -- Roar of Courage (Cat),
			{ type = "BUFF", value = "\"160039\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Hydra"] }, -- Keen Senses (Hydra)
			{ type = "BUFF", value = "\"160073\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Tallstrider"] }, -- Plainswalking (Tallstrider)
			{ type = "BUFF", value = "\"128997\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Spirit Beast"], talentTree=1 }, -- Spirit Beast Blessing (Spirit Beast, Beast Mastery)
		},
	})

 -- Multistrike
	table.insert(self.defaults.profile.groups, {
		name = L["Multistrike"],
		items = {
			{ id = "multi", type = "BUFF", value = "\"109773\"", class = "WARLOCK", priorityMe = "1" }, -- Dark Intent
			{ type = "BUFF", value = "\"49868\"", class = "PRIEST", talentTree = 3 }, -- Mind Quickening (Shadow)
			{ type = "BUFF", value = "\"166916\"", class = "MONK" talentTree=3 }, -- Windflurry (Windwalker)
			{ type = "BUFF", value = "\"113742\"", class = "ROGUE" }, -- Swiftblade's Cunning
			{ type = "BUFF", value = "\"172968\"", class = "HUNTER" }, -- Lone Wolf: Quickness of the Dragonhawk
			{ type = "BUFF", value = "\"50519\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Bat"] }, -- Sonic Focus (Bat)
			{ type = "BUFF", value = "\"34889\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Dragonhawk"] }, -- Spry Attacks (Dragonhawk)
			{ type = "BUFF", value = "\"24844\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Wind Serpent"] }, -- Breath of the Winds (Wind Serpent)
			{ type = "BUFF", value = "\"57386\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Clefthoof"], talentTree=1 }, -- Wild Strength (Clefthoof, Beast Mastery)
			{ type = "BUFF", value = "\"58604\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Core Hound"], talentTree=1 }, -- Double Bite (Core Hound, Beast Mastery)

		},
	})

 -- Versatility
	table.insert(self.defaults.profile.groups, {
		name = L["Versatility"],
		items = {

			{ type = "BUFF", value = "\"55610\"", class = "DEATHKNIGHT", talentTree = 2 }, -- Unholy Aura (Frost)
			{ type = "BUFF", value = "\"55610\"", class = "DEATHKNIGHT", talentTree = 3 }, -- Unholy Aura (Unholy)
			{ type = "BUFF", value = "\"1126\"", class = "DRUID" }, -- Mark of the Wild
			{ type = "BUFF", value = "\"167187\"", class = "PALADIN", talentTree = 3 }, -- Sanctity Aura (Retribution)
			{ type = "BUFF", value = "\"167187\"", class = "WARRIOR", talentTree = 1 }, -- Inspiring Presence (Fury)
			{ type = "BUFF", value = "\"167187\"", class = "WARRIOR", talentTree = 2 }, -- Inspiring Presence (Arms)
			{ type = "BUFF", value = "\"172967\"", class = "HUNTER" }, -- Lone Wolf: Versatility of the Ravager
			{ type = "BUFF", value = "\"159735\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Bird of Prey"] }, -- Tenacity (Bird of Prey)
			{ type = "BUFF", value = "\"35290\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Boar"] }, -- Indomitable (Boar)
			{ type = "BUFF", value = "\"160045\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Porcupine"] }, -- Defensive Quills (Porcupine)
			{ type = "BUFF", value = "\"50518\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Ravager"] }, -- Chitinous Armor (Ravager)
			{ type = "BUFF", value = "\"173035\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", warn = 15, petFamily = L["Stag"] }, -- Grace (Stag)
			{ type = "BUFF", value = "\"57386\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Clefthoof"], talentTree=1 }, -- Wild Strength (Clefthoof, Beast Mastery)
			{ type = "BUFF", value = "\"160077\"", class = "HUNTER", fromPet = true, mountMode = "NOT_MOUNTED", petFamily = L["Worm"], talentTree=1 }, -- Strength of the Earth (Worm, Beast Mastery)

		},
	})

	-- Aspect of the Pack
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(13159),
		me = "UNEXPECTED",
		pet = "UNEXPECTED",
		items = {
			{ type = "BUFF", value = "\"13159\"", class = "HUNTER" }, -- Aspect of the Pack
		},
	})
	
	-- Healthstone
	table.insert(self.defaults.profile.groups, {
		name = L["Healthstone"],
		report = false,
		pet = "NONE",
		items = {
			{ id = "hs", type = "ITEM", value = "\"5512\"", partyFormat = "ANY_RAID", class = "WARLOCK", enableSolo = false },
		},
	})

-- HUNTER ---------------------------------------------------------------------------------------------------------------------------------------

	-- Aspect of the Cheetah
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(5118),
		hidden = true,
		me = "UNEXPECTED",
		pet = "NONE",
		report = false,
		items = {
			{ id = "aotc", type = "BUFF", value = "\"5118\"", class = "HUNTER" }, -- Aspect of the Cheetah
		},
	})
	
	-- Aspect
	table.insert(self.defaults.profile.groups, {
		name = L["Aspect"],
		hidden = true,
		pet = "NONE",
		report = false,
		items = {-- Hawk, Fox, Ironhawk
			{ id = "aspect", type = "BUFF", value = "\"13165\",\"82661\",\"109260\"", class = "HUNTER", mountMode = "NOT_MOUNTED" },
		},
	})

-- PALADIN --------------------------------------------------------------------------------------------------------------------------------------

	-- Righteous Fury
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(25780),
		hidden = true,
		report = false,
		when = "WHEN_TANK",
		items = {
			{ id = "rf", type = "BUFF", value = "\"25780\"", class = "PALADIN" },
		},
	})
	
-- MAGE -----------------------------------------------------------------------------------------------------------------------------------------

	-- Armor
	table.insert(self.defaults.profile.groups, {
		name = L["Mage Armor"],
		hidden = true,
		report = false,
		items = {
			{ id = "magearmor", type = "BUFF", value = "\"6117\",\"30482\",\"7302\"", class = "MAGE" },
		},
	})
	
	-- Mana Gem
	table.insert(self.defaults.profile.groups, {
		name = L["Mana Gem"],
		hidden = true,
		report = false,
		items = {
			{ id = "managem", type = "ITEM", value = "\"36799\",\"33312\",\"5514\",\"5513\",\"8007\",\"8008\",\"22044\",\"81901\"" },
		},
	})

-- PRIEST ---------------------------------------------------------------------------------------------------------------------------------------

	-- Inner Will/Fire
	table.insert(self.defaults.profile.groups, {
		name = L["Inner Will/Fire"],
		hidden = true,
		report = false,
		items = {
			{ id = "innerfire", type = "BUFF", value = "\"588\",\"73413\"", class = "PRIEST" },
 	},
	})

-- SHAMAN ---------------------------------------------------------------------------------------------------------------------------------------

	-- Elemental Shield
	table.insert(self.defaults.profile.groups, {
		name = L["Elemental Shield"],
		hidden = true,
		report = false,
		items = {
			{ id = "elementalshield", type = "BUFF", value = "\"324\",\"52127\",\"974\"", class = "SHAMAN" },
		},
	})

-- ROGUE ----------------------------------------------------------------------------------------------------------------------------------------

	-- Lethal Poison
	table.insert(self.defaults.profile.groups, {
		name = L["Lethal Poison"],
		hidden = true,
		report = false,
		items = {
			{ id = "poison1", type = "BUFF", value = "\"2823\",\"8679\"", class = "ROGUE" },
		},
	})

	-- Non-Lethal Poison
	table.insert(self.defaults.profile.groups, {
		name = L["Non-Lethal Poison"],
		hidden = true,
		report = false,
		items = {
			{ id = "poison2", type = "BUFF", value = "\"3408\",\"5761\",\"108211\",\"108215\"", class = "ROGUE" },
		},
	})

-- WARLOCK --------------------------------------------------------------------------------------------------------------------------------------

-- Gets no lovin'

-- WARRIOR --------------------------------------------------------------------------------------------------------------------------------------

-- Gets no lovin'

-- DEATH KNIGHT ---------------------------------------------------------------------------------------------------------------------------------

	-- Presence
	table.insert(self.defaults.profile.groups, {
		name = L["Presence"],
		hidden = true,
		report = false,
		pet = "NONE",
		items = {
			{ id = "presence", type = "BUFF", value = "\"48263\",\"48266\",\"48265\"", class = "DEATHKNIGHT" },
		},
	})

	-- Blood Presence
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(48263),
		hidden = true,
		report = false,
		pet = "NONE",
		when = "WHEN_TANK",
		items = {
			{ id = "bloodpresence", type = "BUFF", value = "\"48263\"", class = "DEATHKNIGHT" },
		},
	})

	-- Bone Shield
	table.insert(self.defaults.profile.groups, {
		name = GetSpellInfo(49222),
		hidden = true,
		report = false,
		pet = "NONE",
		when = "WHEN_TANK",
		items = {
			{ id = "boneshield", type = "BUFF", value = "\"49222\"", class = "DEATHKNIGHT", warn = 30, mountMode = "NOT_MOUNTED" },
		},
	})

-------------------------------------------------------------------------------------------------------------------------------------------------

	self.PrepareDefaults = nil
	classValue = nil

end


function E:FindDefaultItem(itemId)
	for k, v in pairs(self.defaults.profile.groups) do
		for kk, vv in pairs(v.items) do
			if vv.id == itemId then
				return vv, v
			end
		end
	end
	return {}, {}
end


local function turnOff(id)
	select(2, E:FindDefaultItem(id)).me = "NONE"
	select(2, E:FindDefaultItem(id)).pet = "NONE"
end


local function unhide(id)
	select(2, E:FindDefaultItem(id)).hidden = false
end

local function hide(id)
	select(2, E:FindDefaultItem(id)).hidden = true
end


function E:CheckForPetClass()
 -- This function is temporarily hacked in order to turn off
 -- pet buff checks for everyone in 4.0. We'll go through and
 -- actually strip out the buff checks later
	self.isPetClass = false
	local c = self.class
	self.shouldHavePet = ((c == "HUNTER" or c == "WARLOCK") or (c == "DEATHKNIGHT" and GetSpecialization() == 3))
end


function E:PrepareClassDefaults()
	-- PALADIN
	if E.class == "PALADIN" then
		if GetSpecialization() == 1 then          -- Holy
			turnOff("tsa")
			E:FindDefaultItem("tsa").enableSolo = false
			E:FindDefaultItem("BoK").enableSolo = false
		elseif GetSpecialization() == 2 then      -- Protection
			unhide("rf")
   turnOff("spellhaste")
			E:FindDefaultItem("tsa").enableSolo = false
		else                                      -- Retribution
			E:FindDefaultItem("BoK").enableSolo = false
   turnOff("spellhaste")
		end
		unhide("seal")
		
	-- MAGE
	elseif E.class == "MAGE" then
		hide("tsa")
		unhide("magearmor")
		unhide("managem")
		
	-- PRIEST
	elseif E.class == "PRIEST" then
		hide("tsa")
		unhide("innerfire")
		
	-- ROGUE
	elseif E.class == "ROGUE" then
		hide("ai")
  hide("spellhaste")
  unhide("poison1")
  unhide("poison2")

	-- SHAMAN
	elseif E.class == "SHAMAN" then
		if GetSpecialization() == 1 then          -- Elemental
			turnOff("tsa")
		elseif GetSpecialization() == 2 then      -- Enhancement
   turnOff("spellhaste")
		else                                      -- Restoration
			turnOff("tsa")
		end
		unhide("elementalshield")
		
	-- WARLOCK
	elseif E.class == "WARLOCK" then
		hide("tsa")
		unhide("warlockarmor")
		unhide("soullink")
		
	-- WARRIOR
	elseif E.class == "WARRIOR" then
		if GetSpecialization() == 3 then          -- Protection
		else
		end
		hide("ai")
  hide("spellhaste")
		
	-- DEATHKNIGHT
	elseif E.class == "DEATHKNIGHT" then
		hide("ai")
  hide("spellhaste")
		unhide("presence")
		unhide("bloodpresence")
		unhide("boneshield")
		if GetSpecialization() == 1 then          -- Blood
			select(2, self:FindDefaultItem("bloodpresence")).me = "EXPECTED"
			select(2, self:FindDefaultItem("bloodpresence")).when = "ALWAYS"
			self:FindDefaultItem("presence").value = "\"48263\",\"48266\",\"48265\""
		else                                      -- Frost/Unholy
			select(2, self:FindDefaultItem("bloodpresence")).me = "UNEXPECTED"
			select(2, self:FindDefaultItem("bloodpresence")).when = "ALWAYS"
			self:FindDefaultItem("presence").value = "\"48266\",\"48265\""
		end
		
	-- DRUID
	elseif E.class == "DRUID" then
		if GetSpecialization() == 1 then          -- Balance
			turnOff("tsa")
		elseif GetSpecialization() == 4 then      -- Restoration
			turnOff("tsa")
		else                                      -- Feral/Guardian
   turnOff("spellhaste")
			turnOff("ai")
		end
		
	-- HUNTER
	elseif E.class == "HUNTER" then
		unhide("aotc")
		unhide("aspect")
		hide("ai")
  hide("spellhaste")
	end
		
end


