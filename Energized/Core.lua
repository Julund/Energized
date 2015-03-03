Energized = LibStub("AceAddon-3.0"):NewAddon("Energized", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
Energized.MINOR_VERSION = tonumber(("$Revision: 180 $"):match("%d+"))
local FORCE_PROFILE_RESET_BEFORE_REVISION = 180 -- Set this to one higher than the Revision on the line above this
local L = LibStub("AceLocale-3.0"):GetLocale("Energized")
local E = Energized
local qtip = LibStub("LibQTip-1.0")
local talents = LibStub("LibGroupInSpecT-1.1")
E.talents = talents
local ldb = LibStub:GetLibrary("LibDataBroker-1.1")
local dbicon = LibStub("LibDBIcon-1.0")
local dataobj = ldb:NewDataObject("Energized", {
 type = "data source",
 text = L["Loading"],
 icon = [[Interface\AddOns\Energized\Icons\blank]],
 label = "Energized",
 tocname = "Energized",
})
--


--[[
      VARIABLES ----------------------------------------------------------------------------------------------------------------
  ]]

E.inCombat = false

E.modulesEnabled = {
	options = false,
}

local players = {}
local classes = {}
local blizzardTanks = {}

local aura = {
	me = {
		spellName = {},
		spellId = {},
		expiration = {},
		unitCaster = {},
	},
	pet = {
		spellName = {},
		spellId = {},
		expiration = {},
		unitCaster = {},
	},
}
local items = {}

local otherIssuesA = {
	me = {
	},
	pet = {
	},
}
local otherIssuesB = {
	me = {
	},
	pet = {
	},
}
local gearA = {}
local gearB = {}

local isHeroic = false
local partyFormat
local updateSource
local playerName
local hideScheduled = false
local isHidden = false
local hideTimer
local isPlayerTank = false
local pollingTimer
local isMounted = false
local isSolo = false

local POLLING_TIME = 10.0
local UPDATE_THROTTLE = 3.0
local REINSPECT_TIME = 60.0

local CLASS_LIST = {
	"HUNTER",
	"WARRIOR",
	"ROGUE",
	"SHAMAN",
	"PRIEST",
	"WARLOCK",
	"DEATHKNIGHT",
	"PALADIN",
	"MAGE",
	"DRUID",
 "MONK"
}

local invSlots = { "HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot" }

local red = { r = 1.0, g = 0.2, b = 0.2 }
local blue = { r = 0.4, g = 0.4, b = 1.0 }
local green = { r = 0.2, g = 1.0, b = 0.2 }
local yellow = { r = 1.0, g = 1.0, b = 0.2 }
local gray = { r = 0.5, g = 0.5, b = 0.5 }
local black = { r = 0.0, g = 0.0, b = 0.0 }
local white = { r = 1.0, g = 1.0, b = 1.0 }

local specMap = {
-- Death Knight
 [250] = 1, -- Blood
 [251] = 2, -- Frost
 [252] = 3, -- Unholy
-- Druid
 [102] = 1, -- Balance
 [103] = 2, -- Feral
 [104] = 3, -- Guardian
 [105] = 4, -- Restoration
-- Hunter
 [253] = 1, -- Beastmaster
 [254] = 2, -- Marksman
 [255] = 3, -- Survival
-- Mage
 [62] = 1, -- Arcane
 [63] = 2, -- Fire
 [64] = 3, -- Frost
-- Monk
 [268] = 1, -- Brewmaster
 [269] = 2, -- Windwalker
 [270] = 3, -- Mistweaver
-- Paladin
 [65] = 1, -- Holy
 [66] = 2, -- Protection
 [70] = 3, -- Retribution
-- Priest
 [256] = 1, -- Discipline
 [257] = 2, -- Holy
 [258] = 3, -- Shadow
-- Rogue
 [259] = 1, -- Assassination
 [260] = 2, -- Combat
 [261] = 3, -- Subtlety
-- Shaman
 [262] = 1, -- Elemental
 [263] = 2, -- Enhancement
 [264] = 3, -- Restoration
-- Warlock
 [265] = 1, --  Affliction
 [266] = 2, -- Demonology
 [267] = 3, -- Destruction
-- Warrior
 [71] = 1, -- Arms
 [72] = 2, -- Fury
 [73] = 3, -- Protection
-- Hunter pets (not used by LibGroupInSpecT, but included for completeness)
 [74] = 1, -- Ferocity
 [79] = 2, -- Cunning
 [81] = 3, -- Tenacity
}



--[[
      UPVALUES -----------------------------------------------------------------------------------------------------------------
  ]]
  
local _G = getfenv(0)
local pairs = _G.pairs
local strlower = _G.strlower
local strupper = _G.strupper
local format = _G.format
local strsub = _G.strsub
local strlen = _G.strlen

local UnitInRaid = _G.UnitInRaid
local UnitClass = _G.UnitClass
local UnitName = _G.UnitName
local UnitAura = _G.UnitAura
local UnitExists = _G.UnitExists
local UnitIsConnected = _G.UnitIsConnected
local GetNumRaidMembers = _G.GetNumRaidMembers
local GetNumPartyMembers = _G.GetNumPartyMembers
local GetRaidRosterInfo = _G.GetRaidRosterInfo
local UnitIsDeadOrGhost = _G.UnitIsDeadOrGhost
local UnitIsFeignDeath = _G.UnitIsFeignDeath
local GetBattlefieldStatus = _G.GetBattlefieldStatus
local GetPetActionInfo = _G.GetPetActionInfo
local GetSubZoneText = _G.GetSubZoneText
local GetInstanceInfo = _G.GetInstanceInfo
local IsInInstance = _G.IsInInstance
local GetSpellInfo = _G.GetSpellInfo
local GetItemInfo = _G.GetItemInfo
local IsMounted = _G.IsMounted
local GetInventoryItemLink = _G.GetInventoryItemLink
local GetInventorySlotInfo = _G.GetInventorySlotInfo
local GetInventoryItemQuality = _G.GetInventoryItemQuality
local GetInventoryItemBroken = _G.GetInventoryItemBroken
local GetInventoryItemDurability = _G.GetInventoryItemDurability
local GetInventoryItemID = _G.GetInventoryItemID
local GetContainerNumSlots = _G.GetContainerNumSlots
local GetContainerItemID = _G.GetContainerItemID
local GetContainerItemInfo = _G.GetContainerItemInfo
local OffhandHasWeapon = _G.OffhandHasWeapon
local GetWeaponEnchantInfo = _G.GetWeaponEnchantInfo
local GetShapeshiftForm = _G.GetShapeshiftForm
local GetSpecialization = _G.GetSpecialization

local MAX_BATTLEFIELD_QUEUES = _G.MAX_BATTLEFIELD_QUEUES
local GetMaxBattlefieldID = _G.GetMaxBattlefieldID
local NUM_BAG_SLOTS = _G.NUM_BAG_SLOTS



--[[-- MISTS OF PANDARIA RAID/PARTY API COMPATIBILITY LAYER --------------------------------------------------------------------]]

local IsRaidLeader = _G.IsRaidLeader
local IsPartyLeader = _G.IsPartyLeader
local UnitIsPartyLeader = _G.UnitIsPartyLeader
if UnitIsGroupLeader ~= nil then
 IsRaidLeader = function(unit) if UnitIsGroupLeader(unit) then return 1 else return nil end end
 IsPartyLeader = function(unit) if UnitIsGroupLeader(unit) then return 1 else return nil end end
 UnitIsPartyLeader = function(unit) if UnitIsGroupLeader(unit) then return 1 else return nil end end
end
local GetNumPartyMembers = _G.GetNumPartyMembers
local GetRealNumPartyMembers = _G.GetRealNumPartyMembers
if GetNumSubgroupMembers ~= nil then
 GetNumPartyMembers = function() return GetNumSubgroupMembers() end
 GetRealNumPartyMembers = function() return GetNumSubgroupMembers(LE_PARTY_CATEGORY_HOME) end
end
local GetNumRaidMembers = _G.GetNumRaidMembers
local GetRealNumRaidMembers = _G.GetRealNumRaidMembers
if GetNumGroupMembers ~= nil then
 GetNumRaidMembers = function() return GetNumGroupMembers() end
 GetRealNumRaidMembers = function() return GetNumGroupMembers(LE_PARTY_CATEGORY_HOME) end
end



--[[
      INITIALIZATION -----------------------------------------------------------------------------------------------------------
  ]]

function E:OnInitialize()
	self.class = select(2, UnitClass("player"))
	playerName = UnitName("player")
end


do
	local isInitialized = false
	
	function E:OnEnable()
		self:DoEnable()
	end
	
	function E:DoEnable()
		if isInitialized then return end

		isInitialized = true
	
		self:CheckForPetClass()
		self:PrepareDefaults()
		self:PrepareClassDefaults()
		
		self.db = LibStub("AceDB-3.0"):New("EnergizedDB", self.defaults, "Default")
		
		self:Cleanup()

		local LibDualSpec = LibStub("LibDualSpec-1.0")
		LibDualSpec:EnhanceDatabase(self.db, "Energized")

		self:RegisterChatCommand("energize", "ChatCommand")
		self:RegisterChatCommand("energized", "ChatCommand")
		
		self.db.profile._currentRuleType = nil
		
		dbicon:Register("Energized", dataobj, self.db.profile.minimap)
		self:UpdateMapIconState()

		self:UpdatePlayerList("INITIALIZING")
		
		if self.db.profile.debugMode then
			Energized.players = players
			Energized.classes = classes
			Energized.blizzardTanks = blizzardTanks
			Energized.aura = aura
			Energized.items = items
			Energized.UPDATE_THROTTLE = UPDATE_THROTTLE
		end
		
		self:ChangeThrottle(self.db.profile.scanThrottle)
		self:RegisterConstantEvents()
		self:RegisterOutOfCombatEvents()

		if E.Options_DoEnable then E:Options_DoEnable() end
		self:CheckForceReset()
		self.db.profile.lastRevision = E.MINOR_VERSION

  self:ScheduleRepeatingTimer(function()
   if not E.inCombat then
    self:Debug("Rescanning group talents")
    talents:Rescan()
   end
  end, REINSPECT_TIME)

		self.db.RegisterCallback(self, "OnProfileChanged", "OnProfileChanged")
		self.db.RegisterCallback(self, "OnProfileCopied", "OnProfileChanged")
		self.db.RegisterCallback(self, "OnProfileReset", "OnProfileChanged")
		self.db.RegisterCallback(self, "OnProfileDeleted", "OnProfileChanged")
		
		self:Debug(L["Loaded (running in debug mode)"])
	end
end


function E:ChatCommand(input)
	if strlower(input) == "debug" then
		if self.db.profile.debugMode then
			self.db.profile.debugMode = false
			self:Print(L["Debug mode OFF"])
		else
			self.db.profile.debugMode = true
			self:Print(L["Debug mode ON"])
		end
	else
		LoadAddOn("Energized_Options")
		if E.optionsFrame then
			InterfaceOptionsFrame_OpenToCategory(E.optionsFrame)
		else
			self:Print(L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."])
		end
	end
end



--[[
      UTILITIES ----------------------------------------------------------------------------------------------------------------
  ]]

function E:tcopy(to, from)
 for k, v in pairs(from) do
  if type(v) == "table" then
   to[k] = {}
   E:tcopy(to[k], v)
  else
   to[k] = v
  end
 end
end


local function colorize(s, color)
	if color and s then
		return format("|cff%02x%02x%02x%s|r", (color.r or 1) * 255, (color.g or 1) * 255, (color.b or 1) * 255, s)
	else
		return s
	end
end


function E:Debug(s, ...)
	if self.db.profile.debugMode then self:Print(format(s, ...)) end
end


local function strstarts(s, start)
 return strsub(s, 1, strlen(start)) == start
end


local function strends(s, ending)
 return ending == "" or strsub(s, -strlen(ending)) == ending
end


local compare_funcs = {
	["EXACT"] = function(a, b) return a == b end,
	["PARTIAL"] = function(a, b) return strfind(a, b) end,
	["STARTSWITH"] = function(a, b) return strstarts(a, b) end,
	["ENDSWITH"] = function(a, b) return strends(a, b) end,
}



--[[
      EVENTS -------------------------------------------------------------------------------------------------------------------
  ]]

function E:CheckForceReset(report)
	-- Require a profile reset after a hardcoded revision
	if (self.db.profile.lastRevision or 0) < FORCE_PROFILE_RESET_BEFORE_REVISION then
		self:CheckForPetClass()
		self:PrepareClassDefaults()
		self.db:RegisterDefaults(self.defaults)
		
		-- Save as many settings as we can
		local minimap = self.db.profile.minimap.hide
		local enableSolo = self.db.profile.enableSolo
		local enableParty = self.db.profile.enableParty
		local enableBattleground = self.db.profile.enableBattleground
		local enableArena = self.db.profile.enableArena
		local enableRaid = self.db.profile.enableRaid
		local lowWarn = self.db.profile.lowWarn
		local itemWarn = self.db.profile.itemWarn
		local equippedWarn = self.db.profile.equippedWarn
		local petBuffs = self.db.profile.petBuffs
		local weaponBuffs = self.db.profile.weaponBuffs
		local inCombatScan = self.db.profile.inCombatScan
		local scanThrottle = self.db.profile.scanThrottle
		local iconSet = self.db.profile.iconSet
		local feedText = self.db.profile.feedText
		local recentCaster = self.db.profile.recentCaster
		local showYourselfAsRecentCaster = self.db.profile.showYourselfAsRecentCaster
		local hideTime = self.db.profile.hideTime
		local subtipAnchor = self.db.profile.subtipAnchor
		local showHint = self.db.profile.showHint
		local showZeroIssuesMessage = self.db.profile.showZeroIssuesMessage or false
		local enableReporting = self.db.profile.enableReporting
		local reportPetIssues = self.db.profile.reportPetIssues
		local reportUnexpected = self.db.profile.reportUnexpected
		local minDurability = self.db.profile.minDurability
		local petMode = self.db.profile.petMode
		local warriorStance = self.db.profile.warriorStance
		local warlockShards = self.db.profile.warlockShards
		
		-- Reset the profile
		self.db:ResetProfile(false, true)
		self.db.profile.lastRevision = E.MINOR_VERSION

		-- Migrate settings across
		self.db.profile.minimap.hide = minimap
		self.db.profile.enableSolo = enableSolo
		self.db.profile.enableParty = enableParty
		self.db.profile.enableBattleground = enableBattleground
		self.db.profile.enableArena = enableArena
		self.db.profile.enableRaid = enableRaid
		self.db.profile.lowWarn = lowWarn
		self.db.profile.itemWarn = itemWarn
		self.db.profile.equippedWarn = equippedWarn
		self.db.profile.petBuffs = petBuffs
		self.db.profile.weaponBuffs = weaponBuffs
		self.db.profile.inCombatScan = inCombatScan
		self.db.profile.scanThrottle = scanThrottle
		self.db.profile.iconSet = iconSet
		self.db.profile.feedText = feedText
		self.db.profile.recentCaster = recentCaster
		self.db.profile.showYourselfAsRecentCaster = showYourselfAsRecentCaster
		self.db.profile.hideTime = hideTime
		self.db.profile.subtipAnchor = subtipAnchor
		self.db.profile.showHint = showHint
		self.db.profile.showZeroIssuesMessage = showZeroIssuesMessage
		self.db.profile.enableReporting = enableReporting
		self.db.profile.reportPetIssues = reportPetIssues
		self.db.profile.reportUnexpected = reportUnexpected
		self.db.profile.minDurability = minDurability
		self.db.profile.petMode = petMode
		self.db.profile.warriorStance = warriorStance
		self.db.profile.warlockShards = warlockShards
		
		if self.SetupGroupList then self:SetupGroupList() end
		self:UpdatePlayerList("FORCED PROFILE RESET")	
		if report or report == nil then
			self:Print(format(L["Welcome to Energized r%d. Your Advanced tab has been reset."], E.MINOR_VERSION))
		end
	end
end


function E:OnProfileChanged(event, database, newProfileKey)
	self:Debug("Profile changed. Reinitializing.")
	self:CheckForPetClass()
	self:PrepareClassDefaults()
	self.db:RegisterDefaults(self.defaults)
	if self.SetupGroupList then self:SetupGroupList() end
	self:UpdatePlayerList(event)
	self:CheckForceReset(false)
	self.db.profile.lastRevision = E.MINOR_VERSION
end


function E:UnregisterOutOfCombatEvents()
	self:UnregisterEvent("GROUP_ROSTER_UPDATE")
	self:UnregisterEvent("PARTY_MEMBER_DISABLE")
	self:UnregisterEvent("PARTY_MEMBER_ENABLE")
	self:UnregisterEvent("ZONE_CHANGED_NEW_AREA")
	self:UnregisterEvent("ZONE_CHANGED")
	self:UnregisterEvent("ZONE_CHANGED_INDOORS")
	self:UnregisterEvent("UNIT_CONNECTION")
	self:UnregisterEvent("PARTY_INVITE_REQUEST")
	self:UnregisterEvent("PARTY_CONVERTED_TO_RAID")
	self:UnregisterEvent("PLAYER_ENTERING_BATTLEGROUND")
	self:UnregisterEvent("UNIT_AURA")
	self:UnregisterEvent("UNIT_PET")
	self:UnregisterEvent("UNIT_INVENTORY_CHANGED")
	self:UnregisterEvent("UPDATE_INVENTORY_ALERTS")
	self:UnregisterEvent("READY_CHECK")
	
	if talents then talents.UnregisterCallback(self, "GroupInSpecT_Update") end
 
 if not self.db.profile.inCombatScan then
		self:CancelTimer(pollingTimer, true)
	end
end


function E:RegisterOutOfCombatEvents()
	if self.inCombat then return end
	
	self:RegisterEvent("GROUP_ROSTER_UPDATE", "UpdatePlayerList")
	self:RegisterEvent("PARTY_MEMBER_DISABLE", "UpdatePlayerList")
	self:RegisterEvent("PARTY_MEMBER_ENABLE", "UpdatePlayerList")
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA", "UpdatePlayerList")
	self:RegisterEvent("ZONE_CHANGED", "UpdatePlayerList")
	self:RegisterEvent("ZONE_CHANGED_INDOORS", "UpdatePlayerList")
	self:RegisterEvent("UNIT_CONNECTION", "UpdatePlayerList")
	self:RegisterEvent("PARTY_INVITE_REQUEST", "Cleanup")
	self:RegisterEvent("PARTY_CONVERTED_TO_RAID", "Cleanup")
	self:RegisterEvent("PLAYER_ENTERING_BATTLEGROUND", "Cleanup")
	self:RegisterEvent("UNIT_AURA", "OnAura")
	self:RegisterEvent("UNIT_PET", "OnPet")
	self:RegisterEvent("UNIT_INVENTORY_CHANGED", "Update")
	self:RegisterEvent("UPDATE_INVENTORY_ALERTS", "Update")
	self:RegisterEvent("READY_CHECK", "OnReadyCheck")

 if talents then talents.RegisterCallback(self, "GroupInSpecT_Update", "OnTalentsUpdate") end

	self:CancelTimer(pollingTimer, true)
	pollingTimer = self:ScheduleRepeatingTimer("OnTimer", POLLING_TIME)
end


function E:RegisterConstantEvents()
	self:RegisterEvent("PLAYER_REGEN_DISABLED", "OnEvent")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "OnEvent")
	self:RegisterEvent("PLAYER_LOGOUT", "Cleanup")
end


function E:OnEvent(event, ...)
	if event == "PLAYER_REGEN_DISABLED" then
		self:UnregisterOutOfCombatEvents()
		self.inCombat = true
	elseif event == "PLAYER_REGEN_ENABLED" then
		self:ScheduleTimer("RegisterOutOfCombatEvents", UPDATE_THROTTLE)
		self.inCombat = false
 end
end


function E:OnAura(event, unit)
	if unit == "player" or unit == "pet" or unit == "target" then
		self:Update(event)
	end
end


function E:OnPet(event, unit)
	if unit == "player" then
		self:Update(event)
	end
end


function E:OnTimer()
	if self.inCombat then self:UpdatePlayerList("TIMER") else self:Update("TIMER") end
end


function E:Cleanup()
	if self.db then
		self:Debug("Cleaning up temporary information")
		for k, v in pairs(self.db.profile.groups) do
			v._status = nil
			v._status_pet = nil
			v._result = nil
			v._result_pet = nil
			v._disabled = nil
			v._disabled_pet = nil
			for kk, vv in pairs(v.items) do
				vv._lastProvidedBy = nil
				vv._lastSeen = nil
				vv._lastProvidedBy_pet = nil
				vv._lastSeen_pet = nil
				vv._status = nil
				vv._status_pet = nil
			end
		end
	end
end


function E:OnTalentsUpdate(event, guid, unit, info)
	if not E.inCombat then
		if unit and UnitIsPlayer(unit) then
			self:Debug("Your spec changed. Recreating default configuration.")
			self:CheckForPetClass()
			self:PrepareClassDefaults()
			self.db:RegisterDefaults(self.defaults)
			if self.SetupGroupList then self:SetupGroupList() end
		end
		self:Update(event)
	end
end


function E:OnReadyCheck(event)
	self:UpdatePlayerList(event)
	hideScheduled = false
	if hideTimer then
		self:CancelTimer(hideTimer, true)
		hideTimer = nil
	end
	self:ShowFeed()
end



--[[
      DATA BROKER OBJECT -------------------------------------------------------------------------------------------------------
  ]]

do
	local tooltip, tooltip2
	local frame, frame2
	local headers = {}
	local headerCount = 0
	local spacer = "   "

	function dataobj.OnEnter(self)
		if not E:ShouldEnable() then return end
		hideScheduled = false
		if hideTimer then
			E:CancelTimer(hideTimer, true)
			hideTimer = nil
		end
		E:ShowFeed()
		frame = self
		E:ShowTooltip()
		E:Update("LDB ONENTER")
	end


	function dataobj.OnLeave(self)
		--E:Update("LDB ONLEAVE")
	end
	
	
	function E:InTooltip()
		return qtip:IsAcquired("EnergizedTooltip")
	end


	function dataobj:OnClick(button)
		if IsShiftKeyDown() or IsAltKeyDown() or IsControlKeyDown() then
			if E:ShouldEnable() then
				if IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
					E:Report("INSTANCE_CHAT")
				elseif IsControlKeyDown() and not IsShiftKeyDown() and not IsAltKeyDown() then
					if UnitInRaid("player") or GetNumPartyMembers() > 0 then
						E:Report("WHISPER")
					end
				end
			end
		else
			LoadAddOn("Energized_Options")
			if E.optionsFrame then
				InterfaceOptionsFrame_OpenToCategory(E.optionsFrame)
			else
				E:Print(L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."])
			end
		end
	end
	
	
	local function addHeader(s)
		if not headers[s] then
			headers[s] = true
			headerCount = headerCount + 1
			tooltip:AddLine(colorize(s, blue))
		end
	end
	
	
	local function showSubTooltip(cell, group, suffix)
		local self = E
		if qtip:IsAcquired("EnergizedSubTooltip") and tooltip2 then
			qtip:Release(tooltip2)
			tooltip2 = nil
		end
		tooltip2 = qtip:Acquire("EnergizedSubTooltip", 4, "LEFT")
		tooltip2:ClearAllPoints()
		tooltip2:SetClampedToScreen(true)
		if self.db.profile.subtipAnchor == 2 then
			tooltip2:SetPoint("LEFT", cell, "RIGHT", 10, 0)
		else
			tooltip2:SetPoint("RIGHT", cell, "LEFT", -10, 0)
		end
		tooltip2:AddHeader(group.name)
		tooltip2:AddSeparator(1, 1, 1, 1, 1)
		local lastCastByHeader = ""
		if self.db.profile.recentCaster ~= 1 then lastCastByHeader = colorize(L["Last Seen From"], blue) end
		tooltip2:AddLine(colorize(L["Buff/Consumable"], blue), colorize(L["Providers"], blue), lastCastByHeader)
		tooltip2:AddSeparator(1, 1, 1, 1, 1)
		
		local onlyItems = true
		local firstItem = true
		
		for _, item in pairs(group.items) do
			if item.value ~= nil and item.value ~= "" then
			
				if not firstItem then tooltip2:AddSeparator(1, 1, 1, 1, 0.3) end
				
				if item.type ~= "ITEM" then onlyItems = false end
				if item.type == "CONSUMABLE" then
					local firstList = true
					local list = { strsplit(",", item.value) }
					for k, v in pairs(list) do
						local a, b, c = self:GetSubTooltipRow(v, item, firstList, suffix)
						if firstList then b = colorize(L["Consumable"], gray) else b = "" end
						tooltip2:AddLine(a, b, c)
						firstList = false
					end
					firstItem = false
				elseif item.type == "BUFF" then
					local firstList = true
					local list = { strsplit(",", item.value) }
					for k, v in pairs(list) do
						local a, b, c = self:GetSubTooltipRow(v, item, firstList, suffix)
						tooltip2:AddLine(a, b, c)
						firstList = false
					end
					firstItem = false
				end
				
			end
		end
		
		if not firstItem then tooltip2:AddSeparator(1, 1, 1, 1, 1.0) end
		local line = tooltip2:AddLine()
		if group["_disabled"..suffix] then
			tooltip2:SetCell(line, 1, colorize(L["Click to enable"], gray), nil, nil, 3)
		else
			tooltip2:SetCell(line, 1, colorize(L["Click to disable for this session"], gray), nil, nil, 3)
		end
		
		if onlyItems then
			qtip:Release(tooltip2)
			tooltip2 = nil
			return
		end
		
		tooltip2:UpdateScrolling()
		tooltip2:Show()
	end


	local function showSubTooltipMe(cell, group)
		showSubTooltip(cell, group, "")
	end
	
	
	local function showSubTooltipPet(cell, group)
		showSubTooltip(cell, group, "_pet")
	end
	
	
	local function toggleDisable(cell, group, suffix)
		if group then
			if group["_disabled"..suffix] then group["_disabled"..suffix] = nil else group["_disabled"..suffix] = true end
			E:Update("LDB TOOLTIP CLICK")
		end
	end
	
	
	local function toggleDisableMe(cell, group)
		toggleDisable(cell, group, "")
	end
	
	
	local function toggleDisablePet(cell, group)
		toggleDisable(cell, group, "_pet")
	end
	
	
	local function hideSubTooltip()
		if tooltip2 then
			qtip:Release(tooltip2)
			tooltip2 = nil
		end
	end
	
	
	function E:GetSubTooltipRow(v, item, isFirst, suffix)
		local val = strtrim(v)
		if strstarts(val, "\"") and strends(val, "\"") then
			val = strsub(val, 2, strlen(val) - 1)
		end
		local name = self:_GetItemName(val, item.type)
		local last = ""
		if isFirst then last = self:GetLastSeenText(item["_lastProvidedBy"..suffix], item["_lastSeen"..suffix]) end
		local providers = ""
		if isFirst then providers = self:GetPossibleProviders(item) end
  if item.petFamily ~= nil then name = name.." ("..item.petFamily..")" end
		return colorize(name, RAID_CLASS_COLORS[item.class]), providers, last
	end
	
	
	function E:GetLastSeenText(lastBy, lastTime, disabled)
		local last = ""
		if lastBy and lastTime > 0 and (GetTime() - lastTime) < 7200 then
			if UnitExists(lastBy) and UnitClass(lastBy) then
				if disabled then
					lastBy = colorize(lastBy, gray)
				else
					lastBy = colorize(lastBy, RAID_CLASS_COLORS[select(2, UnitClass(lastBy))])
				end
			end
			if (self.db.profile.showYourselfAsRecentCaster and lastBy == playerName) or lastBy ~= playerName then
				if self.db.profile.recentCaster == 3 and ((GetTime() - lastTime) / 60) >= 1 then
					last = format("%s "..colorize(L["(%d |4minute:minutes; ago)"], gray), lastBy, (GetTime() - lastTime) / 60)
				elseif self.db.profile.recentCaster == 2 or (self.db.profile.recentCaster == 3 and ((GetTime() - lastTime) / 60) < 1) then
					last = colorize(lastBy, gray)
				end
			end
		end
		return last
	end
	
	
	function E:GetPossibleProviders(item)
		local s = ""
		for player, class in pairs(players) do
			if class == item.class and self:PlayerHasSpec(player, item.talentTree) then
				if strlen(s) > 0 then s = s..", " end
				s = s..player
			end
		end
		return colorize(s, RAID_CLASS_COLORS[item.class])
	end
	
	
	local function addTooltipLine(group, suffix, header, onEnter, onClick)
		if group["_result"..suffix] then
			if (group["_result"..suffix] == "Low" and E.db.profile.lowWarn) or group["_result"..suffix] ~= "Low" then
				addHeader(header)
				local result = L[group["_result"..suffix]]
				if group["_disabled"..suffix] then result = colorize(result, gray)
				else
					if group["_result"..suffix] == "Expected" or group["_result"..suffix] == "Unexpected" then result = colorize(result, red)
					elseif group["_result"..suffix] == "Low" or group["_result"..suffix] == "Missing" then result = colorize(result, yellow)
					end
				end
				local name = group.name
				if group["_disabled"..suffix] then name = colorize(name.." "..L["(disabled)"], gray) end
				local lastseen = E:GetLastSeenText(E:FindLastBuffer(group, suffix))
				if group["_disabled"..suffix] then lastseen = colorize(lastseen, gray) end
				local line = tooltip:AddLine(spacer..result, name, lastseen)
				tooltip:SetLineScript(line, "OnEnter", onEnter, group)
				tooltip:SetLineScript(line, "OnLeave", hideSubTooltip)
				tooltip:SetLineScript(line, "OnMouseUp", onClick, group)
			end
		end
	end
	

	function E:ShowTooltip()
		if not E:ShouldEnable() then return end
		if qtip:IsAcquired("EnergizedTooltip") and tooltip then
			tooltip:Clear()
		else
			tooltip = qtip:Acquire("EnergizedTooltip", 4, "LEFT") -- intentionally one column more than we need to avoid text clipping
		end
		tooltip:AddHeader("Energized")
		tooltip:AddSeparator(1, 1, 1, 1, 1.0)
		
		table.wipe(headers)
		headerCount = 0
		
		-- Your buffs
		for _, group in pairs(self.db.profile.groups) do
			addTooltipLine(group, "", L["You"], showSubTooltipMe, toggleDisableMe)
		end
		
		-- Your additional issues
		for i = 1, #otherIssuesA.me do
			addHeader(L["You"])
			tooltip:AddLine(spacer..otherIssuesA.me[i], otherIssuesB.me[i])
		end

		-- Pet buffs
		if self.db.profile.petBuffs and E.isPetClass and UnitExists("playerpet") then
			for _, group in pairs(self.db.profile.groups) do
				addTooltipLine(group, "_pet", L["Your pet"], showSubTooltipPet, toggleDisablePet)
			end
		end
		
		-- Pet additional issues
		for i = 1, #otherIssuesA.pet do
			addHeader(L["Your pet"])
			tooltip:AddLine(spacer..otherIssuesA.pet[i], otherIssuesB.pet[i])
		end
		
		-- Gear issues
		for i = 1, #gearA do
			addHeader(L["Equipment"])
			tooltip:AddLine(spacer..gearA[i], gearB[i])
		end

		-- No issues
		if headerCount <= 0 then
			tooltip:AddLine(colorize(L["You are energized!"], green))
		end
		
		-- Hint
		if self.db.profile.showHint then
			tooltip:AddSeparator(1, 1, 1, 1, 1.0)
			local line = tooltip:AddLine()
			tooltip:SetCell(line, 1, colorize(L["Click to open options"], gray), nil, nil, 3)
			if self.db.profile.enableReporting and headerCount > 0 then
				if UnitInRaid("player") then
					line = tooltip:AddLine()
					tooltip:SetCell(line, 1, colorize(L["Shift-click to report to raid"], gray), nil, nil, 3)
				elseif GetNumPartyMembers() > 0 then
					line = tooltip:AddLine()
					tooltip:SetCell(line, 1, colorize(L["Shift-click to report to party"], gray), nil, nil, 3)
				end
				if UnitInRaid("player") or GetNumPartyMembers() > 0 then
					line = tooltip:AddLine()
					tooltip:SetCell(line, 1, colorize(L["Ctrl-click to report to whispers"], gray), nil, nil, 3)
				end
			end
		end

		tooltip:SetAutoHideDelay(0.01, frame)
		tooltip:SmartAnchorTo(frame)
		tooltip:UpdateScrolling()
		tooltip:Show()
	end
end


do
	local lastIcon, lastText

	function E:SetStatus(icon, text)
		lastIcon = icon
		if isHidden then icon = "blank" end
		if icon ~= "blank" then
			icon = [[Interface\AddOns\Energized\Icons\]]..(self.db.profile.iconSet or "Default").."\\"..icon
		else
			icon = [[Interface\AddOns\Energized\Icons\]]..icon
		end
		dataobj.icon = icon
		if text then
			lastText = text
			if isHidden then text = "" end
			dataobj.text = text
		end
		self:UpdateMapIconState()
	end


	function E:SetText(text)
		lastText = text or ""
		if isHidden then text = "" end
		dataobj.text = text or ""
	end
	
	
	function E:HideFeed()
		if not isHidden then
			self:Debug("Hiding feed")
			isHidden = true
			self:SetStatus(lastIcon, lastText)
		end
		self:UpdateMapIconState()
	end
	
	
	function E:ShowFeed()
		if isHidden then
			self:Debug("Showing feed")
			isHidden = false
			self:SetStatus(lastIcon, lastText)
		end
		self:UpdateMapIconState()
	end
	
	do
		local firstUpdate = true
		local hidden = false
		function E:UpdateMapIconState()
			if self.db.profile.minimap.hide or isHidden or lastIcon == "blank" then
				if firstUpdate or not hidden then
					LibStub("LibDBIcon-1.0"):Hide("Energized")
					hidden = true
				end
			elseif not self.db.profile.minimap.hide then
				if firstUpdate or hidden then
					LibStub("LibDBIcon-1.0"):Show("Energized")
					hidden = false
				end
			end
			firstUpdate = false
		end
	end
end



--[[
      REPORTING ----------------------------------------------------------------------------------------------------------------
  ]]

function E:Report(type)
	if not self:ShouldEnable() then return end
	if not self.db.profile.enableReporting then
		self:Print(L["Reporting is disabled"])
		return
	end
	local anySent = self:ReportForUnit(type, "player", "")
	if not anySent then self:Print(L["Nothing to report!"]) end
end


function E:ReportForUnit(type, unit, suffix)
	if not unit or not UnitExists(unit) then return end

	local dest
	local sentHeader = false
	local headerUnitName = UnitName(unit)
	local anySent = false
	local prefix = "    "
	if type == "WHISPER" then prefix = format(L["<Energized> for %s:"].." ", headerUnitName) end

	for _, group in pairs(self.db.profile.groups) do
		if group["_result"..suffix] then
			if group["_result"..suffix] ~= "Low" then
				dest = self:FindLastBuffer(group, suffix)
				if ((type == "WHISPER" and dest and dest ~= "" and dest ~= playerName) or (type ~= "WHISPER")) and
							group.name and group.name ~= "" and group.name ~= L["Unknown"]
							and not self:IsGroupAllType(group, "CONSUMABLE") and not self:IsGroupAllType(group, "ITEM")
							and group.report then
					if type ~= "WHISPER" then dest = nil end
					if group["_result"..suffix] == "Expected" then
						if not sentHeader and type ~= "WHISPER" then
							sentHeader = true
							self:ReportMessage(format(L["<Energized> for %s:"], headerUnitName), type)
						end
						self:ReportMessage(prefix..L["Missing"].." "..group.name, type, dest)
						anySent = true
					elseif group["_result"..suffix] == "Unexpected" and self.db.profile.reportUnexpected then
						if not sentHeader and type ~= "WHISPER" then
							sentHeader = true
							self:ReportMessage(format(L["<Energized> for %s:"], headerUnitName), type)
						end
						self:ReportMessage(prefix..group.name..L[" is unexpected"], type, dest)
						anySent = true
					end
				end
			end
		end
	end
	
	return anySent
end


function E:ReportMessage(message, chattype, destination)
	SendChatMessage(message, chattype, GetDefaultLanguage("player"), destination)
end



--[[
      RAID/PARTY LIST UPDATING -------------------------------------------------------------------------------------------------
  ]]

do
	local lastUpdate
	local updateScheduled = false
	local scanNum = 0
	local requestNum = 0
	local timeInside = 0
	
	function E:_UpdatePlayerList()
		local start = GetTime()
		updateScheduled = false
		scanNum = scanNum + 1
		if self.db.profile.debugMode then
			local updateReason = ""
			if updateSource then updateReason = "("..colorize(updateSource, yellow)..")" end
			self:Debug("Updating players %d "..updateReason.." | last was %s seconds ago [%d]", scanNum, colorize(format("%.2f", GetTime() - (lastUpdate or GetTime())), blue), requestNum)
		end
		lastUpdate = GetTime()

		table.wipe(players)
		table.wipe(blizzardTanks)
		
		if UnitInRaid("player") then
			local playerName, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML
			local numMembers = GetNumRaidMembers()
			players[UnitName("player")] = self.class
			local myZone = GetRealZoneText()
			for i = 1, numMembers do
				playerName, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(i)
    if playerName == UnitName("player") then
     myZone = zone
     break
    end
			end
			for i = 1, numMembers do
				playerName, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(i)
				if playerName and online and not isDead and (zone == myZone or not zone) and (not UnitIsDeadOrGhost(playerName) or UnitIsFeignDeath(playerName)) and UnitIsConnected(playerName) then
					players[playerName] = select(2, UnitClass(playerName))
					if role == "MAINTANK" then table.insert(blizzardTanks, playerName) end
				end
			end
		elseif GetNumPartyMembers() > 0 then
			local playerName
			players[UnitName("player")] = self.class
			for i = 1, GetNumPartyMembers() do
				playerName = UnitName("party"..i)
				if playerName then
					if (not UnitIsDeadOrGhost(playerName) or UnitIsFeignDeath(playerName)) and UnitIsConnected(playerName) then
						players[playerName] = select(2, UnitClass(playerName))
					end
				end
			end
		else
			players[playerName] = self.class
		end
		
		self:CountClasses()
		timeInside = timeInside + (GetTime() - start)
		self:Debug("Time inside _UpdatePlayerList: %.3f", timeInside)
		self:Update()
	end

	function E:UpdatePlayerList(event)
		requestNum = requestNum + 1
		if event then updateSource = event end
		if (lastUpdate == nil or GetTime() - lastUpdate >= UPDATE_THROTTLE) and not updateScheduled then
			self:_UpdatePlayerList()
		else
			if not updateScheduled then
				updateScheduled = true
				self:ScheduleTimer("_UpdatePlayerList", UPDATE_THROTTLE + 0.1)
			end
		end
	end
end



--[[
      PROCESSING ---------------------------------------------------------------------------------------------------------------
  ]]


do
	local lastUpdate
	local updateScheduled = false
	local scanNum = 0
	local requestNum = 0
	
	function E:_Update()
		local status, numIssues

		updateScheduled = false
		
		if not self:ShouldEnable() then
			self:SetStatus("blank", "")
		else
		
			scanNum = scanNum + 1
			if self.db.profile.debugMode then
				local updateReason = ""
				if updateSource then updateReason = "("..colorize(updateSource, yellow)..")" end
				self:Debug("Scanning %d "..updateReason.." | last was %s seconds ago [%d]", scanNum, colorize(format("%.2f", GetTime() - (lastUpdate or GetTime())), blue), requestNum)
			end
			lastUpdate = GetTime()
			
			-- Update tank status
			self:UpdateIsTank()
			
			-- Update mounted flag
			isMounted = IsMounted()

			-- Get instance difficulty and party format
			do
				local name, instanceType, difficultyIndex, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceMapID = GetInstanceInfo()
				local inInstance, instanceType = IsInInstance()
				if difficultyIndex == 2 or difficultyIndex == 4 or difficultyIndex == 6 then isHeroic = true else isHeroic = false end
				partyFormat = "NONE"
				isSolo = true
				if UnitInRaid("player") then
					partyFormat = "RAID_UNKNOWN"
					isSolo = false
				elseif GetNumPartyMembers() > 0 then
					isSolo = false
				end
				if inInstance then
					if maxPlayers > 10 then partyFormat = "RAID_25"
					elseif maxPlayers == 10 then partyFormat = "RAID_10"
					elseif maxPlayers == 5 then partyFormat = "PARTY"
					end
				end
			end
			
			-- Scan auras
			do
				local name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId

				table.wipe(aura.me.spellName)
				table.wipe(aura.me.spellId)
				table.wipe(aura.me.expiration)
				table.wipe(aura.me.unitCaster)
			
				for i = 1, 40 do
					name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitAura("player", i)
					if name then
						name = strupper(name)
						table.insert(aura.me.spellName, name)
						table.insert(aura.me.spellId, spellId)
						table.insert(aura.me.expiration, expirationTime - GetTime())
						table.insert(aura.me.unitCaster, unitCaster)
					else
						break
					end
				end

			end

			-- Scan inventory
			do
				local numSlots, id, qty
				table.wipe(items)
				if self.db.profile.itemWarn then
					for i = 0, NUM_BAG_SLOTS do
						numSlots = GetContainerNumSlots(i)
						if numSlots then
							for ii = 1, numSlots do
								id = GetContainerItemID(i, ii)
								if id then
									qty = select(2, GetContainerItemInfo(i, ii))
									if not items[id] then items[id] = 0 end
									items[id] = items[id] + qty
								end
							end
						end
					end
				end
			end
			
			-- Evaluate all rule groups
			status, numIssues = self:EvaluateAllGroups()
			
			-- Check other issues
			table.wipe(otherIssuesA.me)
			table.wipe(otherIssuesB.me)
			table.wipe(otherIssuesA.pet)
			table.wipe(otherIssuesB.pet)
			
			-- Pet checks
   local shouldHavePetNow = E.shouldHavePet
   if E.class == "WARLOCK" then -- Grimoire of Sacrifice talent eliminates pet requirement for warlocks
    local spellName = strupper((GetSpellInfo(108503)))
    for k, v in pairs(aura.me.spellName) do
     if v == spellName then
      shouldHavePetNow = false
      break
     end
    end
   end
   if E.class == "HUNTER" then -- Lone Wolf talent eliminates pet requirement for hunters
    local spellName = strupper((GetSpellInfo(155228)))
    for k, v in pairs(aura.me.spellName) do
     if v == spellName then
      shouldHavePetNow = false
      break
     end
    end
   end
			if shouldHavePetNow then
				-- Pet exists
				if not UnitExists("pet") and not isMounted then
					table.insert(otherIssuesA.pet, colorize(L["Missing"], red))
					table.insert(otherIssuesB.pet, L["Pet"])
				elseif UnitExists("pet") and not isMounted then
					-- Attack mode
					if self.db.profile.petMode ~= "NONE" and self:GetPetMode() ~= self.db.profile.petMode then
						table.insert(otherIssuesA.pet, colorize(L["Expected"], red))
						if self.db.profile.petMode == "PET_MODE_PASSIVE" then
							table.insert(otherIssuesB.pet, PET_MODE_PASSIVE)
						elseif self.db.profile.petMode == "PET_MODE_ACTIVE" then
							table.insert(otherIssuesB.pet, PET_MODE_ACTIVE)
						else
							table.insert(otherIssuesB.pet, PET_MODE_DEFENSIVE)
						end
					end
				end
			end
			
			-- Check equipment
			do
				table.wipe(gearA)
				table.wipe(gearB)
				
				local missingSlots = 0
				local lowSlots = 0
				local brokenSlots = 0
				local twoHander = false
				local itemLink = GetInventoryItemLink("player", GetInventorySlotInfo("MainHandSlot"))
				local slotId, itemId, value, max, percent
				
				if itemLink then
     local type = select(9, GetItemInfo(itemLink))
     if type == "INVTYPE_2HWEAPON" or type == "INVTYPE_RANGED" or type == "INVTYPE_RANGEDRIGHT" then twoHander = true end
    end
				
				for _, slot in pairs(invSlots) do
					slotId = select(1, GetInventorySlotInfo(slot))
					itemId = GetInventoryItemID("player", slotId)
					if itemId and self.db.profile.doNotEquip[itemId] then
						status = "red"
						table.insert(gearA, colorize(L["Unexpected"], red))
						table.insert(gearB, GetInventoryItemLink("player", slotId))
					elseif not GetInventoryItemQuality("player", slotId) then
						if slot ~= "SecondaryHandSlot" or not twoHander then
							missingSlots = missingSlots + 1
						end
					elseif GetInventoryItemBroken("player", slotId) then
						brokenSlots = brokenSlots + 1
					else
						value, max = GetInventoryItemDurability(slotId)
						percent = 1
						if max and max ~= 0 and value then percent = value / max end
						if percent <= self.db.profile.minDurability then
							lowSlots = lowSlots + 1
						end
					end
				end
				
				if brokenSlots > 0 then
					status = "red"
					table.insert(gearA, colorize(L["Broken"], red))
					table.insert(gearB, format(L["%d |4item:items;"], brokenSlots))
				elseif lowSlots > 0 and self.db.profile.minDurability > 0 then
					if status ~= "red" then status = "yellow" end
					table.insert(gearA, colorize(L["Low durability"], yellow))
					table.insert(gearB, format(L["%d |4item:items;"], lowSlots))
				end
				if missingSlots > 0 and self.db.profile.equippedWarn then
					status = "red"
					table.insert(gearA, colorize(L["Not equipped"], red))
					table.insert(gearB, format(L["%d |4item:items;"], missingSlots))
				end
			end
			
			-- Check weapon buffs
			-- do
				-- if self.db.profile.weaponBuffs then
					-- if E.class == "ROGUE" or E.class == "SHAMAN" then
						-- local hasMHEnchant, mhExp, _, hasOHEnchant, ohExp, _, hasThrownEnchant, thrownExp, _ = GetWeaponEnchantInfo()
						-- if mhExp then mhExp = mhExp / 1000 end
						-- if ohExp then ohExp = ohExp / 1000 end
						-- if thrownExp then thrownExp = thrownExp / 1000 end
						-- if not hasMHEnchant then
							-- status = "red"
							-- table.insert(gearA, colorize(L["Expected"], red))
							-- table.insert(gearB, L["Mainhand Weapon Buff"])
						-- elseif mhExp and mhExp <= 300 then
							-- if status ~= "red" then status = "yellow" end
							-- table.insert(gearA, colorize(L["Low"], yellow))
							-- table.insert(gearB, L["Mainhand Weapon Buff"])
						-- end
						-- if OffhandHasWeapon() then
							-- if not hasOHEnchant then
								-- status = "red"
								-- table.insert(gearA, colorize(L["Expected"], red))
								-- table.insert(gearB, L["Offhand Weapon Buff"])
							-- elseif ohExp and ohExp <= 300 then
								-- if status ~= "red" then status = "yellow" end
								-- table.insert(gearA, colorize(L["Low"], yellow))
								-- table.insert(gearB, L["Offhand Weapon Buff"])
							-- end
						-- end
						-- if E.class == "ROGUE" and self.db.profile.rogueThrownEnchant then
							-- if not hasThrownEnchant then
								-- status = "red"
								-- table.insert(gearA, colorize(L["Expected"], red))
								-- table.insert(gearB, L["Thrown Weapon Buff"])
							-- elseif thrownExp and thrownExp <= 300 then
								-- if status ~= "red" then status = "yellow" end
								-- table.insert(gearA, colorize(L["Low"], yellow))
								-- table.insert(gearB, L["Thrown Weapon Buff"])
							-- end
						-- end
					-- end
				-- end
			-- end
			
			do
				if E.class == "WARRIOR" then
					-- Warrior: Defensive Stance
					if self.db.profile.warriorStance then
						if GetSpecialization() == 3 then
							if GetShapeshiftForm(true) ~= 2 then
								local defensive = GetSpellInfo(71)
								table.insert(otherIssuesA.me, colorize(L["Expected"], red))
								table.insert(otherIssuesB.me, defensive)
							end
						else
							if GetShapeshiftForm(true) == 2 then
								local defensive = GetSpellInfo(71)
								table.insert(otherIssuesA.me, colorize(L["Unexpected"], red))
								table.insert(otherIssuesB.me, defensive)
							end
						end
					end
				
				end
			end
			
			do
				if E.class == "PALADIN" then
					-- Paladin: Any Seal
					if (GetShapeshiftForm() or 0) <= 0 then
						table.insert(otherIssuesA.me, colorize(L["Expected"], red))
						table.insert(otherIssuesB.me, L["Seal"])
					end
				
				end
			end
			
			do
				if E.class == "WARLOCK" then
					-- Warlock: Soul Shards
     if self.db.profile.warlockShards ~= "NONE" and not E.inCombat then
      local expectedShards = 3
      if self.db.profile.warlockShards == "4" then expectedShards = 4 end
					 if (UnitPower("player", SPELL_POWER_SOUL_SHARDS) or 0) < expectedShards then
						 table.insert(otherIssuesA.me, colorize(L["Expected"], red))
						 table.insert(otherIssuesB.me, expectedShards.." "..L["Soul Shards"])
					 end
     end
				end
			end
			
			-- Count issues and set icon
			numIssues = numIssues + #otherIssuesA.me + #otherIssuesA.pet + #gearA
			if #otherIssuesA.me > 0 or #otherIssuesA.pet > 0 then status = "red" end
			self:SetStatus(status)
			
			-- Set text
			local text = ""
			if numIssues > 0 or self.db.profile.showZeroIssuesMessage then
				if self.db.profile.feedText == 3 then
					text = format(L["%d |4issue:issues;"], numIssues)
				elseif self.db.profile.feedText == 2 then
					text = format("%d", numIssues)
				end
			end
			self:SetText(text)
			
			-- Set the feed to auto hide if we're good
			if self.db.profile.hideTime > 0 and status == "green" and not hideScheduled and not self:InTooltip() and not isHidden and not hideTimer then
				hideScheduled = true
				hideTimer = self:ScheduleTimer("OnHideTimer", self.db.profile.hideTime)
			elseif status ~= "green" then
				hideScheduled = false
				if hideTimer then
					self:CancelTimer(hideTimer, true)
					hideTimer = nil
				end
				self:ShowFeed()
			end
			
			-- Update the tooltip if it's currently showing
			if self:InTooltip() then E:ShowTooltip() end
		end
	end
	
	
	function E:OnHideTimer()
		if hideScheduled and not self:InTooltip() and not isHidden then
			self:HideFeed()
			hideScheduled = false
			hideTimer = nil
		end
	end


	function E:Update(event)
		requestNum = requestNum + 1
		if event then updateSource = event end
		if (lastUpdate == nil or GetTime() - lastUpdate >= UPDATE_THROTTLE) and not updateScheduled then
			self:_Update()
		else
			if not updateScheduled then
				updateScheduled = true
				self:ScheduleTimer("_Update", UPDATE_THROTTLE + 0.1)
			end
		end
	end
end


--[[
  
  Status types have hardcoded statuses.
  
  Expected and Unexpected: Red
  Low and Missing: Yellow
  
]]

function E:EvaluateAllGroups()
	local status = "green"
	local numIssues = 0
	
	for _, group in pairs(self.db.profile.groups) do
		self:UnscanGroup(group)		
		if not group.hidden then
			if group.when == "ALWAYS" or (group.when == "WHEN_TANK" and isPlayerTank) or (group.when == "WHEN_NOT_TANK" and not isPlayerTank) then
				self:EvaluateGroup(group)
				if group._result == "Low" and self.db.profile.lowWarn and not group._disabled then
					if status == "green" then status = "yellow" end
					numIssues = numIssues + 1
				elseif (group._result == "Expected" or group._result == "Unexpected") and not group._disabled then
					status = "red"
					numIssues = numIssues + 1
				elseif group._result == "Missing" and not group._disabled then
					if status == "green" then status = "yellow" end
					numIssues = numIssues + 1
				end
				if group._result_pet == "Low" and self.db.profile.lowWarn and self.db.profile.petBuffs and E.isPetClass and UnitExists("playerpet") and not group._disabled_pet then
					if status == "green" then status = "yellow" end
					numIssues = numIssues + 1
				elseif (group._result_pet == "Expected" or group._result_pet == "Unexpected") and self.db.profile.petBuffs and E.isPetClass and UnitExists("playerpet") and not group._disabled_pet then
					status = "red"
					numIssues = numIssues + 1
				end
			end
		end
	end
	
	return status, numIssues
end


function E:UnscanGroup(group)
	group._status = "not_scanned"
	group._status_pet = "not_scanned"
	group._result = nil
	group._result_pet = nil
	for _, item in pairs(group.items) do
		item._status = "not_scanned"
		item._status_pet = "not_scanned"
	end
end


function E:EvaluateGroup(group)
	for _, item in pairs(group.items) do
		self:EvaluateItem(item)
		if item._status == "low" and group._status ~= "found" then group._status = "low"
		elseif item._status == "found" then group._status = "found"
		elseif item._status == "not_found" and group._status ~= "found" and group._status ~= "low" and not item.fromPet then group._status = "not_found"
		end
	end
	
	--[[
	
	    Some special rules apply here.
	    
	    1. If a consumable is grouped with a buff, and the buff isn't available, we don't want to require the group. Logic:
	    
								- If the group contains both buffs and consumables
										- and the buffs weren't scanned
										- and the consumable failed
												- make the group not scanned
	
	    2. Inventory items need to surface as warnings instead of errors. Logic:
	    
	       - If the group contains an item
	         - and the item failed
	           - make the group's status "Missing", which will be a yellow status
	             (Don't combine items with buffs within a group, as this may lead to unpredictable results)
	
	]]
	
	local foundbuff = false
	local foundconsumable = false
	local founditem = false
	local failedconsumables = 0
	local failedconsumables_pet = 0
	local scannedbuffs = 0
	local scannedbuffs_pet = 0
	local faileditems = 0
	
	for _, item in pairs(group.items) do
		if item.type == "BUFF" then
			foundbuff = true
			if item._status == "not_found" then scannedbuffs = scannedbuffs + 1 end
		elseif item.type == "CONSUMABLE" then
			foundconsumable = true
			if item._status == "not_found" or item._status == "low" then failedconsumables = failedconsumables + 1 end
		elseif item.type == "ITEM" then
			founditem = true
			if item._status == "low" then faileditems = faileditems + 1 end
		end
	end
	
	if foundbuff and foundconsumable and scannedbuffs <= 0 and failedconsumables > 0 then group._status = "not_scanned" end
	
	if group._status ~= "not_scanned" then
		if founditem and faileditems > 0 then group._result = "Missing"
		elseif group._status == "not_found" and group.me == "EXPECTED" then group._result = "Expected"
		elseif group._status ~= "not_found" and group.me == "UNEXPECTED" then group._result = "Unexpected"
		elseif group._status == "low" and group.me == "EXPECTED" then group._result = "Low"
		end
	end
end


function E:EvalList(item, doMe, doPet, fn, ...)
	local i, v, val
	for i = 1, select("#", ...) do
		v = select(i, ...)
		val = strupper(strtrim(v))
		if val and val ~= "" then
			self[fn](self, item, doMe, doPet, val)
		end
	end
end


function E:EvaluateItem_BUFF_OR_CONSUMABLE(item, doMe, doPet, s)
	local id, i, v

	-- Name matching using ID
	if strstarts(s, "\"") and strends(s, "\"") then
		s = strsub(s, 2, strlen(s) - 1)
		id = tonumber(s)
		if id then
			s = GetSpellInfo(id)
			if s then
				s = strupper(s)
				if doMe then
					for i, v in pairs(aura.me.spellName) do
						if compare_funcs[item.mode](v, s) then
							item._status = "found"
							if aura.me.unitCaster[i] and UnitExists(aura.me.unitCaster[i]) then
								item._lastProvidedBy = UnitName(aura.me.unitCaster[i])
							end
							item._lastSeen = GetTime()
							if aura.me.expiration[i] <= item.warn and aura.me.expiration[i] > 0 and self.db.profile.lowWarn then item._status = "low" end
							break
						end
					end
				end
				if doPet then
					for i, v in pairs(aura.pet.spellName) do
						if compare_funcs[item.mode](v, s) then
							item._status_pet = "found"
							if aura.pet.unitCaster[i] and UnitExists(aura.pet.unitCaster[i]) then
								item._lastProvidedBy_pet = UnitName(aura.pet.unitCaster[i])
							end
							item._lastSeen_pet = GetTime()
							if aura.pet.expiration[i] <= item.warn and aura.pet.expiration[i] > 0 and self.db.profile.lowWarn then item._status_pet = "low" end
							break
						end
					end
				end
			end
		end
		
	-- ID matching
	elseif tonumber(s) then
		id = tonumber(s)
		if doMe then
			for i, v in pairs(aura.me.spellId) do
				if v == id then
					item._status = "found"
					if aura.me.unitCaster[i] and UnitExists(aura.me.unitCaster[i]) then
						item._lastProvidedBy = UnitName(aura.me.unitCaster[i])
					end
					item._lastSeen = GetTime()
					if aura.me.expiration[i] <= item.warn and aura.me.expiration[i] > 0 and self.db.profile.lowWarn then item._status = "low" end
					break
				end
			end
		end
		if doPet then
			for i, v in pairs(aura.pet.spellName) do
				if v == id then
					item._status_pet = "found"
					if aura.pet.unitCaster[i] and UnitExists(aura.pet.unitCaster[i]) then
						item._lastProvidedBy_pet = UnitName(aura.pet.unitCaster[i])
					end
					item._lastSeen_pet = GetTime()
					if aura.pet.expiration[i] <= item.warn and aura.pet.expiration[i] > 0 and self.db.profile.lowWarn then item._status_pet = "low" end
					break
				end
			end
		end
		
	-- Name matching
	else
		if doMe then
			for i, v in pairs(aura.me.spellName) do
				if compare_funcs[item.mode](v, s) then
					item._status = "found"
					if aura.me.unitCaster[i] and UnitExists(aura.me.unitCaster[i]) then
						item._lastProvidedBy = UnitName(aura.me.unitCaster[i])
					end
					item._lastSeen = GetTime()
					if aura.me.expiration[i] <= item.warn and aura.me.expiration[i] > 0 and self.db.profile.lowWarn then item._status = "low" end
					break
				end
			end
		end
		if doPet then
			for i, v in pairs(aura.pet.spellName) do
				if compare_funcs[item.mode](v, s) then
					item._status_pet = "found"
					if aura.pet.unitCaster[i] and UnitExists(aura.pet.unitCaster[i]) then
						item._lastProvidedBy_pet = UnitName(aura.pet.unitCaster[i])
					end
					item._lastSeen_pet = GetTime()
					if aura.pet.expiration[i] <= item.warn and aura.pet.expiration[i] > 0 and self.db.profile.lowWarn then item._status_pet = "low" end
					break
				end
			end
		end
	end
end


function E:EvaluateItem_ITEM(item, doMe, doPet, s)
	local id, i, v

	-- Name matching using ID
	if strstarts(s, "\"") and strends(s, "\"") then
		s = strsub(s, 2, strlen(s) - 1)
		id = tonumber(s)
		if id then
			s = GetItemInfo(id)
			if s then
				s = strupper(s)
				for i, v in pairs(items) do
					if compare_funcs[item.mode](strupper(GetItemInfo(i) or "") or "", s) then
						if v >= item.quantity then
							item._status = "found"
							item._lastSeen = GetTime()
						end
						break
					end
				end
			end
		end
		
	-- ID matching
	elseif tonumber(s) then
		id = tonumber(s)
		for i, v in pairs(items) do
			if i == id then
				if v >= item.quantity then
					item._status = "found"
					item._lastSeen = GetTime()
				end
				break
			end
		end
		
	-- Name matching
	else
		for i, v in pairs(items) do
			if compare_funcs[item.mode](strupper(GetItemInfo(i) or "") or "", s) then
				if v >= item.quantity then
					item._status = "found"
					item._lastSeen = GetTime()
				end
				break
			end
		end
	
	end
end


function E:EvaluateItem(item)
	if E:ShouldEvaluateItem(item) then
		if item.type == "BUFF" or item.type == "CONSUMABLE" then
			item._status = "not_found"
			local doMe = true
			local doPet = false --true   (hacked to false for 4.0)
			local prio = tonumber(item.priorityMe)
			if prio and prio > 0 and classes[item.class] < prio then
				doMe = false
				item._status = "not_scanned"
			end
			self:EvalList(item, doMe, doPet, "EvaluateItem_BUFF_OR_CONSUMABLE", strsplit(",", item.value))
		elseif item.type == "ITEM" then
			if self.db.profile.itemWarn then
				item._status = "low"
				self:EvalList(item, true, true, "EvaluateItem_ITEM", strsplit(",", item.value))
			else
				item._status = "not_scanned"
			end
		end
	end
end



--[[
      HELPER FUNCTIONS ---------------------------------------------------------------------------------------------------------
  ]]


function E:RaidHasSpec(class, talentTree)
	if not talentTree or talentTree <= 0 then return true end
	for k, v in pairs(players) do
		if v == class and UnitExists(k) and (UnitInRaid(k) or UnitInParty(k) or UnitIsUnit("player", k)) then
   local tal = talents:GetCachedInfo(UnitGUID(k))
   local spec = 0
   if tal and tal.global_spec_id then spec = tal.global_spec_id end
   if spec and specMap[spec] and specMap[spec] == talentTree then return true end
		end
	end
	return false
end


function E:PlayerHasSpec(player, talentTree)
	if not talentTree or talentTree <= 0 then return true end
	if UnitExists(player) and (UnitInRaid(player) or UnitInParty(player) or UnitIsUnit("player", player)) then
   local tal = talents:GetCachedInfo(UnitGUID(player))
   local spec = 0
   if tal and tal.global_spec_id then spec = tal.global_spec_id end
  if spec and specMap[spec] and specMap[spec] == talentTree then return true end
	end
	return false
end


--do
	-- local ticks = 0
	-- local numCalls = 0

	function E:ShouldEnable()
  if UnitIsGhost("player") then return false end
		if UnitInRaid("player") then
			local status, mapName, instanceID, minlevel, maxlevel, teamSize
   local num = MAX_BATTLEFIELD_QUEUES
   if not num then num = GetMaxBattlefieldID() end
			for i = 1, num do
				status, mapName, instanceID, minlevel, maxlevel, teamSize = GetBattlefieldStatus(i)
				if status and status == "active" then
					if teamSize and teamSize > 0 then
						return self.db.profile.enableArena
					else
						return self.db.profile.enableBattleground
					end
				end
			end
			return self.db.profile.enableRaid
		elseif GetNumPartyMembers() > 0 then
			return self.db.profile.enableParty
		else
			return false--self.db.profile.enableSolo
		end
	end
	
	-- function E:ShouldEnable()
		-- numCalls = numCalls + 1
		-- local start = GetTime()
		-- local e = self:_ShouldEnable()
		-- ticks = ticks + (GetTime() - start)
		-- self:Debug("ShouldEnable called [%d]. Total time spent inside: %.2f", numCalls, ticks)
		-- return e
	-- end
--end


function E:CountClasses()
	for _, v in pairs(CLASS_LIST) do
		classes[v] = 0
	end
	for _, v in pairs(players) do
		classes[v] = classes[v] + 1
	end
end


function E:GetPetMode()
	local name, subtext, texture, isToken, isActive, autoCastAllowed, autoCastEnabled
	for i = 1, 10 do
		name, subtext, texture, isToken, isActive, autoCastAllowed, autoCastEnabled = GetPetActionInfo(i)
		if name == "PET_MODE_ASSIST" and isActive == 1 then return "PET_MODE_ASSIST"
		elseif name == "PET_MODE_DEFENSIVE" and isActive == 1 then return "PET_MODE_DEFENSIVE"
		elseif name == "PET_MODE_PASSIVE" and isActive == 1 then return "PET_MODE_PASSIVE"
		end
	end
	return "PET_MODE_UNKNOWN"
end


function E:FindLastBuffer(group, suffix)
	local time = 0
	local by = ""
	for _, item in pairs(group.items) do
		if item["_lastProvidedBy"..suffix] and item["_lastSeen"..suffix] then
			if time < item["_lastSeen"..suffix] then
				time = item["_lastSeen"..suffix]
				by = item["_lastProvidedBy"..suffix]
			end
		end
	end
	return by, time, group["_disabled"..suffix]
end


function E:GetItemName(itemValue)
	if itemValue.type == "BUFF" then
		if itemValue.value == nil or itemValue.value == "" then return L["Unspecified buff"] end
		return self:GetItemNameFromList(itemValue.value, itemValue.type)
	elseif itemValue.type == "CONSUMABLE" then
		if itemValue.value == nil or itemValue.value == "" then return L["Unspecified consumable"] end
		return self:GetItemNameFromList(itemValue.value, itemValue.type)
	elseif itemValue.type == "ITEM" then
		if itemValue.value == nil or itemValue.value == "" then return L["Unspecified item"] end
		return self:GetItemNameFromList(itemValue.value, itemValue.type)
	end
	return L["Error"]
end


function E:_GetItemName(val, type)
	local num = tonumber(val)
	if num then
		if type == "BUFF" or type == "CONSUMABLE" then
			local spell = GetSpellInfo(num)
			if spell then return spell else return L["Unknown spell ID: "]..num end
		elseif type == "ITEM" then
			local item = GetItemInfo(num)
			if item then return item else return L["Unknown item ID: "]..num end
		end
	else
		if type == "BUFF" or type == "CONSUMABLE" then
			local spell = GetSpellInfo(val)
			if spell then return spell else return val end -- Don't say "unknown", because we never know spells by name if they're not in our spell book
		elseif type == "ITEM" then
			local item = GetItemInfo(val)
			if item then return item else return val end -- Don't say "unknown", because we never know items by name if we haven't seen them this session
		end
	end
	return L["Error"]
end


function E:GetItemNameFromList(s, type)
	local list = { strsplit(",", s) }
	for k, v in pairs(list) do
		local val = strtrim(v)
		if strstarts(val, "\"") and strends(val, "\"") then
			val = strsub(val, 2, strlen(val) - 1)
		end
		local name = self:_GetItemName(val, type)
		if #list > 1 then
			name = name..L[" (...)"]
		end
		return name
	end
end


function E:UpdateIsTank()
	isPlayerTank = false	
	local isTank = UnitGroupRolesAssigned("player")
	if isTank then isPlayerTank = true end
	if self.class == "WARRIOR" and GetSpecialization() == 3 then
		isPlayerTank = true
	elseif self.class == "PALADIN" and GetSpecialization() == 2 then
		isPlayerTank = true
	elseif self.class == "DRUID" and GetSpecialization() == 3 then
		isPlayerTank = true
	elseif self.class == "DEATHKNIGHT" and GetSpecialization() == 1 then
		isPlayerTank = true
	end
end


function E:ShouldEvaluateItem(item)
	-- Hidden
	if item.hidden then return false end
	-- Instance difficulty
	if item.difficulty ~= "ANY" and ((item.difficulty == "HEROIC" and not isHeroic) or (item.difficulty == "NORMAL" and isHeroic)) then return false end
	-- Party format
	if not (item.enableSolo and isSolo) then
		if item.partyFormat ~= "ANY" and not (item.partyFormat == "ANY_RAID" and UnitInRaid("player")) then
			if item.partyFormat ~= partyFormat then return false end
		end
	end
	-- Solo
	if --[[not item.enableSolo and]] isSolo then return false end
	
	if item.type == "BUFF" or item.type == "ITEM" then
		-- Class present
		if item.class and item.class ~= "" and item.class ~= "0" and (classes[item.class] or 0) <= 0 then return false end
		-- Talent
		if item.talentWho == "ANYONE" and not self:RaidHasSpec(item.class, item.talentTree) then return false end
		if item.talentWho == "ME" and not self:PlayerHasSpec(playerName, item.talentTree) then return false end
		if item.talentWho == "NOT_ME" and self:PlayerHasSpec(playerName, item.talentTree) then return false end
	end
	
	-- Mounted
	if item.mountMode ~= "NONE" then
		if item.mountMode == "MOUNTED" and not isMounted then return false
		elseif item.mountMode == "NOT_MOUNTED" and isMounted then return false
		end
	end
	
	return true
end


function E:RequireSpellOnOthers(spellId)
	local castOn, castBy, spellName, found, _
	spellName = GetSpellInfo(spellId)
	found = false
	for name, class in pairs(players) do
		castOn, _, _, _, _, _, _, castBy = UnitAura(name, spellName)
		if castOn and castBy == "player" then
			found = true
			break
		end
	end
	if not found then
		table.insert(otherIssuesA.me, colorize(L["Expected"], red))
		table.insert(otherIssuesB.me, spellName)
	end
end


function E:IsGroupAllType(group, type)
	for k, v in pairs(group.items) do
		if v.type ~= type then return false end
	end
	return true
end


function E:ChangeThrottle(throttle)
	UPDATE_THROTTLE = throttle or 3.0
end
