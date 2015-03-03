local L
L = LibStub("AceLocale-3.0"):NewLocale("Energized", "enUS", true)














L["Loaded (running in debug mode)"] = true
L["Profile modified, rebooting"] = true
L["(running in debug mode)"] = true
L["Debug mode OFF"] = true
L["Debug mode ON"] = true
L["General"] = true
L["Display Options"] = true
L["Icon set"] = true
L["Controls which set of icons Energized uses to show your status."] = true
L["Classic"] = true
L["Default"] = true
L["Glass Circle"] = true
L["Glass Square"] = true
L["Star"] = true
L["Enable"] = true
L["Solo"] = true
L["Party"] = true
L["Battleground"] = true
L["Arena"] = true
L["Raid"] = true
L["Behavior"] = true
L["Enable low buff warnings"] = true
L["When checked, Energized will warn you if any of your buffs are running low."] = true
L["Special Cases"] = true
L["Pets"] = true
L["Pet mode should be"] = true
L["Energized can check your pet's stance to make sure it is correct."] = true
L["Don't check"] = true
L["Equipment"] = true
L["Warn when durability reaches"] = true
L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = true
L["Do not equip"] = true
L["Item %d"] = true
L["Items"] = true
L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = true
L["Delete"] = true
L["Deletes the currently selected item from the do-not-equip list."] = true
L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = true
L["Add an item"] = true
L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = true
L["Durability"] = true
L["Name"] = true
L["Advanced"] = true
L["Rule groups"] = true
L["Edit"] = true
L["Click to edit this rule group."] = true
L["Rule Group Editor"] = true
L["Click to delete this rule group."] = true
L["Are you sure you want to delete |cffffff00%s|r?"] = true
L["Create a new rule group"] = true
L["Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.\n\nTo create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = true
L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = true
L["For me"] = true
L["Indicates if this group should be expected or unexpected for you."] = true
L["Expected"] = true
L["Unexpected"] = true
L["None"] = true
L["For my pet"] = true
L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = true
L["Enable this group"] = true
L["Defines special circumstances when this group should apply.\n\n"] = true
L["Check the Frequently Asked Questions at the Energized web site for more information."] = true
L["When I'm a tank"] = true
L["When I'm not a tank"] = true
L["Always"] = true
L["Expected for you and your pet"] = true
L["Expected for your pet"] = true
L["Expected for you"] = true
L["Unexpected for you and your pet"] = true
L["Unexpected for your pet"] = true
L["Unexpected for you"] = true
L["|cffff0000Disabled|r"] = true
L["; "] = true
L["Disable"] = true
L["Click to disable this rule group."] = true
L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = true
L["Delete this rule group"] = true
L["New rule"] = true
L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = true
L["New rule type"] = true
L["Choose which type of new rule to create, then click New rule below.\n\n"] = true
L["Buff"] = true
L["Consumable"] = true
L["Inventory item"] = true
L["Unspecified buff"] = true
L["Unspecified consumable"] = true
L["Unspecified item"] = true
L["Error"] = true
L["Unknown ID: "] = true
L["Unknown spell ID: "] = true
L["Unknown item ID: "] = true
L["Unknown spell: "] = true
L["Unknown item: "] = true
L["Item(s)"] = true
L["A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.\n\nItems can be specified by name, partial name, ID, or ID string.\n\n"] = true
L["|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:\n\n"] = true
L["|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:\n\n"] =  true
L["|cffffff00ID string:|r Number surrounded by quotes (\"). Use a spell/item ID and put it in double quotation marks (\"). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:\n\n"] = true
L["  Well Fed\n\n"] = true
L[" (...)"] = true
L["Delete this rule"] = true
L["Are you sure you want to delete this rule?"] = true
L["Quantity"] = true
L["Determines how many of this item you should have in your inventory. Typically set to 1."] = true
L["Enable inventory item warnings"] = true
L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = true
L["Advanced Options"] = true
L["Basic Options"] = true
L["Create a New Rule"] = true
L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = true
L["Buff(s)"] = true
L["Buff(s) from consumables"] = true
L["A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.\n\nBuffs can be specified by name, partial name, ID, or ID string.\n\n"] = true
L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = true
L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = true
L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = true
L["Expectations: "] = true
L["Rules: "] = true
L["This rule group contains %d |4rule:rules;"] = true
L["|cffffff00Buff:|r A buff that you should have on you.\n\n"] = true
L["|cffffff00Consumable:|r A buff that you gain through a consumable.\n\n"] = true
L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = true
L["Name matching mode"] = true
L["Partial"] = true
L["Exact"] = true
L["Starts with"] = true
L["Ends with"] = true
L["Party size"] = true
L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = true
L["10 player raid"] = true
L["25 player raid"] = true
L["Doesn't matter"] = true
L["Any raid"] = true
L["5 player party"] = true
L["Instance difficulty"] = true
L["Normal"] = true
L["Heroic"] = true
L["Any"] = true
L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = true
L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = true
L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = true
L["Warn when duration is less than"] = true
L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = true
L["Class"] = true
L["Specify which class contributes this buff."] = true
L["Hunter"] = true
L["Mage"] = true
L["Warrior"] = true
L["Rogue"] = true
L["Paladin"] = true
L["Druid"] = true
L["Death Knight"] = true
L["Warlock"] = true
L["Shaman"] = true
L["Priest"] = true
L["How many of that class"] = true
L["This buff will be required only when this many of the class is present in your group or raid."] = true
L["Talent tree"] = true
L["If this buff requires a specific talent, choose which tree the talent is located in."] = true
L["No talent required"] = true
L["Beast Mastery"] = true
L["Marksmanship"] = true
L["Survival"] = true
L["Assassination"] = true
L["Combat"] = true
L["Subtlety"] = true
L["Balance"] = true
L["Feral Combat"] = true
L["Restoration"] = true
L["Discipline"] = true
L["Holy"] = true
L["Shadow"] = true
L["Arms"] = true
L["Fury"] = true
L["Protection"] = true
L["Elemental"] = true
L["Enhancement"] = true
L["Blood"] = true
L["Frost"] = true
L["Unholy"] = true
L["Retribution"] = true
L["Arcane"] = true
L["Fire"] = true
L["Affliction"] = true
L["Demonology"] = true
L["Destruction"] = true
L["Talent index"] = true
L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = true
L["Flask/Elixir"] = true
L["Locked: "] = true
L["You can't delete this group because it has been locked by the author"] = true
L["Priority"] = true
L["Specifies how many of the class should be present before this buff is expected."] = true
L["N/A"] = true
L["1"] = true
L["2"] = true
L["3"] = true
L["4"] = true
--L["Priority (pet)"] = true
L["Advanced configuration options. This section controls all the rules that Energized uses."] = true
L["Enable pet buff checks"] = true
L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = true
L["Check for pet food"] = true
L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = true
L["Report this group"] = true
L["When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.\n\nGroups containing all consumable or inventory item rules will never be reported."] = true
L["Aspect"] = true
L["Aura"] = true
L["You entered:"] = true
L["Mage Armor"] = true
L["Elemental Shield"] = true
L["Mana Gem"] = true
L["Healthstone"] = true
L["Loading"] = true
L["Low"] = true
L["%d |4issue:issues;"] = true
L["You are energized!"] = true
L["You"] = true
L["Your pet"] = true
L["Unhappy"] = true
L["Missing"] = true
L["Pet"] = true
L["Inventory"] = true
L["Not equipped"] = true
L["Broken"] = true
L["Low durability"] = true
L["%d |4item:items;"] = true
L["Ammunition"] = true
L["Warn when ammunition is below"] = true
L["Energized will warn you when you have less ammunition than the selected value."] = true
L["(%d |4minute:minutes; ago)"] = true
L["Show minimap icon"] = true
L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = true
L["Feed text"] = true
L["Controls how the LDB feed's text label is shown."] = true
L["No text"] = true
L["Short"] = true
L["Verbose"] = true
L["Recent casters"] = true
L["Controls how recent casters are shown in the tooltip."] = true
L["Not shown"] = true
L["Caster name"] = true
L["Caster name and last seen time"] = true
L["Show yourself as recent caster"] = true
L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = true
L["After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.\n\nSet to 0 to disable this feature."] = true
L["Hide after being energized for"] = true
L["Buff/Consumable"] = true
L["Providers"] = true
L["Last Seen From"] = true
L["Left"] = true
L["Right"] = true
L["Secondary tooltip anchor"] = true
L["Controls which side the secondary tooltip anchors on."] = true
L["Click to open options"] = true
L["Evaluate if"] = true
L["Determines when Energized should evaluate this rule."] = true
L["Anyone has this talent"] = true
L["I have this talent"] = true
L["I don't have this talent"] = true
L["Unknown"] = true
L["Mainhand Weapon Buff"] = true
L["Offhand Weapon Buff"] = true
L["Check for weapon buffs"] = true
L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = true
L["Check Defensive Stance"] = true
L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = true
L["Keep scanning slowly in combat"] = true
L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = true
L["Check Improved Tracking"] = true
L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = true
L["Check Vigilance"] = true
L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = true
L["Warlock Armor"] = true
L["Shift-click to report to raid"] = true
L["Shift-click to report to party"] = true
L["Ctrl-click to report to whispers"] = true
L["Show tooltip hint"] = true
L["Enables the hint text at the bottom of the tooltip."] = true
L["Reporting"] = true
L["Enable reporting"] = true
L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = true
L["Report pet issues"] = true
L["When checked, Energized will include pet issues in reports."] = true
L["Report unexpected buffs"] = true
L["When checked, Energized will include unexpected buffs in reports."] = true
L["<Energized> for %s:"] = true
L[" is unexpected"] = true
L["Nothing to report!"] = true
L["Reporting is disabled"] = true
L["Click to disable for this session"] = true
L["Click to enable"] = true
L["(disabled)"] = true
L["Check for equipped slots"] = true
L["When checked, Energized will warn you if you don't have something equipped in every slot."] = true
L["Specify which class contributes this item, or none."] = true
L["Mount conditions"] = true
L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = true
L["Only when mounted"] = true
L["Only when not mounted"] = true
L["Scan throttle"] = true
L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = true
L["+ Stats/Resistances"] = true
L["Welcome to Energized r%d. Your Advanced tab has been reset."] = true
L["Enable when solo"] = true
L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = true
L["+ Attack Power"] = true
L["+ Mana Regen"] = true
L["Thrown Weapon Buff"] = true
L["Check for Throwing Weapon Enchant"] = true
L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = true
L["Presence"] = true
L["Comes from a pet"] = true
L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = true
L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = true
L["Show text for zero issues"] = true
L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = true
L["3 Soul Shards"] = true
L["Check Pet Food"] = true
L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = true
L["Pet Well Fed"] = true
L["BoK/MotW"] = true
L["BoM (Mana Regen)"] = true
L["Seal"] = true
L["Requires you to have cast Dark Intent on another player."] = true
L["Anyone has this specialization"] = true
L["I have this specialization"] = true
L["I don't have this specialization"] = true
L["If this buff requires a specific specialization, choose one."] = true
L["Specialization"] = true
L["Brewmaster"] = true
L["Mistweaver"] = true
L["Windwalker"] = true
L["Feral"] = true
L["Guardian"] = true
L["Monk"] = true
L["Stats"] = true
L["Stamina"] = true
L["Attack Power"] = true
L["Spell Power"] = true
L["Inner Will/Fire"] = true
L["Haste"] = true
L["Spell Haste"] = true
L["Critical Strike"] = true
L["Mastery"] = true
L["Lethal Poison"] = true
L["Non-Lethal Poison"] = true
L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = true
L["Expect 3 soul shards"] = true
L["Expect 4 soul shards"] = true
L["Soul Shards"] = true
L["Shale Spider"] = true
L["Imp"] = true
L["Silithid"] = true
L["Waterstrider"] = true
L["Hyena"] = true
L["Serpent"] = true
L["Hydra"] = true
L["Wolf"] = true
L["Devilsaur"] = true
L["Quilen"] = true
L["Waterstrider"] = true
L["Cat"] = true
L["Spirit Beast"] = true

















--[[
					The rest of this file is auto-generated using the WoWAce localization application.
					Please go to http://www.wowace.com/projects/energized/localization/ to update translations.
					Anyone with a WowAce/CurseForge account can edit them. 
]] 


L = LibStub("AceLocale-3.0"):NewLocale("Energized", "deDE")
if L then
L[" (...)"] = " (...)"
L["; "] = ";"
L["1"] = true
L["10 player raid"] = "10 Spieler Raid"
L["2"] = true
L["25 player raid"] = "25 Spieler Raid"
L["3"] = true
-- L["3 Soul Shards"] = ""
L["4"] = true
L["5 player party"] = "5 Spieler Gruppe"
L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "Eine durch Komma getrennte Liste von Buffs. Wenn der Spieler einen dieser Buffs hat, wird die Regel als erfüllt angesehen."
L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "Eine durch Komma getrennte Liste von Gegenständen. Wenn einer dieser Gegenstände im Inventar des Spielers gefunden wird, wird die Regel als erfüllt angesehen."
L["Add an item"] = "Gegenstand hinzufügen"
L["Advanced"] = "Erweitert"
L["Advanced configuration options. This section controls all the rules that Energized uses."] = "Erweiterte Konfigurationsoptionen. Diese Sektion kontrolliert alle Regeln die Energized verwendet."
L["Advanced Options"] = "Erweiterte Optionen"
L["Affliction"] = "Gebrechen"
L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = [=[Nach einer festgelegten Anzahl von Sekunden in denen du voll gebufft bist, werden das Symbol und der Text ausgeblendet. Der unten festgelegte Wert ist ungefähr; es kann einige Sekunden länger dauern bis tatsächlich ausgeblendet wird.

Auf 0 stellen um dieses Feature zu deaktivieren.]=]
L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = "Eine Liste an Gegenständen die du nicht angelegt haben solltest. Wähle einen Gegenstand und klicke Löschen um ihn zu entfernen."
-- L["Already defeated"] = ""
L["Always"] = "Immer"
L["Ammunition"] = "Munition"
L["Any"] = "Jeder"
-- L["Anyone has this specialization"] = ""
L["Anyone has this talent"] = "Jeder hat dieses Talent"
L["Any raid"] = "Jeder Schlachtzug"
L["Arcane"] = "Arkan"
L["Arena"] = true
L["Are you sure you want to delete |cffffff00%s|r?"] = "Bist du sicher, dass du |cffffff00%s|r löschen willst?"
L["Are you sure you want to delete this rule?"] = "Bist du sicher, dass du diese Regel löschen willst?"
L["Arms"] = "Waffen"
L["Aspect"] = "Aspekt"
L["Assassination"] = "Meucheln"
L["+ Attack Power"] = "+ Angriffskraft"
L["Attack Power"] = "Angriffskraft"
L["Aura"] = true
L["Balance"] = "Gleichgewicht"
L["Basic Options"] = "Allgemeine Optionen"
L["Battleground"] = "Schlachtfeld"
L["Beast Mastery"] = "Tierherrschaft"
L["Behavior"] = "Verhalten"
L["Blood"] = "Blut"
L["BoK/MotW"] = "SdK/MdW"
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
L["Broken"] = "defekt"
L["Buff"] = true
L["Buff/Consumable"] = "Buff/Verbrauchsgegenstand"
L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = "Buff-Regeln werden angewendet um zu prüfen dass du einen bestimmten Buff hast, wie Segen der Könige oder Aura des Volltreffers. Energized wird schauen ob jemand in deinem Schlachtzug diesen Buff mitbringt bevor es zu prüfen beginnt."
L["Buff(s)"] = true
L["Buff(s) from consumables"] = "Buff(s) von Verbrauchsgegenständen"
L["Caster name"] = "Caster Namen"
L["Caster name and last seen time"] = "Caster Namen und letzte Zeit gesehen"
-- L["Cat"] = ""
L["|cffff0000Disabled|r"] = "|cffff0000Deaktiviert|r"
L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = [=[|cffffff00Buff:|r Ein Buff, den du haben solltest.
]=]
L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = [=[|cffffff00Consumable:|r Ein Buff, den du durch einen Verbrauchsgegenstand erhältst.
]=]
L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "|cffffff00ID:|r Nummer. Verwende eine Zauber / Objekt-ID. Dies wird nur ein bestimmten Rang oder Version eines Zaubers erfassen. Zum Beispiel:"
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "|cffffff00Namen oder Teil des Namens: | r Klartext. Nutzen Sie alle oder einen Teil eines Zauber / item Namen in der Spache ihres Clients. Zum Beispiel:"
L["Check Defensive Stance"] = "Verteidigungshaltung prüfen"
L["Check for equipped slots"] = "Auf angelegte Slots prüfen"
L["Check for pet food"] = "Überprüfung für Begleiter Buff Food"
-- L["Check for Throwing Weapon Enchant"] = ""
L["Check for weapon buffs"] = "Auf Waffenverzauberungen überprüfen"
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
L["Check the Frequently Asked Questions at the Energized web site for more information."] = "Schaue in FAQs auf der Energized-Website für weitere Informationen."
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
L["Check Vigilance"] = "Wachsamkeit prüfen"
L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "Wählen Sie die Art der neuen Regel, um sie zu erstellen, klicken Sie dann auf Neue Regel unten"
L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = "Wählen Sie die Art der Regel, die sie erstellen möchten,aus dem Dropdown oben. Dann klicken Sie auf diese um eine neue Regel innerhalb dieser Regel zu erstellen."
L["Class"] = "Klasse"
L["Classic"] = "Klassisch"
L["Click to delete this rule group."] = "Klicken um diese Regel-Gruppe zu löschen."
L["Click to disable for this session"] = "Klicken um für die Sitzung zu deaktivieren"
L["Click to disable this rule group."] = "Klicken um diese Regel-Gruppe zu deaktivieren."
L["Click to edit this rule group."] = "Klicken um diese Regel-Gruppe zu editieren."
L["Click to enable"] = "Klicken zum Aktivieren"
L["Click to open options"] = "Klicken um die Optionen zu öffnen"
L["Combat"] = "Kampf"
L["Comes from a pet"] = "Kommt von einem Begleiter"
L["Consumable"] = "Verbrauchsgegenstand"
L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = "Verbrauchsmaterial Regeln werden verwendet, um sicherzustellen, dass du einen bestimmten buff, wie Satt! oder ein Fläschchen hast. Energized überprüft nicht andere Spieler im Raid auf diese, es erwartet diese von dir."
-- L["Controls how recent casters are shown in the tooltip."] = ""
L["Controls how the LDB feed's text label is shown."] = "Steuert, wie die LDB feed´s text Beschriftung angezeigt wird"
L["Controls which set of icons Energized uses to show your status."] = "Kontrolliert welches Set an Symbolen das Addon verwendet um deinen Status anzuzeigen."
-- L["Controls which side the secondary tooltip anchors on."] = ""
L["Create a New Rule"] = "Eine neue Regel erstellen"
L["Create a new rule group"] = "Eine neue Regel-Gruppe erstellen"
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
L["%d |4issue:issues;"] = "%d |4Problem:Probleme;"
L["%d |4item:items;"] = "%d |4Gegenstand:Gegenstände;"
L["(%d |4minute:minutes; ago)"] = "(vor %d |4Minute:Minuten;)"
L["Death Knight"] = "Todesritter"
L["Debug mode OFF"] = "Debug-Modus AUS"
L["Debug mode ON"] = "Debug-Modus EIN"
L["Default"] = "Standardwert"
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
L["Delete"] = "Löschen"
L["Deletes the currently selected item from the do-not-equip list."] = "Entfernt den aktuell ausgewählten Gegenstand von der Nicht-anlegen-Liste."
L["Delete this rule"] = "Diese Regel löschen"
L["Delete this rule group"] = "Diese Regel-Gruppe löschen"
L["Demonology"] = "Dämonologie"
L["Destruction"] = "Zerstörung"
L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = "Bestimmt, wie Energized  Zauber / Itemnamen abgleicht. Sie können dies auf \"Teilweise\", \"beginnt mit\" oder \"endet mit\" setzen, wenn nur ein Teil des Namens übereinstimmen soll. Dies ist zum Beispiel nützlich, um alle Arten von Flaschen durch die Eingabe von \"beginnt mit\" und \"Fläschchen\" abzugleichen."
L["Determines how many of this item you should have in your inventory. Typically set to 1."] = "Legt fest, wieviele von diesem Gegenstand in deinem Inventar sein sollen. Normalerweise auf 1 gesetzt."
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = "Legt den Schwierigkeitsgrad der Instanz fest, der für diese Regel benötigt werden soll. Wenn du dich in keiner Instanz befindest, wird diese Option ignoriert."
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
L["Determines when Energized should evaluate this rule."] = "Legt fest, wann Energized diese Regel auswerten soll." -- Needs review
L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = "Bestimmt, ob diese Regel angewendet werden soll, wenn du alleine bist (nicht in einer Gruppe oder Raid)"
-- L["Devilsaur"] = ""
L["Disable"] = "Deaktivieren"
L["(disabled)"] = "(deaktiviert)"
L["Discipline"] = "Disziplin"
L["Display Options"] = "Optionen anzeigen"
L["Doesn't matter"] = "Nicht von Bedeutung"
L["Do not equip"] = "Nicht anlegen"
L["Don't check"] = "Nicht überprüfen"
L["Druid"] = "Druide"
L["Durability"] = "Haltbarkeit"
L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = "Jede Regel besteht aus einer oder mehreren Regeln. Wenn eine Regel erfüllt ist, wird die gesamte Gruppe zufiedengestellt. Dies ist nützlich für die Kombination gleichwertiger Buffs oder Verbrauchsmaterialien."
L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = [=[Jede Regelgruppe in Energized definiert eine Reihe von Regeln. Wenn eine Regel in der Gruppe erfüllt ist, wird die gesamte Gruppe als erfüllt angesehen. Dadurch können Sie gleichwertige Stärkungszauber gruppieren.

So erstellen Sie eine neue Regel Gruppe, geben Sie einen Namen für Ihren neuen Regelgruppe, klicken Sie dann auf OK. Gruppen sind in der Regel nach ihrer beliebtesten buff (Well Fed) oder deren Folgen (+ Zaubermacht) benannt.]=]
L["Edit"] = "Editieren"
L["Elemental"] = "Elementar"
-- L["Elemental Shield"] = ""
L["Enable"] = "Aktivieren"
L["Enable inventory item warnings"] = "Warnungen für Inventar-Gegenstände aktivieren"
L["Enable low buff warnings"] = "Warnungen für auslaufende Buffs aktivieren"
L["Enable pet buff checks"] = "Aktiviere Überprüfung für Begleiter buffs"
L["Enable reporting"] = "Berichten aktivieren"
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
L["Enables the hint text at the bottom of the tooltip."] = "Aktiviert den Hinweistext unten am Tooltip." -- Needs review
L["Enable this group"] = "Diese Gruppe aktivieren"
L["Enable when solo"] = "Aktivieren wenn alleine"
L["Ends with"] = "Endet mit"
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
L["<Energized> for %s:"] = "<Energized> für %s:"
L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = "Energized wird sicherstellen, das du bestimmte Ausrüstungsgegenstände nicht angezogen hast. Du Kannst Ausrüstungsgegenstände löschen, indem du sie aus dem Dropdown auswählst und auf löschen klickst. Hinzufügen von Ausrüstungsgegenstände erfolgt durch die Eingabe der Ausrüstungsgegenstands-ID oder den Namen in das Textfeld unten eingeben und auf Okay klicken."
L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = "Energized wird nicht häufiger als diese Anzahl von Sekunden überprüfen. Es kann sein das die Überprüfung weniger ausgeführt wird, aber niemals mehr als diese Anzahl."
L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = "Energized wird dich warnen wenn die Restdauer dieses Buffs niedrig ist. Gib die Zeit in Sekunden ein."
L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = "Energized wird dich warnen wenn ein angelegter Gegenstand diesen Haltbarkeitsprozentsatz (oder niedriger) erreicht. Auf 0 setzen zum Deaktivieren."
L["Energized will warn you when you have less ammunition than the selected value."] = "Energized wird dich warnen wenn du weniger Munition als den ausgewählten Wert hast."
L["Enhancement"] = "Verstärkung"
L["Equipment"] = "Ausrüstung"
L["Error"] = "Fehler"
L["Evaluate if"] = "Auswerten wenn" -- Needs review
L["Exact"] = "Exakt"
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
L["Expectations: "] = "Außnahmen"
L["Expected"] = "Erwartet"
L["Expected for you"] = "für dich Erwartet " -- Needs review
L["Expected for you and your pet"] = "Erwartet für dich und deinen Begleiter"
L["Expected for your pet"] = "Erwartet für deinen Begleiter"
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "Wilder Kampf"
L["Fire"] = "Feuer"
L["Flask/Elixir"] = "Fläschchen/Elixir"
L["For me"] = "Für mich"
L["For my pet"] = "Für mein Pet"
L["Frost"] = true
L["Fury"] = "Furor"
L["General"] = "Allgemein"
L["Glass Circle"] = "Glass Kreis"
L["Glass Square"] = "Glass Viereck"
-- L["Guardian"] = ""
-- L["Haste"] = ""
L["Healthstone"] = "Gesundheitsstein"
L["Heroic"] = "Heroisch"
L["Hide after being energized for"] = "Verstecke, nachdem betätigt wurde"
L["Holy"] = "Heilig"
L["How many of that class"] = "Wieviele dieser Klasse"
L["Hunter"] = "Jäger"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
L["Icon set"] = "Symbol-Set"
-- L["I don't have this specialization"] = ""
L["I don't have this talent"] = "Ich habe dieses Talent nicht"
-- L["If this buff requires a specific specialization, choose one."] = ""
L["If this buff requires a specific talent, choose which tree the talent is located in."] = "Wenn dieser Buff ein spezielles Talent erfordert, wähle aus in welchem Talentbaum es sich befindet."
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = "Wenn du das Wachsamkeit-Talent hast, wird von dir erwartet dass du es auf einen nahen Spieler zauberst."
L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = "Wenn du ein Schutz-Krieger bist, wird von dir erwartet dass du dich in der Defensivhaltung befindest. Wenn nicht, wird eine andere Haltung erwartet."
-- L["I have this specialization"] = ""
L["I have this talent"] = "Ich habe dieses Talent"
-- L["Imp"] = ""
L["Indicates if this group should be expected or unexpected for you."] = "Zeigt an, ob diese Gruppe für dich erwartet oder unerwartet ist." -- Needs review
L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = "Zeigt an, ob diese Gruppe für deinen Begleiter erwartet oder unerwartet ist. Dies gilt nur für Begleiter Klassen." -- Needs review
-- L["Inner Will/Fire"] = ""
L["Instance difficulty"] = "Instanz-Schwierigkeit"
L["Inventory"] = "Inventar"
L["Inventory item"] = "Inventar-Gegenstand"
L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = "Inventar Gegenstands Regeln werden verwendet, um sicherzustellen, dass Sie einen bestimmten Gegenstand im Inventar haben. Dies wird typischerweise für Gesundheitssteine oder ähnliche Gegenstände verwendet."
-- L[" is unexpected"] = ""
L["Item %d"] = "Gegenstand %d"
L["Items"] = "Gegenstände"
L["Item(s)"] = "Gegenständ(e)"
-- L["Keep scanning slowly in combat"] = ""
L["Last Seen From"] = "Zuletzt gesehen von"
L["Left"] = "Links"
-- L["Lethal Poison"] = ""
L["Loaded (running in debug mode)"] = "Geladen (läuft im Debug-Modus)"
L["Loading"] = "Laden"
L["Locked: "] = "Gesperrt: "
L["Low"] = "Niedrig"
L["Low durability"] = "Niedrige Haltbarkeit"
L["Mage"] = "Magier"
L["Mage Armor"] = "Magische Rüstung"
L["Mainhand Weapon Buff"] = "Waffenverzauberung Haupthand"
L["Mana Gem"] = "Manaedelstein"
L["+ Mana Regen"] = "+ Manaregeneration"
L["Marksmanship"] = "Treffsicherheit"
-- L["Mastery"] = ""
L["Missing"] = "Fehlt"
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
L["N/A"] = true
L["Name"] = true
L["Name matching mode"] = "Namen Abgleich Modus"
L["New rule"] = "Neue Regel"
L["New rule type"] = "Neuer Regel-Typ"
L["None"] = "Kein"
-- L["Non-Lethal Poison"] = ""
L["Normal"] = true
L["No talent required"] = "Kein Talent nötig"
L["Not equipped"] = "Nicht angelegt"
L["No text"] = "Kein Text"
L["Nothing to report!"] = "Nichts zu berichten!"
L["Not shown"] = "Wird nicht angezeigt"
L["Offhand Weapon Buff"] = "Waffenverzauberung Nebenhand"
L["Only when mounted"] = "Nur wenn auf einem Reittier"
L["Only when not mounted"] = "Nur wenn auf keinem Reittier"
L["Paladin"] = true
L["Partial"] = "Teilweise"
L["Party"] = "Gruppe"
L["Party size"] = "Gruppengröße"
L["Pet"] = true
L["Pet mode should be"] = "Pet-Modus soll sein"
L["Pets"] = true
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "Priester"
L["Priority"] = "Priorität"
L["Profile modified, rebooting"] = "Profil modifiziert, starte neu"
L["Protection"] = "Schutz"
-- L["Providers"] = ""
L["Quantity"] = "Menge"
-- L["Quilen"] = ""
L["Raid"] = "Schlachtzug"
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
L["Reporting is disabled"] = "Berichten ist deaktiviert"
L["Report pet issues"] = "Begleiter-Probleme berichten" -- Needs review
L["Report this group"] = "Diese Gruppe berichten"
L["Report unexpected buffs"] = "Unerwartete Buffs berichten" -- Needs review
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "Wiederherstellung"
L["Retribution"] = "Vergeltung"
L["Right"] = "Rechts"
L["Rogue"] = "Schurke"
L["Rule Group Editor"] = "Gruppen-Regel-Editor"
L["Rule groups"] = "Regel-Gruppen"
L["Rules: "] = "Regeln: "
L["(running in debug mode)"] = "(läuft im Debug Modus)"
L["Scan throttle"] = "Abfrage drosseln"
L["Seal"] = "Siegel"
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "Schatten"
-- L["Shale Spider"] = ""
L["Shaman"] = "Schamane"
L["Shift-click to report to party"] = "Shift-Klick um an die Gruppe zu berichten"
L["Shift-click to report to raid"] = "Shift-Klick um an den Schlachtzug zu berichten"
L["Short"] = "Kurz"
L["Show minimap icon"] = "Minimap-Symbol anzeigen"
-- L["Show text for zero issues"] = ""
L["Show tooltip hint"] = "Tooltip-Hinweis anzeigen" -- Needs review
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
L["Solo"] = true
-- L["Soul Shards"] = ""
L["Special Cases"] = "Sonderfälle"
-- L["Specialization"] = ""
L["Specifies how many of the class should be present before this buff is expected."] = "Bestimmt wieviele von der Klasse anwesend sein sollten, bevor der Stärkungszauber erwartet wird"
L["Specify which class contributes this buff."] = "Lege fest welche Klasse diesen Buff beisteuert."
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
L["Star"] = "Stern"
L["Starts with"] = "Beginnt mit"
-- L["Stats"] = ""
L["+ Stats/Resistances"] = "+ Werte/Widerstände"
L["Subtlety"] = "Täuschung"
L["Survival"] = "Überleben"
L["Talent index"] = "Talent Index"
L["Talent tree"] = "Talentbaum"
L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = "Das Optionsmodul von Energized wurde deaktiviert. Loge dich aus und aktiviere es in deinem Addon-Menü." -- Needs review
L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = "Die Indexierung der erforderlichen Talente. Die Talent Indexierung wird von links nach rechts und von oben nach unten gezählt. Das Talent ganz links in der obersten Reihe ist die Nummer 1, direkt gefolgt von der Nummer Zwei, rechts daneben. Wenn es nicht mehr Talente auf dieser Reihe gibt, sind dann geht es mit der nächste Zeile, ganz links, weiter." -- Needs review
L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = "Die Regel Gruppe Namen. Gruppen sind in der Regel nach ihrem beliebtesten buff (Satt!) oder deren Effekte (+Zaubermacht) benannt."
L["This buff will be required only when this many of the class is present in your group or raid."] = "Dieser Buff wird nur benötigt wenn sich soviele dieser Klasse in deiner Gruppe oder Schlachtzug befinden."
L["This rule group contains %d |4rule:rules;"] = "Diese Regel-Gruppe beinhaltet %d |4Regel:Regeln;"
L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = "Dieser Regel-Typ wird verwendet um zu prüfen dass du einen bestimmten Buff auf jemand anders in deinem Schlachtzug verwendet hast. Beispiel: Wachsamkeit"
-- L["Thrown Weapon Buff"] = ""
L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = "Schaltet Minimap-Symbol für Energized ein. Verwende diese Option wenn du keine LDB-Anzeige hast."
L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = "Geben Sie einen Namen für deine neue Regel Gruppe ein, dann klicken Sie auf OK, um es zu erstellen. Gruppen sind in der Regel nach ihrer beliebtesten buff (Satt!) oder deren Folgen (+Zaubermacht) benannt."
L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = "Gib eine Ausrüstungsgegenstands-ID oder deren Namen ein und klick auf OK oder drücke die Eingabetaste. Der Ausrüstungsgegenstands wird der do-not-equip Liste hinzugefügt."
L["Unexpected"] = "Unerwartet"
L["Unexpected for you"] = "Fehlt dir"
L["Unexpected for you and your pet"] = "Fehlt dir und deinem Begleiter"
L["Unexpected for your pet"] = "Fehlt deinem Begleiter"
L["Unhappy"] = "Unglücklich"
L["Unholy"] = "Unheilig"
L["Unknown"] = "Unbekannt"
L["Unknown ID: "] = "Unbekannte ID: "
L["Unknown item: "] = "Unbekannter Gegenstand: "
L["Unknown item ID: "] = "Unbekannte Gegenstands-ID: "
L["Unknown spell: "] = "Unbekannter Zauber:"
L["Unknown spell ID: "] = "Unbekannte Zauber ID:"
L["Unspecified buff"] = "Unspezifizierter Buff"
L["Unspecified consumable"] = "Unspezifizierter Verbrauchsgegenstand"
L["Unspecified item"] = "Unspezifizierter Gegenstand"
L["Verbose"] = "Lang"
L["Warlock"] = "Hexenmeister"
-- L["Warlock Armor"] = ""
L["Warn when ammunition is below"] = "Warnen wenn die Munition unter diesem Wert ist"
L["Warn when durability reaches"] = "Warnen wenn die Haltbarkeit diesen Wert erreicht"
L["Warn when duration is less than"] = "Warnen wenn die Restdauer unter folgendem Wert liegt"
L["Warrior"] = "Krieger"
-- L["Waterstrider"] = ""
L["Welcome to Energized r%d. Your Advanced tab has been reset."] = "Willkommen zu Energized r%d. Dein Erweitert-Tab wurde zurückgesetzt."
L[ [=[  Well Fed

]=] ] = [=[ Satt!
]=]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = "Wenn markiert, wird Energized kontrollieren dass du vorübergehende Waffenverzauberungen auf deine Waffe angewendet hast. Betrifft nur bestimmte Klassen."
L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = "Wenn markiert, wird Energized kontrollieren ob dein Pet satt ist. Dies kann auch im erweiterten Bereich konfiguriert werden."
L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = "Wenn diese Option aktiviert ist, wird Energized überprüfen, ob alle Buffs, aus den für ihn definierten Regeln vorhanden sind. Du kannst alle Begleiter Überprüfungen durch Deaktivieren dieser Option deaktivieren."
L["When checked, Energized will include pet issues in reports."] = "Wenn markiert, wird Energized auch Probleme mit Begleitern berichten." -- Needs review
L["When checked, Energized will include unexpected buffs in reports."] = "Wenn markiert, wird Energized unerwartete Buffs in den Berichten inkludieren." -- Needs review
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
L["When checked, Energized will warn you if any of your buffs are running low."] = "Wenn markiert, wird Energized dich warnen wenn einer deiner Buffs bald ausläuft."
L["When checked, Energized will warn you if you don't have something equipped in every slot."] = "Wenn markiert, wird Energized dich warnen wenn du nicht in jedem Slot etwas angelegt hast."
L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = "Wenn markiert, warnt dich Energized wenn dir bestimmte Inventarsgegenstände (zB Gesundheitssteine) fehlen. Diese Gegenstände werden im erweiterten Bereich konfiguriert."
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
L["When I'm a tank"] = "Wenn ich Tank bin"
L["When I'm not a tank"] = "Wenn ich kein Tank bin"
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
L["You"] = "Du"
L["You are energized!"] = "Du bist voll gebufft!"
L["You can't delete this group because it has been locked by the author"] = "Du kannst diese Gruppe nicht löschen, weil sie vom Author gesperrt wurde."
L["You entered:"] = "Du hast eingegeben:"
L["Your pet"] = "Dein Begleiter"

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "esES")
if L then
L[" (...)"] = " (...)" -- Needs review
L["; "] = "; " -- Needs review
L["1"] = true -- Needs review
L["10 player raid"] = "raid de 10 jugadores" -- Needs review
L["2"] = true -- Needs review
L["25 player raid"] = "raid de 25 jugadores" -- Needs review
L["3"] = true -- Needs review
-- L["3 Soul Shards"] = ""
L["4"] = true -- Needs review
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
L["Affliction"] = "Aflicción"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
L["Arcane"] = "Arcano"
L["Arena"] = true -- Needs review
L["Are you sure you want to delete |cffffff00%s|r?"] = "¿Estás seguro de querer eliminar |cffffff00%s|r?" -- Needs review
L["Are you sure you want to delete this rule?"] = "¿Estás seguro de querer eliminar esta regla?" -- Needs review
L["Arms"] = "Armas"
L["Aspect"] = "Aspecto" -- Needs review
L["Assassination"] = "Asesinato"
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
L["Aura"] = true -- Needs review
L["Balance"] = "Equilibrio"
L["Basic Options"] = "Opciones Básicas" -- Needs review
L["Battleground"] = "Campo de Batalla" -- Needs review
L["Beast Mastery"] = "Dominio de bestias"
-- L["Behavior"] = ""
L["Blood"] = "Sangre"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
L["Buff"] = true -- Needs review
-- L["Buff/Consumable"] = ""
L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = "Las reglas de buff se usan para comprobar si tienes un buff específico aplicado, como Bendición de Reyes o Aura de Disparo Certero. Energized también verificará si alguien en tu banda es capaz de lanzar dicho buff." -- Needs review
L["Buff(s)"] = true -- Needs review
L["Buff(s) from consumables"] = "Buff(s) de consumibles" -- Needs review
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
L["Check for pet food"] = "Comprobar comida para mascotas" -- Needs review
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = [=[Elige qué tipo de nueva regla crear, a continuación haz clic en el botón de Nueva Regla abajo.

]=] -- Needs review
L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = "Elige que tipo de regla crear desde el menú desplegable de arriba, a continuación haz clic en ella para crear una nueva regla dentro de este grupo de reglas." -- Needs review
L["Class"] = "Clase" -- Needs review
L["Classic"] = "Clásico" -- Needs review
L["Click to delete this rule group."] = "Clic para eliminar este grupo de reglas." -- Needs review
-- L["Click to disable for this session"] = ""
L["Click to disable this rule group."] = "Clic para deshabilitar este grupo de reglas." -- Needs review
L["Click to edit this rule group."] = "Clic para editar este grupo de reglas." -- Needs review
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
L["Combat"] = "Combate"
-- L["Comes from a pet"] = ""
L["Consumable"] = "Consumible" -- Needs review
L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = "Las reglas de consumibles se usan para comprobar si tienes un buff específico como Bien Alimentado o un frasco. Energized no comprueba quien tiene el buff en tu raid; simplemente da por hecho que todo el mundo tiene un buff de consumibles." -- Needs review
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
L["Controls which set of icons Energized uses to show your status."] = "Controla qué conjunto de iconos usa Energized para mostrar tu estado." -- Needs review
-- L["Controls which side the secondary tooltip anchors on."] = ""
L["Create a New Rule"] = "Crear Nueva Regla" -- Needs review
L["Create a new rule group"] = "Crear nuevo grupo de reglas" -- Needs review
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "Caballero de la muerte"
L["Debug mode OFF"] = "Modo de Prueba OFF" -- Needs review
L["Debug mode ON"] = "Modo de Prueba ON" -- Needs review
L["Default"] = "Por defecto" -- Needs review
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
L["Delete"] = "Eliminar" -- Needs review
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
L["Delete this rule"] = "Eliminar esta regla" -- Needs review
L["Delete this rule group"] = "Eliminar este grupo de reglas" -- Needs review
L["Demonology"] = "Demonología"
L["Destruction"] = "Destrucción"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
L["Determines how many of this item you should have in your inventory. Typically set to 1."] = "Determina el número de unidades de este ítem que debes tener en tu inventario. El valor típico es 1." -- Needs review
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = "Determina qué dificultad de instancia se requiere para esta regla. Si no estás en una instancia, esta opción es ignorada." -- Needs review
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
L["Disable"] = "Deshabilitar" -- Needs review
-- L["(disabled)"] = ""
L["Discipline"] = "Disciplina"
L["Display Options"] = "Opciones de Visualización" -- Needs review
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "Druida"
L["Durability"] = "Durabilidad" -- Needs review
L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = "Cada grupo de reglas consiste en una o más reglas. Si alguna regla se cumple, el grupo entero queda satisfecho. Esto es util para combinar buffs o consumibles equivalentes." -- Needs review
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
L["Edit"] = "Editar" -- Needs review
L["Elemental"] = true
L["Elemental Shield"] = "Escudo Elemental" -- Needs review
L["Enable"] = "Habilitar" -- Needs review
L["Enable inventory item warnings"] = "Habilitar advertencias de ítems del inventario" -- Needs review
L["Enable low buff warnings"] = "Habilitar advertencias de buffs casi acabados" -- Needs review
L["Enable pet buff checks"] = "Habilitar la comprobación de buffs de mascotas" -- Needs review
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
L["Enable this group"] = "Habilitar este grupo" -- Needs review
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = "Energized te avisará si a este buff le queda poco tiempo. Introduce el tiempo en segundos." -- Needs review
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "Mejora"
L["Equipment"] = "Equipo" -- Needs review
L["Error"] = true -- Needs review
-- L["Evaluate if"] = ""
L["Exact"] = "Exacto" -- Needs review
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
L["Expectations: "] = "Expectativas:" -- Needs review
L["Expected"] = "Esperado" -- Needs review
L["Expected for you"] = "Se espera de ti" -- Needs review
L["Expected for you and your pet"] = "Se espera de ti y de tu mascota" -- Needs review
L["Expected for your pet"] = "Se espera de tu mascota" -- Needs review
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "Combate Feral"
L["Fire"] = "Fuego"
L["Flask/Elixir"] = "Frasco/Elixir" -- Needs review
L["For me"] = "De mi" -- Needs review
L["For my pet"] = "De mi mascota" -- Needs review
L["Frost"] = "Escarcha"
L["Fury"] = "Furia"
L["General"] = true -- Needs review
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
L["Heroic"] = "Heroico" -- Needs review
-- L["Hide after being energized for"] = ""
L["Holy"] = "Sagrado"
L["How many of that class"] = "Cuántos de esa clase" -- Needs review
L["Hunter"] = "Cazador"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
L["Icon set"] = "Conjunto de iconos" -- Needs review
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
L["If this buff requires a specific talent, choose which tree the talent is located in."] = "Si este buff requiere un talento específico, elija en qué árbol de talentos está." -- Needs review
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
L["Instance difficulty"] = "Dificultad de instancia" -- Needs review
-- L["Inventory"] = ""
L["Inventory item"] = "Ítem del inventario" -- Needs review
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
L["Mage"] = "Mago"
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
-- L["Mana Gem"] = ""
-- L["+ Mana Regen"] = ""
L["Marksmanship"] = "Puntería"
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
L["Paladin"] = "Paladín"
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "Sacerdote"
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
L["Protection"] = "Protección"
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "Restauración"
L["Retribution"] = "Reprensión"
-- L["Right"] = ""
L["Rogue"] = "Pícaro"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
L["(running in debug mode)"] = "(ejecutando en modo depuración)" -- Needs review
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "Sombras"
-- L["Shale Spider"] = ""
L["Shaman"] = "Chamán"
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "Sutileza"
L["Survival"] = "Supervivencia"
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "Profano"
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
L["Warlock"] = "Brujo"
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "Guerrero"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
L[ [=[  Well Fed

]=] ] = [=[  Bien Alimentado

]=] -- Needs review
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "esMX")
if L then
-- L[" (...)"] = ""
-- L["; "] = ""
-- L["1"] = ""
-- L["10 player raid"] = ""
-- L["2"] = ""
-- L["25 player raid"] = ""
-- L["3"] = ""
-- L["3 Soul Shards"] = ""
-- L["4"] = ""
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
L["Affliction"] = "Aflicción"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
L["Arcane"] = "Arcano"
-- L["Arena"] = ""
-- L["Are you sure you want to delete |cffffff00%s|r?"] = ""
-- L["Are you sure you want to delete this rule?"] = ""
L["Arms"] = "Armas"
-- L["Aspect"] = ""
L["Assassination"] = "Asesinato"
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
-- L["Aura"] = ""
L["Balance"] = true
-- L["Basic Options"] = ""
-- L["Battleground"] = ""
L["Beast Mastery"] = "Bestias"
-- L["Behavior"] = ""
L["Blood"] = "Sangre"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
-- L["Buff"] = ""
-- L["Buff/Consumable"] = ""
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
-- L["Buff(s)"] = ""
-- L["Buff(s) from consumables"] = ""
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
-- L["Check for pet food"] = ""
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
-- L["Class"] = ""
-- L["Classic"] = ""
-- L["Click to delete this rule group."] = ""
-- L["Click to disable for this session"] = ""
-- L["Click to disable this rule group."] = ""
-- L["Click to edit this rule group."] = ""
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
L["Combat"] = "Combate"
-- L["Comes from a pet"] = ""
-- L["Consumable"] = ""
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
-- L["Create a New Rule"] = ""
-- L["Create a new rule group"] = ""
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "Caballero de la muerte"
-- L["Debug mode OFF"] = ""
-- L["Debug mode ON"] = ""
-- L["Default"] = ""
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
-- L["Delete"] = ""
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
-- L["Delete this rule"] = ""
-- L["Delete this rule group"] = ""
L["Demonology"] = "Demonología"
L["Destruction"] = "Destrucción"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
-- L["Disable"] = ""
-- L["(disabled)"] = ""
L["Discipline"] = "Disciplina"
-- L["Display Options"] = ""
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "Druida"
-- L["Durability"] = ""
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
-- L["Edit"] = ""
L["Elemental"] = true
-- L["Elemental Shield"] = ""
-- L["Enable"] = ""
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
-- L["Enable pet buff checks"] = ""
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
-- L["Enable this group"] = ""
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "Mejora"
-- L["Equipment"] = ""
-- L["Error"] = ""
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "Combate feral"
L["Fire"] = "Fuego"
-- L["Flask/Elixir"] = ""
-- L["For me"] = ""
-- L["For my pet"] = ""
L["Frost"] = "Escarcha"
L["Fury"] = "Furia"
-- L["General"] = ""
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
-- L["Heroic"] = ""
-- L["Hide after being energized for"] = ""
L["Holy"] = "Sagrado"
-- L["How many of that class"] = ""
L["Hunter"] = "Cazador"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
-- L["Icon set"] = ""
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
L["Mage"] = "Mago"
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
-- L["Mana Gem"] = ""
-- L["+ Mana Regen"] = ""
L["Marksmanship"] = "Puntería"
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
L["Paladin"] = "Paladín"
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "Sacerdote"
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
L["Protection"] = "Protección"
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "Restauración"
L["Retribution"] = "Reprensión"
-- L["Right"] = ""
L["Rogue"] = "Pícaro"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
-- L["(running in debug mode)"] = ""
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "Sombra"
-- L["Shale Spider"] = ""
L["Shaman"] = "Chamán"
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "Sutileza"
L["Survival"] = "Supervivencia"
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "Profano"
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
L["Warlock"] = "Brujo"
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "Guerrero"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "frFR")
if L then
L[" (...)"] = true
L["; "] = true
L["1"] = true
L["10 player raid"] = "raid 10 joueurs"
L["2"] = true
L["25 player raid"] = "raid 25 joueurs"
L["3"] = true
L["3 Soul Shards"] = "3 Fragments d'âme"
L["4"] = true
L["5 player party"] = "groupe 5 joueurs"
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
L["Add an item"] = "Ajouter un objet"
L["Advanced"] = "Avancé"
L["Advanced configuration options. This section controls all the rules that Energized uses."] = "Options de configuration avancées. Cette section contrôle toutes les règles qu'utilise Energized."
L["Advanced Options"] = "Options avancées"
L["Affliction"] = true
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = "Une liste d'objets que vous ne devriez pas équiper. Sélectionnez un élément dans cette liste et cliquez sur Supprimer pour le retirer."
-- L["Already defeated"] = ""
L["Always"] = "Toujours"
L["Ammunition"] = "Munition"
L["Any"] = "Tout"
-- L["Anyone has this specialization"] = ""
L["Anyone has this talent"] = "Personne n'a ce talent"
L["Any raid"] = "Tout raid"
L["Arcane"] = true
L["Arena"] = "Arène"
L["Are you sure you want to delete |cffffff00%s|r?"] = "Êtes-vous certain de que vouloir supprimer |cffffff00%s|r ?"
L["Are you sure you want to delete this rule?"] = "Êtes-vous certain de que vouloir supprimer cette règle ?"
L["Arms"] = "Armes"
L["Aspect"] = true
L["Assassination"] = "Assassinat"
L["+ Attack Power"] = "+ Puissance d'Attaque"
-- L["Attack Power"] = ""
L["Aura"] = true
L["Balance"] = "Equilibre"
L["Basic Options"] = "Options de base"
L["Battleground"] = "Champ de bataille"
L["Beast Mastery"] = "Maîtrise des bêtes"
L["Behavior"] = "Comportement"
L["Blood"] = "Sang"
-- L["BoK/MotW"] = ""
L["BoM (Mana Regen)"] = "Bénédiction de puissance"
-- L["Brewmaster"] = ""
L["Broken"] = "Brisé"
L["Buff"] = true
L["Buff/Consumable"] = "Buff/Consommable"
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
L["Buff(s)"] = true
L["Buff(s) from consumables"] = "Buff(s) de consommables"
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
L["|cffff0000Disabled|r"] = "|cffff0000Désactivé|r"
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
L["Check Defensive Stance"] = "Vérifiez Posture défensive"
L["Check for equipped slots"] = "Recherchez des emplacements équipés"
L["Check for pet food"] = "Contrôler la nourriture pour familier"
-- L["Check for Throwing Weapon Enchant"] = ""
L["Check for weapon buffs"] = "Contrôler les buffs d'arme"
L["Check Improved Tracking"] = "Vérifier le suivi amélioré"
-- L["Check Pet Food"] = ""
L["Check the Frequently Asked Questions at the Energized web site for more information."] = "Consultez la Foire aux questions (Frequently asked questions) sur le site web Energized pour plus d'informations."
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
L["Check Vigilance"] = "Vérifiez Vigilance"
L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = [=[Choisissez le type de nouvelle règle a créer, puis cliquez sur Nouvelle règle ci-dessous.

]=]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
L["Class"] = "Classe"
L["Classic"] = "Classique"
L["Click to delete this rule group."] = "Cliquez pour supprimer ce groupe de règles."
L["Click to disable for this session"] = "Cliquez sur désactiver pour cette session"
L["Click to disable this rule group."] = "Cliquez sur désactiver ce groupe de règles."
L["Click to edit this rule group."] = "Cliquez pour modifier ce groupe de règles."
L["Click to enable"] = "Cliquez pour activer"
L["Click to open options"] = "Cliquez pour ouvrir les options"
L["Combat"] = true
L["Comes from a pet"] = "Provient d'un familier"
L["Consumable"] = "Consommables"
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
L["Controls which set of icons Energized uses to show your status."] = "Contrôle quel ensemble d'icônes Energized utilise pour afficher votre statut."
L["Controls which side the secondary tooltip anchors on."] = "Contrôle de quel coté est l'ancrage de l'info-bulle secondaire."
L["Create a New Rule"] = "Créer une nouvelle règle"
L["Create a new rule group"] = "Créer une nouvelle règle de groupe"
-- L["Critical Strike"] = ""
L["Ctrl-click to report to whispers"] = "Ctrl-clic pour signaler en wisp"
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "Chevalier de la mort"
L["Debug mode OFF"] = "Mode de débogage ARRÊT"
L["Debug mode ON"] = "Mode de débogage MARCHE"
L["Default"] = "Par défaut"
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
L["Delete"] = "Supprimer"
L["Deletes the currently selected item from the do-not-equip list."] = "Supprime l'objet actuellement sélectionné dans la liste ne-pas-équiper. "
L["Delete this rule"] = "Supprimer cette règle"
L["Delete this rule group"] = "Supprimer cette règle de groupe"
L["Demonology"] = "Démonologie"
L["Destruction"] = true
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
L["Determines how many of this item you should have in your inventory. Typically set to 1."] = "Détermine combien de cet objet vous devriez avoir dans votre inventaire. Généralement défini sur 1."
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = "Détermine la difficulté d'instance requise pour cette règle. Si vous n'êtes pas dans une instance, cette option est ignorée."
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
L["Determines when Energized should evaluate this rule."] = "Détermine quand Energized devrait évaluer cette règle."
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
L["Disable"] = "Désactiver"
L["(disabled)"] = "(désactivé)"
L["Discipline"] = true
L["Display Options"] = "Options d'affichage"
L["Doesn't matter"] = "Peu importe"
L["Do not equip"] = "Ne pas équiper"
L["Don't check"] = "Ne pas contrôler"
L["Druid"] = "Druide"
L["Durability"] = "Durabilité"
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
L["Edit"] = "Modifier"
L["Elemental"] = "Elémentaire"
L["Elemental Shield"] = "Bouclier élémentaire"
L["Enable"] = "Activer"
L["Enable inventory item warnings"] = "Activer les avertissements d'objet d'inventaire"
L["Enable low buff warnings"] = "Activer les avertissements de buff faible"
L["Enable pet buff checks"] = "Activer les contrôles de buff de familier"
L["Enable reporting"] = "Activer le rapport"
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
L["Enable this group"] = "Activer ce groupe"
L["Enable when solo"] = "Activé en solo"
L["Ends with"] = "Se termine par"
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
L["<Energized> for %s:"] = "<Energized> pour %s:"
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = "Energized vous avertit si la durée de ce buff est faible. Entrez le délai en secondes."
L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = "Energized vous avertira quand tout objets équipés atteindra ce pourcentage de durabilité ou inférieur. Mettre la valeur 0 pour désactiver."
L["Energized will warn you when you have less ammunition than the selected value."] = "Energized vous avertira lorsque vous avez moins de munitions que la valeur sélectionnée."
L["Enhancement"] = "Amélioration"
L["Equipment"] = "Équipement"
L["Error"] = "Erreur"
L["Evaluate if"] = "Évaluer si"
L["Exact"] = true
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
L["Expectations: "] = "Attentes : "
L["Expected"] = "Attendu"
L["Expected for you"] = "Attendu pour vous"
L["Expected for you and your pet"] = "Attendu pour vous et votre familier"
L["Expected for your pet"] = "Attendu pour votre familier"
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "Combat farouche"
L["Fire"] = "Feu"
L["Flask/Elixir"] = "Flacon/Élixir"
L["For me"] = "Pour moi"
L["For my pet"] = "Pour mon familier"
L["Frost"] = "Givre"
L["Fury"] = "Fureur"
L["General"] = "Général"
L["Glass Circle"] = "Cercle de verre"
L["Glass Square"] = "Carré de verre"
-- L["Guardian"] = ""
-- L["Haste"] = ""
L["Healthstone"] = "Pierre de soins"
L["Heroic"] = "Héroïque"
-- L["Hide after being energized for"] = ""
L["Holy"] = "Sacré"
-- L["How many of that class"] = ""
L["Hunter"] = "Chasseur"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
L["Icon set"] = "Jeu d'icônes"
-- L["I don't have this specialization"] = ""
L["I don't have this talent"] = "Je n'ai pas ce talent"
-- L["If this buff requires a specific specialization, choose one."] = ""
L["If this buff requires a specific talent, choose which tree the talent is located in."] = "Si ce buff requiert un talent spécifique, choisissez dans quel arbre situé le talent."
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
L["I have this talent"] = "J'ai ce talent"
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
L["Instance difficulty"] = "Difficulté de l'instance"
L["Inventory"] = "Inventaire"
L["Inventory item"] = "Objet d'inventaire"
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
L[" is unexpected"] = " est inapproprié"
L["Item %d"] = "Objet %d"
L["Items"] = "Objets"
L["Item(s)"] = "Objet(s)"
L["Keep scanning slowly in combat"] = "Conserver une analyse lente en combat"
-- L["Last Seen From"] = ""
L["Left"] = "Gauche"
-- L["Lethal Poison"] = ""
L["Loaded (running in debug mode)"] = "Chargé (s'exécute en mode de débogage) "
L["Loading"] = "Chargement"
L["Locked: "] = "Verrouillé : "
L["Low"] = "Bas"
L["Low durability"] = "Durabilité faible"
L["Mage"] = true
L["Mage Armor"] = "Armure de Mage"
L["Mainhand Weapon Buff"] = "Buff d'arme de main droite"
-- L["Mana Gem"] = ""
L["+ Mana Regen"] = "+ Régénération de Mana"
L["Marksmanship"] = "Précision"
-- L["Mastery"] = ""
L["Missing"] = "Manquant"
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
L["Mount conditions"] = "Conditions de monture"
L["N/A"] = true
L["Name"] = "Nom"
-- L["Name matching mode"] = ""
L["New rule"] = "Nouvelle règle"
L["New rule type"] = "Nouveau type de règle"
L["None"] = "Aucun"
-- L["Non-Lethal Poison"] = ""
L["Normal"] = true
L["No talent required"] = "Aucun talent requis"
L["Not equipped"] = "Pas équipés"
L["No text"] = "Aucun texte"
L["Nothing to report!"] = "Rien à rapporter !"
L["Not shown"] = "Ne pas montrer"
L["Offhand Weapon Buff"] = "Buff d'arme de main gauche"
L["Only when mounted"] = "Uniquement lorsque sur monture"
L["Only when not mounted"] = "Seulement lorsque pas sur monture"
L["Paladin"] = true
L["Partial"] = "Partiel"
L["Party"] = "Groupe"
L["Party size"] = "Taille du groupe"
L["Pet"] = "Familier"
L["Pet mode should be"] = "Le familier doit être"
L["Pets"] = "Familiers"
-- L["Pet Well Fed"] = ""
L["Presence"] = "Présence"
L["Priest"] = "Prêtre"
L["Priority"] = "Priorité"
L["Profile modified, rebooting"] = "Profile modifiés, réamorçage"
L["Protection"] = true
L["Providers"] = "Fournisseurs"
L["Quantity"] = "Quantité"
-- L["Quilen"] = ""
L["Raid"] = true
-- L["Recent casters"] = ""
L["Reporting"] = "Rapporter"
L["Reporting is disabled"] = "Les rapports sont désactivé."
L["Report pet issues"] = "Rapporter les problèmes de familier"
L["Report this group"] = "Rapporter ce groupe"
L["Report unexpected buffs"] = "Rapporter des buffs inappropriés"
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "Restauration"
L["Retribution"] = "Vindicte"
L["Right"] = "Droite"
L["Rogue"] = "Voleur"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
L["Rules: "] = "Règles: "
L["(running in debug mode)"] = "(exécution en mode débogage)"
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
L["Secondary tooltip anchor"] = "Ancrage de l'info-bulle secondaire"
-- L["Serpent"] = ""
L["Shadow"] = "Ombre"
-- L["Shale Spider"] = ""
L["Shaman"] = "Chaman"
L["Shift-click to report to party"] = "Maj + clic pour rapporter à la partie"
L["Shift-click to report to raid"] = "Maj + clic pour rapporter au raid"
L["Short"] = "Court"
L["Show minimap icon"] = "Afficher l'icône de la minicarte"
-- L["Show text for zero issues"] = ""
L["Show tooltip hint"] = "Afficher l'indicateur de l'info-bulle"
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
L["Solo"] = true
-- L["Soul Shards"] = ""
L["Special Cases"] = "Cas spéciaux"
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
L["Specify which class contributes this buff."] = "Spécifier quelle classe contribue à ce buff."
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
L["Star"] = "Étoile"
L["Starts with"] = "Commence par"
-- L["Stats"] = ""
L["+ Stats/Resistances"] = "+ Stats/Résistances"
L["Subtlety"] = "Finesse"
L["Survival"] = "Survie"
-- L["Talent index"] = ""
L["Talent tree"] = "Arbre des talents"
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = "Active une icône de minicarte pour Energized. Utilisez cette option si vous n'avez pas un addon d'affichage LDB."
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
L["Unexpected"] = "Inapproprié"
L["Unexpected for you"] = "Inapproprié pour vous"
L["Unexpected for you and your pet"] = "Inapproprié pour vous et votre familier"
L["Unexpected for your pet"] = "Inapproprié pour votre familier"
L["Unhappy"] = "Malheureux"
L["Unholy"] = "Impie"
L["Unknown"] = "Inconnu"
L["Unknown ID: "] = "ID inconnu : "
L["Unknown item: "] = "Objet inconnu : "
L["Unknown item ID: "] = "ID d'objet inconnu : "
L["Unknown spell: "] = "Sort inconnu : "
L["Unknown spell ID: "] = "ID de sort inconnu : "
L["Unspecified buff"] = "Buff inapproprié"
L["Unspecified consumable"] = "Consommable inapproprié"
L["Unspecified item"] = "Objet inapproprié"
-- L["Verbose"] = ""
L["Warlock"] = "Démoniste"
L["Warlock Armor"] = "Armure Démoniste"
L["Warn when ammunition is below"] = "Avertir lorsque les munitions sont inférieur à "
L["Warn when durability reaches"] = "Avertir lorsque la durabilité atteint"
L["Warn when duration is less than"] = "Avertir lorsque la durée est inférieure à"
L["Warrior"] = "Guerrier"
-- L["Waterstrider"] = ""
L["Welcome to Energized r%d. Your Advanced tab has been reset."] = "Bienvenue sur Energized r%d. Votre onglet avancé a été réinitialisé."
L[ [=[  Well Fed

]=] ] = [=[  Bien Nourris

]=]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = "Lorsque cochée, Energized va vérifier que vous avez appliqué l'enchantement temporaire sur votre arme. Ne s'applique qu'à certaines classes."
L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = "Lorsque cochée, Energized vérifie si votre familier est bien nourrit. Cela peut également être configuré dans la section Avancé."
L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = "Lorsque cochée, Energized vérifiera votre familier pour les buffs configurés dans la section règles. Vous pouvez désactiver les contrôles de tous les familiers en désactivant ceci."
L["When checked, Energized will include pet issues in reports."] = "Lorsque cochée, Energized inclura les problèmes de familier dans les rapports."
L["When checked, Energized will include unexpected buffs in reports."] = "Lorsque cochée, Energized inclura les buffs inappropriés dans les rapports. "
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
L["When checked, Energized will warn you if any of your buffs are running low."] = "Lorsque cochée, Energized vous avertira si un de vos buffs est bas."
L["When checked, Energized will warn you if you don't have something equipped in every slot."] = "Lorsque cochée, Energized vous avertira si vous n'avez pas quelque chose d'équipés dans chaque emplacements."
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
L["When I'm a tank"] = "Quand je suis tank"
L["When I'm not a tank"] = "Quand je ne suis pas tank"
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
L["You"] = "Vous"
L["You are energized!"] = "Vous êtes energized!"
L["You can't delete this group because it has been locked by the author"] = "Vous ne pouvez pas supprimer ce groupe car il a été verrouillé par l'auteur"
L["You entered:"] = "Vous avez entré:"
L["Your pet"] = "Votre familier"

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "koKR")
if L then
-- L[" (...)"] = ""
-- L["; "] = ""
-- L["1"] = ""
-- L["10 player raid"] = ""
-- L["2"] = ""
-- L["25 player raid"] = ""
-- L["3"] = ""
-- L["3 Soul Shards"] = ""
-- L["4"] = ""
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
L["Affliction"] = "고통"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
L["Arcane"] = "비전"
-- L["Arena"] = ""
-- L["Are you sure you want to delete |cffffff00%s|r?"] = ""
-- L["Are you sure you want to delete this rule?"] = ""
L["Arms"] = "무기"
-- L["Aspect"] = ""
L["Assassination"] = "암살"
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
-- L["Aura"] = ""
L["Balance"] = "조화"
-- L["Basic Options"] = ""
-- L["Battleground"] = ""
L["Beast Mastery"] = "야수"
-- L["Behavior"] = ""
L["Blood"] = "혈기"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
-- L["Buff"] = ""
-- L["Buff/Consumable"] = ""
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
-- L["Buff(s)"] = ""
-- L["Buff(s) from consumables"] = ""
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
-- L["Check for pet food"] = ""
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
-- L["Class"] = ""
-- L["Classic"] = ""
-- L["Click to delete this rule group."] = ""
-- L["Click to disable for this session"] = ""
-- L["Click to disable this rule group."] = ""
-- L["Click to edit this rule group."] = ""
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
L["Combat"] = "전투"
-- L["Comes from a pet"] = ""
-- L["Consumable"] = ""
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
-- L["Create a New Rule"] = ""
-- L["Create a new rule group"] = ""
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "죽음의 기사"
-- L["Debug mode OFF"] = ""
-- L["Debug mode ON"] = ""
-- L["Default"] = ""
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
-- L["Delete"] = ""
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
-- L["Delete this rule"] = ""
-- L["Delete this rule group"] = ""
L["Demonology"] = "악마"
L["Destruction"] = "파괴"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
-- L["Disable"] = ""
-- L["(disabled)"] = ""
L["Discipline"] = "수양"
-- L["Display Options"] = ""
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "드루이드"
-- L["Durability"] = ""
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
-- L["Edit"] = ""
L["Elemental"] = "정기"
-- L["Elemental Shield"] = ""
-- L["Enable"] = ""
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
-- L["Enable pet buff checks"] = ""
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
-- L["Enable this group"] = ""
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "고양"
-- L["Equipment"] = ""
-- L["Error"] = ""
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "야성"
L["Fire"] = "화염"
-- L["Flask/Elixir"] = ""
-- L["For me"] = ""
-- L["For my pet"] = ""
L["Frost"] = "냉기"
L["Fury"] = "분노"
-- L["General"] = ""
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
-- L["Heroic"] = ""
-- L["Hide after being energized for"] = ""
L["Holy"] = "신성"
-- L["How many of that class"] = ""
L["Hunter"] = "사냥꾼"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
-- L["Icon set"] = ""
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
L["Mage"] = "마법사"
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
-- L["Mana Gem"] = ""
-- L["+ Mana Regen"] = ""
L["Marksmanship"] = "사격"
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
L["Paladin"] = "성기사"
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "사제"
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
L["Protection"] = "방어"
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "복원"
L["Retribution"] = "징벌"
-- L["Right"] = ""
L["Rogue"] = "도적"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
-- L["(running in debug mode)"] = ""
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "암흑"
-- L["Shale Spider"] = ""
L["Shaman"] = "주술사"
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "잠행"
L["Survival"] = "생존"
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "부정"
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
L["Warlock"] = "흑마법사"
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "전사"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "ruRU")
if L then
-- L[" (...)"] = ""
-- L["; "] = ""
-- L["1"] = ""
-- L["10 player raid"] = ""
-- L["2"] = ""
-- L["25 player raid"] = ""
-- L["3"] = ""
-- L["3 Soul Shards"] = ""
-- L["4"] = ""
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
L["Affliction"] = "Колдовство"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
L["Arcane"] = "Тайная магия"
-- L["Arena"] = ""
-- L["Are you sure you want to delete |cffffff00%s|r?"] = ""
-- L["Are you sure you want to delete this rule?"] = ""
L["Arms"] = "Оружие"
-- L["Aspect"] = ""
L["Assassination"] = "Убийство"
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
-- L["Aura"] = ""
L["Balance"] = "Баланс"
-- L["Basic Options"] = ""
-- L["Battleground"] = ""
L["Beast Mastery"] = "Чувство зверя"
-- L["Behavior"] = ""
L["Blood"] = "Кровь"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
-- L["Buff"] = ""
-- L["Buff/Consumable"] = ""
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
-- L["Buff(s)"] = ""
-- L["Buff(s) from consumables"] = ""
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
-- L["Check for pet food"] = ""
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
-- L["Class"] = ""
-- L["Classic"] = ""
-- L["Click to delete this rule group."] = ""
-- L["Click to disable for this session"] = ""
-- L["Click to disable this rule group."] = ""
-- L["Click to edit this rule group."] = ""
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
L["Combat"] = "Бой"
-- L["Comes from a pet"] = ""
-- L["Consumable"] = ""
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
-- L["Create a New Rule"] = ""
-- L["Create a new rule group"] = ""
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "Рыцарь смерти"
-- L["Debug mode OFF"] = ""
-- L["Debug mode ON"] = ""
-- L["Default"] = ""
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
-- L["Delete"] = ""
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
-- L["Delete this rule"] = ""
-- L["Delete this rule group"] = ""
L["Demonology"] = "Демонология"
L["Destruction"] = "Разрушение"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
-- L["Disable"] = ""
-- L["(disabled)"] = ""
L["Discipline"] = "Послушание"
-- L["Display Options"] = ""
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "Друид"
-- L["Durability"] = ""
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
-- L["Edit"] = ""
L["Elemental"] = "Укрощение стихии"
-- L["Elemental Shield"] = ""
-- L["Enable"] = ""
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
-- L["Enable pet buff checks"] = ""
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
-- L["Enable this group"] = ""
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "Совершенствование"
-- L["Equipment"] = ""
-- L["Error"] = ""
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "Сила зверя"
L["Fire"] = "Огонь"
-- L["Flask/Elixir"] = ""
-- L["For me"] = ""
-- L["For my pet"] = ""
L["Frost"] = "Лед"
L["Fury"] = "Неистовство"
-- L["General"] = ""
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
-- L["Heroic"] = ""
-- L["Hide after being energized for"] = ""
L["Holy"] = "Свет"
-- L["How many of that class"] = ""
L["Hunter"] = "Охотник"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
-- L["Icon set"] = ""
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
L["Mage"] = "Маг"
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
-- L["Mana Gem"] = ""
-- L["+ Mana Regen"] = ""
L["Marksmanship"] = "Стрельба"
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
L["Paladin"] = "Паладин"
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "Жрец"
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
L["Protection"] = "Защита"
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "Исцеление"
L["Retribution"] = "Возмездие"
-- L["Right"] = ""
L["Rogue"] = "Разбойник"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
-- L["(running in debug mode)"] = ""
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "Темная магия"
-- L["Shale Spider"] = ""
L["Shaman"] = "Шаман"
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "Скрытность"
L["Survival"] = "Выживание"
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "Нечестивость"
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
L["Warlock"] = "Чернокнижник"
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "Воин"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "zhCN")
if L then
-- L[" (...)"] = ""
-- L["; "] = ""
-- L["1"] = ""
-- L["10 player raid"] = ""
-- L["2"] = ""
-- L["25 player raid"] = ""
-- L["3"] = ""
-- L["3 Soul Shards"] = ""
-- L["4"] = ""
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
L["Affliction"] = "痛苦"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
L["Arcane"] = "奥术"
-- L["Arena"] = ""
-- L["Are you sure you want to delete |cffffff00%s|r?"] = ""
-- L["Are you sure you want to delete this rule?"] = ""
L["Arms"] = "武器"
-- L["Aspect"] = ""
L["Assassination"] = "刺杀"
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
-- L["Aura"] = ""
L["Balance"] = "平衡"
-- L["Basic Options"] = ""
-- L["Battleground"] = ""
L["Beast Mastery"] = "野兽控制"
-- L["Behavior"] = ""
L["Blood"] = "鲜血"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
-- L["Buff"] = ""
-- L["Buff/Consumable"] = ""
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
-- L["Buff(s)"] = ""
-- L["Buff(s) from consumables"] = ""
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
-- L["Check for pet food"] = ""
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
-- L["Class"] = ""
-- L["Classic"] = ""
-- L["Click to delete this rule group."] = ""
-- L["Click to disable for this session"] = ""
-- L["Click to disable this rule group."] = ""
-- L["Click to edit this rule group."] = ""
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
L["Combat"] = "战斗"
-- L["Comes from a pet"] = ""
-- L["Consumable"] = ""
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
-- L["Create a New Rule"] = ""
-- L["Create a new rule group"] = ""
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "死亡骑士"
-- L["Debug mode OFF"] = ""
-- L["Debug mode ON"] = ""
-- L["Default"] = ""
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
-- L["Delete"] = ""
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
-- L["Delete this rule"] = ""
-- L["Delete this rule group"] = ""
L["Demonology"] = "恶魔学识"
L["Destruction"] = "毁灭"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
-- L["Disable"] = ""
-- L["(disabled)"] = ""
L["Discipline"] = "戒律"
-- L["Display Options"] = ""
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "德鲁伊"
-- L["Durability"] = ""
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
-- L["Edit"] = ""
L["Elemental"] = "元素战斗"
-- L["Elemental Shield"] = ""
-- L["Enable"] = ""
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
-- L["Enable pet buff checks"] = ""
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
-- L["Enable this group"] = ""
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "增强"
-- L["Equipment"] = ""
-- L["Error"] = ""
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "野性战斗"
L["Fire"] = "火焰"
-- L["Flask/Elixir"] = ""
-- L["For me"] = ""
-- L["For my pet"] = ""
L["Frost"] = "冰霜"
L["Fury"] = "狂怒"
-- L["General"] = ""
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
-- L["Heroic"] = ""
-- L["Hide after being energized for"] = ""
L["Holy"] = "神圣"
-- L["How many of that class"] = ""
L["Hunter"] = "猎人"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
-- L["Icon set"] = ""
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
L["Mage"] = "法师"
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
L["Mana Gem"] = "法力宝石"
-- L["+ Mana Regen"] = ""
L["Marksmanship"] = "射击"
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
L["Paladin"] = "圣骑士"
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
L["Priest"] = "牧师"
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
L["Protection"] = "防护"
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
L["Restoration"] = "恢复"
L["Retribution"] = "惩戒"
-- L["Right"] = ""
L["Rogue"] = "潜行者"
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
-- L["(running in debug mode)"] = ""
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "暗影魔法"
-- L["Shale Spider"] = ""
L["Shaman"] = "萨满祭司"
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "敏锐"
L["Survival"] = "生存技能"
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "邪恶"
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
L["Warlock"] = "术士"
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "战士"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "zhTW")
if L then
L[" (...)"] = " (...)"
L["; "] = "; "
L["1"] = true
L["10 player raid"] = "10人團隊"
L["2"] = true
L["25 player raid"] = "25人團隊"
L["3"] = true
L["3 Soul Shards"] = "3靈魂裂片"
L["4"] = true
L["5 player party"] = "5人隊伍"
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
L["Add an item"] = "新增一個物品"
L["Advanced"] = "進階"
L["Advanced configuration options. This section controls all the rules that Energized uses."] = "進階配置選項。這部分控制Energized使用的所有的規則。"
L["Advanced Options"] = "進階選項"
L["Affliction"] = "痛苦"
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
L["Always"] = "總是"
L["Ammunition"] = "彈藥"
L["Any"] = "任何"
-- L["Anyone has this specialization"] = ""
L["Anyone has this talent"] = "任何人有這個天賦"
L["Any raid"] = "任何團隊"
L["Arcane"] = "秘法"
L["Arena"] = "競技場"
L["Are you sure you want to delete |cffffff00%s|r?"] = "你確定要刪除|cffffff00%s|r?"
L["Are you sure you want to delete this rule?"] = "你確定要刪除此規則?"
L["Arms"] = "武器"
L["Aspect"] = "守護"
L["Assassination"] = "刺殺"
L["+ Attack Power"] = "+攻擊強度"
-- L["Attack Power"] = ""
L["Aura"] = "光環"
L["Balance"] = "平衡"
L["Basic Options"] = "基本選項"
L["Battleground"] = "戰場"
L["Beast Mastery"] = "野獸控制"
-- L["Behavior"] = ""
L["Blood"] = "血魄"
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
L["Buff"] = "增益狀態"
L["Buff/Consumable"] = "增益狀態/消耗品"
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
L["Buff(s)"] = "增益狀態"
L["Buff(s) from consumables"] = "來自消耗品的增益狀態"
L["Caster name"] = "施法者名稱"
L["Caster name and last seen time"] = "施法者名稱以及最後看到他的時間"
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
L["Check Defensive Stance"] = "檢查防禦姿態"
L["Check for equipped slots"] = "檢查裝備插槽"
L["Check for pet food"] = "寵物食物檢查"
L["Check for Throwing Weapon Enchant"] = "檢查投擲武器附魔"
L["Check for weapon buffs"] = "檢查武器增益狀態"
L["Check Improved Tracking"] = "檢查強化追蹤"
L["Check Pet Food"] = "寵物食物檢查"
L["Check the Frequently Asked Questions at the Energized web site for more information."] = "檢查常見問題，請在Energized網站獲取更多信息。"
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
L["Check Vigilance"] = "檢查戒備守護"
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
L["Class"] = "職業"
L["Classic"] = "基本"
L["Click to delete this rule group."] = "點擊刪除此規則群組"
-- L["Click to disable for this session"] = ""
L["Click to disable this rule group."] = "點擊停用此規則群組"
L["Click to edit this rule group."] = "點擊編輯此規則群組"
L["Click to enable"] = "點擊啟用"
L["Click to open options"] = "點擊開啟選項"
L["Combat"] = "戰鬥"
L["Comes from a pet"] = "來自一個寵物"
L["Consumable"] = "消耗品"
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
L["Create a New Rule"] = "創建一個新規則"
L["Create a new rule group"] = "創建一個新的規則群組"
-- L["Critical Strike"] = ""
L["Ctrl-click to report to whispers"] = "Ctrl-點擊 報告至悄悄話"
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
L["Death Knight"] = "死亡騎士"
L["Debug mode OFF"] = "除錯模式關閉"
L["Debug mode ON"] = "除錯模式開啟"
L["Default"] = "預設"
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
L["Delete"] = "刪除"
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
L["Delete this rule"] = "刪除此規則"
L["Delete this rule group"] = "刪除此規則群組"
L["Demonology"] = "惡魔學識"
L["Destruction"] = "毀滅"
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
L["Disable"] = "停用"
L["(disabled)"] = "(已停用)"
L["Discipline"] = "戒律"
L["Display Options"] = "顯示選項"
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
L["Druid"] = "德魯伊"
L["Durability"] = "耐久度"
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
L["Edit"] = "編輯"
L["Elemental"] = "元素"
L["Elemental Shield"] = "元素之盾"
L["Enable"] = "啟用"
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
L["Enable pet buff checks"] = "啟用寵物增益狀態檢查"
L["Enable reporting"] = "啟用報告"
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
L["Enable this group"] = "啟用此群組"
L["Enable when solo"] = "當單獨時啟用"
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
L["Enhancement"] = "增強"
L["Equipment"] = "裝備"
L["Error"] = "錯誤"
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
L["Feral Combat"] = "野性戰鬥"
L["Fire"] = "火焰"
L["Flask/Elixir"] = "精鍊藥劑/藥劑"
-- L["For me"] = ""
-- L["For my pet"] = ""
L["Frost"] = "冰霜"
L["Fury"] = "狂怒"
L["General"] = "一般"
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
L["Healthstone"] = "治療石"
L["Heroic"] = "英雄"
-- L["Hide after being energized for"] = ""
L["Holy"] = "神聖"
L["How many of that class"] = "這個職業有多少"
L["Hunter"] = "獵人"
-- L["Hydra"] = ""
-- L["Hyena"] = ""
L["Icon set"] = "圖示設置"
-- L["I don't have this specialization"] = ""
L["I don't have this talent"] = "我沒有這個天賦"
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
L["I have this talent"] = "我有這個天賦"
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
L["Item %d"] = "物品 %d"
-- L["Items"] = ""
-- L["Item(s)"] = ""
L["Keep scanning slowly in combat"] = "在戰鬥中保持緩慢掃描"
-- L["Last Seen From"] = ""
L["Left"] = "左"
-- L["Lethal Poison"] = ""
L["Loaded (running in debug mode)"] = "已載入 (在除錯模式下運行)"
L["Loading"] = "載入中"
L["Locked: "] = "已鎖定:"
L["Low"] = "低"
L["Low durability"] = "低耐久度"
L["Mage"] = "法師"
L["Mage Armor"] = "法師護甲"
L["Mainhand Weapon Buff"] = "主手武器增益狀態"
L["Mana Gem"] = "法力寶石"
L["+ Mana Regen"] = "+法力恢復"
L["Marksmanship"] = "射擊"
-- L["Mastery"] = ""
L["Missing"] = "丟失" -- Needs review
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
L["Mount conditions"] = "掛載條件" -- Needs review
L["N/A"] = true
L["Name"] = "名稱"
L["Name matching mode"] = "名稱匹配模式"
L["New rule"] = "新規則"
L["New rule type"] = "新規則類型"
L["None"] = "無"
-- L["Non-Lethal Poison"] = ""
L["Normal"] = "普通"
L["No talent required"] = "無天賦要求"
L["Not equipped"] = "不具備"
L["No text"] = "無文字"
L["Nothing to report!"] = "沒有什麼可報告的!"
L["Not shown"] = "不顯示"
L["Offhand Weapon Buff"] = "副手武器增益狀態"
L["Only when mounted"] = "僅在坐騎上"
L["Only when not mounted"] = "僅不在坐騎上"
L["Paladin"] = "聖騎士"
L["Partial"] = "部分的" -- Needs review
L["Party"] = "隊伍"
L["Party size"] = "隊伍尺寸"
L["Pet"] = "寵物"
-- L["Pet mode should be"] = ""
L["Pets"] = "寵物"
-- L["Pet Well Fed"] = ""
L["Presence"] = "存在"
L["Priest"] = "牧師"
-- L["Priority"] = ""
L["Profile modified, rebooting"] = "設定檔修改，重新啟動"
L["Protection"] = "防護"
-- L["Providers"] = ""
L["Quantity"] = "數量"
-- L["Quilen"] = ""
L["Raid"] = "團隊"
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
L["Requires you to have cast Dark Intent on another player."] = "需要你有施放黑暗意圖的另一個玩家。"
L["Restoration"] = "恢復"
L["Retribution"] = "懲戒"
L["Right"] = "右"
L["Rogue"] = "盜賊"
L["Rule Group Editor"] = "規則群組編輯"
L["Rule groups"] = "規則群組"
L["Rules: "] = "規則: "
L["(running in debug mode)"] = "(在除錯模式下運行)"
-- L["Scan throttle"] = ""
L["Seal"] = "聖印" -- Needs review
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
L["Shadow"] = "暗影"
-- L["Shale Spider"] = ""
L["Shaman"] = "薩滿"
L["Shift-click to report to party"] = "Shift-點擊 報告至隊伍"
L["Shift-click to report to raid"] = "Shift-點擊 報告至團隊"
-- L["Short"] = ""
L["Show minimap icon"] = "顯示小地圖圖示"
-- L["Show text for zero issues"] = ""
L["Show tooltip hint"] = "顯示工具提示的提示"
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
L["Solo"] = "單獨"
-- L["Soul Shards"] = ""
L["Special Cases"] = "特殊情況"
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
L["Subtlety"] = "敏銳"
L["Survival"] = "生存"
-- L["Talent index"] = ""
L["Talent tree"] = "天賦樹"
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
L["Unholy"] = "穢邪"
L["Unknown"] = "未知"
L["Unknown ID: "] = "未知ID"
L["Unknown item: "] = "未知物品"
L["Unknown item ID: "] = "未知物品ID"
L["Unknown spell: "] = "未知法術"
L["Unknown spell ID: "] = "未知法術ID"
L["Unspecified buff"] = "未指定增益狀態"
L["Unspecified consumable"] = "未指定消耗品"
L["Unspecified item"] = "未指定物品"
L["Verbose"] = "詳細資訊"
L["Warlock"] = "術士"
L["Warlock Armor"] = "術士護甲"
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
L["Warrior"] = "戰士"
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
L["When I'm a tank"] = "當我是一個坦克"
L["When I'm not a tank"] = "當我不是一個坦克"
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
L["You"] = "你"
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
L["Your pet"] = "你的寵物"

end

L = LibStub("AceLocale-3.0"):NewLocale("Energized", "ptBR")
if L then
-- L[" (...)"] = ""
-- L["; "] = ""
-- L["1"] = ""
-- L["10 player raid"] = ""
-- L["2"] = ""
-- L["25 player raid"] = ""
-- L["3"] = ""
-- L["3 Soul Shards"] = ""
-- L["4"] = ""
-- L["5 player party"] = ""
--[==[ L[ [=[A comma-separated list of buffs. If the player has any of these buffs, the rule is considered to be satisfied.

Buffs can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
--[==[ L[ [=[A comma-separated list of items. If any of these items are found in the player's inventory, the rule is considered to be satisfied.

Items can be specified by name, partial name, ID, or ID string.

]=] ] = "" ]==]
-- L["Add an item"] = ""
-- L["Advanced"] = ""
-- L["Advanced configuration options. This section controls all the rules that Energized uses."] = ""
-- L["Advanced Options"] = ""
-- L["Affliction"] = ""
--[==[ L[ [=[After a specified number of seconds of being energized (fully buffed), the icon and text will be hidden. The value specified below is approximate; it might take a few seconds longer to actually hide.

Set to 0 to disable this feature.]=] ] = "" ]==]
-- L["A list of items that you should not have equipped. Pick an item from this list and click Delete to remove it."] = ""
-- L["Already defeated"] = ""
-- L["Always"] = ""
-- L["Ammunition"] = ""
-- L["Any"] = ""
-- L["Anyone has this specialization"] = ""
-- L["Anyone has this talent"] = ""
-- L["Any raid"] = ""
-- L["Arcane"] = ""
-- L["Arena"] = ""
-- L["Are you sure you want to delete |cffffff00%s|r?"] = ""
-- L["Are you sure you want to delete this rule?"] = ""
-- L["Arms"] = ""
-- L["Aspect"] = ""
-- L["Assassination"] = ""
-- L["+ Attack Power"] = ""
-- L["Attack Power"] = ""
-- L["Aura"] = ""
-- L["Balance"] = ""
-- L["Basic Options"] = ""
-- L["Battleground"] = ""
-- L["Beast Mastery"] = ""
-- L["Behavior"] = ""
-- L["Blood"] = ""
-- L["BoK/MotW"] = ""
-- L["BoM (Mana Regen)"] = ""
-- L["Brewmaster"] = ""
-- L["Broken"] = ""
-- L["Buff"] = ""
-- L["Buff/Consumable"] = ""
-- L["Buff rules are used to check that you have a specific buff, such as Blessing of Kings or Trueshot Aura. Energized will verify that someone in your raid is capable of casting the buff before checking for it."] = ""
-- L["Buff(s)"] = ""
-- L["Buff(s) from consumables"] = ""
-- L["Caster name"] = ""
-- L["Caster name and last seen time"] = ""
-- L["Cat"] = ""
-- L["|cffff0000Disabled|r"] = ""
--[==[ L[ [=[|cffffff00Buff:|r A buff that you should have on you.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00Consumable:|r A buff that you gain through a consumable.

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID:|r Number. Use a spell/item ID. This will only match one particular rank or version of a spell. For example:

]=] ] = "" ]==]
--[==[ L[ [=[|cffffff00ID string:|r Number surrounded by quotes ("). Use a spell/item ID and put it in double quotation marks ("). Energized will ask the server for the name that belongs to the ID. It will then use that localized name for all of it's scanning. This lets you simultaneously match all types of Well Fed, all ranks of Blessing of Might, or all types of Fel Healthstone, without having to know each and every separate ID. For example:

]=] ] = "" ]==]
-- L["|cffffff00Inventory item:|r Verifies that you have a certain item in your inventory, like a healthstone."] = ""
--[==[ L[ [=[|cffffff00Name or partial name:|r Plain text. Use all or part of a spell/item name in your client's native language. For example:

]=] ] = "" ]==]
-- L["Check Defensive Stance"] = ""
-- L["Check for equipped slots"] = ""
-- L["Check for pet food"] = ""
-- L["Check for Throwing Weapon Enchant"] = ""
-- L["Check for weapon buffs"] = ""
-- L["Check Improved Tracking"] = ""
-- L["Check Pet Food"] = ""
-- L["Check the Frequently Asked Questions at the Energized web site for more information."] = ""
-- L["Check this to tell Energized that the buff is coming from the player's pet. When this is checked, Energized won't require the buff just because the class is in the raid, but the buff will still satisfy the rule group if it is present."] = ""
-- L["Check Vigilance"] = ""
--[==[ L[ [=[Choose which type of new rule to create, then click New rule below.

]=] ] = "" ]==]
-- L["Choose which type of rule to create from the drop down above, then click this to create a new rule within this rule group."] = ""
-- L["Class"] = ""
-- L["Classic"] = ""
-- L["Click to delete this rule group."] = ""
-- L["Click to disable for this session"] = ""
-- L["Click to disable this rule group."] = ""
-- L["Click to edit this rule group."] = ""
-- L["Click to enable"] = ""
-- L["Click to open options"] = ""
-- L["Combat"] = ""
-- L["Comes from a pet"] = ""
-- L["Consumable"] = ""
-- L["Consumable rules are used to check that you have a specific buff, such as Well Fed or a flask. Energized doesn't check who else is in your raid for these; it expects you to always have consumable buffs."] = ""
-- L["Controls how recent casters are shown in the tooltip."] = ""
-- L["Controls how the LDB feed's text label is shown."] = ""
-- L["Controls which set of icons Energized uses to show your status."] = ""
-- L["Controls which side the secondary tooltip anchors on."] = ""
-- L["Create a New Rule"] = ""
-- L["Create a new rule group"] = ""
-- L["Critical Strike"] = ""
-- L["Ctrl-click to report to whispers"] = ""
-- L["%d |4issue:issues;"] = ""
-- L["%d |4item:items;"] = ""
-- L["(%d |4minute:minutes; ago)"] = ""
-- L["Death Knight"] = ""
-- L["Debug mode OFF"] = ""
-- L["Debug mode ON"] = ""
-- L["Default"] = ""
--[==[ L[ [=[Defines special circumstances when this group should apply.

]=] ] = "" ]==]
-- L["Delete"] = ""
-- L["Deletes the currently selected item from the do-not-equip list."] = ""
-- L["Delete this rule"] = ""
-- L["Delete this rule group"] = ""
-- L["Demonology"] = ""
-- L["Destruction"] = ""
-- L["Determines how Energized should match spell/item names. You can set this to Partial, Starts With, or Ends With if you want to match just part of a name. This is useful, for example, to match all types of flasks by entering \"Flask of\" and selecting Starts With."] = ""
-- L["Determines how many of this item you should have in your inventory. Typically set to 1."] = ""
-- L["Determines how many soul shards Energized should expect, if any. This check is only performed when you are not in combat."] = ""
-- L["Determines if the rule should be evaluated only when mounted, only when not mounted, or always."] = ""
-- L["Determines the instance difficulty that this rule should be required for. If you're not in an instance, this option is ignored."] = ""
-- L["Determines the type of party that this rule should be required for. You can have it apply only to 5 player parties, all raids, or a specific raid size. If you want the rule to always apply, select \"Doesn't matter\"."] = ""
-- L["Determines when Energized should evaluate this rule."] = ""
-- L["Determines whether this rule should be applied when you're solo (not in a party or raid)."] = ""
-- L["Devilsaur"] = ""
-- L["Disable"] = ""
-- L["(disabled)"] = ""
-- L["Discipline"] = ""
-- L["Display Options"] = ""
-- L["Doesn't matter"] = ""
-- L["Do not equip"] = ""
-- L["Don't check"] = ""
-- L["Druid"] = ""
-- L["Durability"] = ""
-- L["Each rule group consists of one or more rules. If any rule is satisfied, the entire group is satisfied. This is useful for combining equivalent buffs or consumables."] = ""
--[==[ L[ [=[Each rule group in Energized defines a set of rules. If any rule in the group is met, the entire group is considered to be met. This lets you group together equivalent buffs.

To create a new rule group, type a name for your new rule group, then click Okay. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower).]=] ] = "" ]==]
-- L["Edit"] = ""
-- L["Elemental"] = ""
-- L["Elemental Shield"] = ""
-- L["Enable"] = ""
-- L["Enable inventory item warnings"] = ""
-- L["Enable low buff warnings"] = ""
-- L["Enable pet buff checks"] = ""
-- L["Enable reporting"] = ""
-- L["Enables click to report functionality in Energized. Turn this off if you don't want to accidentally report anything."] = ""
-- L["Enables the hint text at the bottom of the tooltip."] = ""
-- L["Enable this group"] = ""
-- L["Enable when solo"] = ""
-- L["Ends with"] = ""
-- L["Energized can check your pet's stance to make sure it is correct."] = ""
-- L["<Energized> for %s:"] = ""
-- L["Energized will make sure you don't have certain items equipped. You can delete items from the list by picking the item in the drop down and clicking Delete. Add items by typing in the item ID or name in the text box below and clicking Okay."] = ""
-- L["Energized will scan no more frequently than this number of seconds. It may not scan this frequently, but it will never scan more frequently than this."] = ""
-- L["Energized will warn you if this buff's duration is low. Enter the time in seconds."] = ""
-- L["Energized will warn you when any equipped items reach this percentage of durability or lower. Set to 0 to disable."] = ""
-- L["Energized will warn you when you have less ammunition than the selected value."] = ""
-- L["Enhancement"] = ""
-- L["Equipment"] = ""
-- L["Error"] = ""
-- L["Evaluate if"] = ""
-- L["Exact"] = ""
-- L["Expect 3 soul shards"] = ""
-- L["Expect 4 soul shards"] = ""
-- L["Expectations: "] = ""
-- L["Expected"] = ""
-- L["Expected for you"] = ""
-- L["Expected for you and your pet"] = ""
-- L["Expected for your pet"] = ""
-- L["Feed text"] = ""
-- L["Feral"] = ""
-- L["Feral Combat"] = ""
-- L["Fire"] = ""
-- L["Flask/Elixir"] = ""
-- L["For me"] = ""
-- L["For my pet"] = ""
-- L["Frost"] = ""
-- L["Fury"] = ""
-- L["General"] = ""
-- L["Glass Circle"] = ""
-- L["Glass Square"] = ""
-- L["Guardian"] = ""
-- L["Haste"] = ""
-- L["Healthstone"] = ""
-- L["Heroic"] = ""
-- L["Hide after being energized for"] = ""
-- L["Holy"] = ""
-- L["How many of that class"] = ""
-- L["Hunter"] = ""
-- L["Hydra"] = ""
-- L["Hyena"] = ""
-- L["Icon set"] = ""
-- L["I don't have this specialization"] = ""
-- L["I don't have this talent"] = ""
-- L["If this buff requires a specific specialization, choose one."] = ""
-- L["If this buff requires a specific talent, choose which tree the talent is located in."] = ""
-- L["If you have the Improved Tracking talent, checks that you're tracking one of the correct types."] = ""
-- L["If you have the Vigilance talent, you are expected to cast it on a nearby player."] = ""
-- L["If you're a Protection warrior, you are expected to be in Defensive Stance. If not, you're expected to be in some other stance."] = ""
-- L["I have this specialization"] = ""
-- L["I have this talent"] = ""
-- L["Imp"] = ""
-- L["Indicates if this group should be expected or unexpected for you."] = ""
-- L["Indicates if this group should be expected or unexpected for your pet. This only applies to pet classes."] = ""
-- L["Inner Will/Fire"] = ""
-- L["Instance difficulty"] = ""
-- L["Inventory"] = ""
-- L["Inventory item"] = ""
-- L["Inventory Item rules are used to check that you have a certain item in your inventory. This is typically used for healthstones or similar items."] = ""
-- L[" is unexpected"] = ""
-- L["Item %d"] = ""
-- L["Items"] = ""
-- L["Item(s)"] = ""
-- L["Keep scanning slowly in combat"] = ""
-- L["Last Seen From"] = ""
-- L["Left"] = ""
-- L["Lethal Poison"] = ""
-- L["Loaded (running in debug mode)"] = ""
-- L["Loading"] = ""
-- L["Locked: "] = ""
-- L["Low"] = ""
-- L["Low durability"] = ""
-- L["Mage"] = ""
-- L["Mage Armor"] = ""
-- L["Mainhand Weapon Buff"] = ""
-- L["Mana Gem"] = ""
-- L["+ Mana Regen"] = ""
-- L["Marksmanship"] = ""
-- L["Mastery"] = ""
-- L["Missing"] = ""
-- L["Mistweaver"] = ""
-- L["Monk"] = ""
-- L["Mount conditions"] = ""
-- L["N/A"] = ""
-- L["Name"] = ""
-- L["Name matching mode"] = ""
-- L["New rule"] = ""
-- L["New rule type"] = ""
-- L["None"] = ""
-- L["Non-Lethal Poison"] = ""
-- L["Normal"] = ""
-- L["No talent required"] = ""
-- L["Not equipped"] = ""
-- L["No text"] = ""
-- L["Nothing to report!"] = ""
-- L["Not shown"] = ""
-- L["Offhand Weapon Buff"] = ""
-- L["Only when mounted"] = ""
-- L["Only when not mounted"] = ""
-- L["Paladin"] = ""
-- L["Partial"] = ""
-- L["Party"] = ""
-- L["Party size"] = ""
-- L["Pet"] = ""
-- L["Pet mode should be"] = ""
-- L["Pets"] = ""
-- L["Pet Well Fed"] = ""
-- L["Presence"] = ""
-- L["Priest"] = ""
-- L["Priority"] = ""
-- L["Profile modified, rebooting"] = ""
-- L["Protection"] = ""
-- L["Providers"] = ""
-- L["Quantity"] = ""
-- L["Quilen"] = ""
-- L["Raid"] = ""
-- L["Recent casters"] = ""
-- L["Reporting"] = ""
-- L["Reporting is disabled"] = ""
-- L["Report pet issues"] = ""
-- L["Report this group"] = ""
-- L["Report unexpected buffs"] = ""
-- L["Requires you to have cast Dark Intent on another player."] = ""
-- L["Restoration"] = ""
-- L["Retribution"] = ""
-- L["Right"] = ""
-- L["Rogue"] = ""
-- L["Rule Group Editor"] = ""
-- L["Rule groups"] = ""
-- L["Rules: "] = ""
-- L["(running in debug mode)"] = ""
-- L["Scan throttle"] = ""
-- L["Seal"] = ""
-- L["Secondary tooltip anchor"] = ""
-- L["Serpent"] = ""
-- L["Shadow"] = ""
-- L["Shale Spider"] = ""
-- L["Shaman"] = ""
-- L["Shift-click to report to party"] = ""
-- L["Shift-click to report to raid"] = ""
-- L["Short"] = ""
-- L["Show minimap icon"] = ""
-- L["Show text for zero issues"] = ""
-- L["Show tooltip hint"] = ""
-- L["Show yourself as recent caster"] = ""
-- L["Silithid"] = ""
-- L["Solo"] = ""
-- L["Soul Shards"] = ""
-- L["Special Cases"] = ""
-- L["Specialization"] = ""
-- L["Specifies how many of the class should be present before this buff is expected."] = ""
-- L["Specify which class contributes this buff."] = ""
-- L["Specify which class contributes this item, or none."] = ""
-- L["Spell Haste"] = ""
-- L["Spell Power"] = ""
-- L["Spirit Beast"] = ""
-- L["Stamina"] = ""
-- L["Star"] = ""
-- L["Starts with"] = ""
-- L["Stats"] = ""
-- L["+ Stats/Resistances"] = ""
-- L["Subtlety"] = ""
-- L["Survival"] = ""
-- L["Talent index"] = ""
-- L["Talent tree"] = ""
-- L["The Energized Options module has been disabled. Log out and enable it from your add-ons menu."] = ""
-- L["The index of the required talent. The talent index is counted left-to-right, top-to-bottom. The left-most talent in the top row is number 1, followed by the one immediately to its right being number 2. If there are no more talents to the right then it continues from the left-most talent on the next row."] = ""
-- L["The rule group's name. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["This buff will be required only when this many of the class is present in your group or raid."] = ""
-- L["This rule group contains %d |4rule:rules;"] = ""
-- L["This type of rule is used to check that you've cast a buff on someone else in your raid. For example, Vigilance."] = ""
-- L["Thrown Weapon Buff"] = ""
-- L["Turns on a minimap icon for Energized. Use this option if you don't have an LDB display add-on."] = ""
-- L["Type a name for your new rule group, then click Okay to create it. Groups are usually named after their most popular buff (Well Fed) or their effects (+Spellpower)."] = ""
-- L["Type an item ID or name and click Okay or press Enter. The item will be added to the do-not-equip list."] = ""
-- L["Unexpected"] = ""
-- L["Unexpected for you"] = ""
-- L["Unexpected for you and your pet"] = ""
-- L["Unexpected for your pet"] = ""
-- L["Unhappy"] = ""
-- L["Unholy"] = ""
-- L["Unknown"] = ""
-- L["Unknown ID: "] = ""
-- L["Unknown item: "] = ""
-- L["Unknown item ID: "] = ""
-- L["Unknown spell: "] = ""
-- L["Unknown spell ID: "] = ""
-- L["Unspecified buff"] = ""
-- L["Unspecified consumable"] = ""
-- L["Unspecified item"] = ""
-- L["Verbose"] = ""
-- L["Warlock"] = ""
-- L["Warlock Armor"] = ""
-- L["Warn when ammunition is below"] = ""
-- L["Warn when durability reaches"] = ""
-- L["Warn when duration is less than"] = ""
-- L["Warrior"] = ""
-- L["Waterstrider"] = ""
-- L["Welcome to Energized r%d. Your Advanced tab has been reset."] = ""
--[==[ L[ [=[  Well Fed

]=] ] = "" ]==]
-- L["When checked, buffs you provided yourself or your pet will show your name as the recent caster. Uncheck this if you don't want to see yourself mentioned."] = ""
-- L["When checked, Energized will check that you have applied temporary enchants to your weapon. Only applies to certain classes."] = ""
-- L["When checked, Energized will check to see if your pet is Well Fed. This can also be configured in the Advanced section."] = ""
-- L["When checked, Energized will check your pet for any buffs configured in the Rules section. You can disable all pet checks by unchecking this."] = ""
-- L["When checked, Energized will include pet issues in reports."] = ""
-- L["When checked, Energized will include unexpected buffs in reports."] = ""
-- L["When checked, Energized will scan for issues every 10 seconds during combat. If you uncheck this, no scanning will take place during combat unless you hover your mouse over the icon."] = ""
-- L["When checked, Energized will warn you if any of your buffs are running low."] = ""
-- L["When checked, Energized will warn you if you don't have something equipped in every slot."] = ""
-- L["When checked, Energized will warn you if you're missing various inventory items (i.e. healthstones). These items are configured in the Advanced section."] = ""
--[==[ L[ [=[When checked, this group will be included when reporting missing or unexpected buffs. Turn this off for personal buffs.

Groups containing all consumable or inventory item rules will never be reported.]=] ] = "" ]==]
-- L["When enabled and you have no issues, Energized will show text in the LDB feed. With this disabled, there will be no text displayed when you have zero issues."] = ""
-- L["When enabled, Energized will expect your pet to have the Well Fed buff when you're in a raid."] = ""
-- L["When enabled, Energized will require you to have an enchant applied to your equipped throwing weapon."] = ""
-- L["When I'm a tank"] = ""
-- L["When I'm not a tank"] = ""
-- L["Windwalker"] = ""
-- L["Wolf"] = ""
-- L["You"] = ""
-- L["You are energized!"] = ""
-- L["You can't delete this group because it has been locked by the author"] = ""
-- L["You entered:"] = ""
-- L["Your pet"] = ""

end
