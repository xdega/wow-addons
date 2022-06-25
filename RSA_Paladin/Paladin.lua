------------------------------------------------
---- Raeli's Spell Announcer Paladin Module ----
------------------------------------------------
local RSA = LibStub('AceAddon-3.0'):GetAddon('RSA')
local L = LibStub('AceLocale-3.0'):GetLocale('RSA')
local RSA_Paladin = RSA:NewModule('Paladin')

local Config_DivineShield
local Config_DivineShield_End
local MonitorConfig_Paladin

function RSA_Paladin:OnInitialize()
	if RSA.db.profile.General.Class == 'PALADIN' then
		RSA_Paladin:SetEnabledState(true)
	else
		RSA_Paladin:SetEnabledState(false)
	end
end

local function FinalStandCheck() -- Checks if we announce Divine Shield or Final Stand.
	local _,_,_,selected = GetTalentInfo(7,3,1) -- Row 7 (1-7), Column 3 (1-3)
	local talents = RSA.Talents()
	if selected == true and talents == 2 then -- 1 Holy, 2 Protection, 3 Retribution
		Config_DivineShield = {
			profile = 'FinalStand',
			section = 'Start',
			linkID = 204079
		}
		Config_DivineShield_End = {
			profile = 'FinalStand',
			section = 'End',
			linkID = 204079,
		}
	elseif (selected == false) or (talents ~= 2) then
		Config_DivineShield = {
			profile = 'DivineShield',
			section = 'Start',
			linkID = 642,
		}
		Config_DivineShield_End = {
			profile = 'DivineShield',
			section = 'End',
			linkID = 642,
		}
	end
	MonitorConfig_Paladin.SPELL_AURA_APPLIED[642] = Config_DivineShield
	MonitorConfig_Paladin.SPELL_AURA_REMOVED[642] = Config_DivineShield_End
end
RSA.FinalStandCheck = FinalStandCheck -- Set the function globally so RSA_Options can force an update when the setting is changed.

function RSA_Paladin:OnEnable()
	RSA.db.profile.Modules.Paladin = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName('player')
	local Config_AvengingWrath = { -- AVENGING WRATH
		profile = 'AvengingWrath'
	}
	local Config_AvengingWrath_End = { -- AVENGING WRATH
		profile = 'AvengingWrath',
		section = 'End'
	}
	local Config_GoAK = { -- GUARDIAN OF ANCEINT KINGS
		profile = 'GoAK',
	}
	local Config_GoAK_End = { -- GUARDIAN OF ANCEINT KINGS
		profile = 'GoAK',
		section = 'End'
	}
	local Config_BoF = {
		profile = 'HandOfFreedom',
		replacements = { TARGET = 1 }
	}
	local Config_BoF_End = {
		profile = 'HandOfFreedom',
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_BoP = { -- BLESSING OF PROTECTION & BLESSING OF SPELLWARDING
		profile = 'HandOfProtection',
		replacements = { TARGET = 1 }
	}
	local Config_BoP_End = { -- BLESSING OF PROTECTION & BLESSING OF SPELLWARDING
		profile = 'HandOfProtection',
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_Cleanse = {-- CLEANSE & CLEANSE TOXINS
		profile = 'Cleanse',
		section = 'Dispel',
		replacements = { TARGET = 1, extraSpellName = '[AURA]', extraSpellLink = '[AURALINK]' }
	}
	local Config_BoS = { -- Blessing of Sacrifice & Ultimate Sacrifice honour talent
		profile = 'HandOfSacrifice',
		replacements = { TARGET = 1 }
	}
	local Config_BoS_End = { -- Blessing of Sacrifice & Ultimate Sacrifice honour talent
		profile = 'HandOfSacrifice',
		targetNotMe = 1,
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_DivineSteed = { -- Divine Steed
		profile = 'DivineSteed'
	}
	local Config_DivineSteed_End = { -- Divine Steed
		profile = 'DivineSteed',
		section = 'End'
	}
	MonitorConfig_Paladin = {
		player_profile = RSA.db.profile.Paladin,
		SPELL_DISPEL = {
			[4987] = Config_Cleanse, -- CLEANSE
			[213644] = Config_Cleanse, -- CLEANSE TOXINS
		},
		SPELL_HEAL = {
			[184250] = { -- DIVINE INTERVENTION
				profile = 'DivineIntervention',
				section = 'Heal',
				linkID = 213313,
				replacements = { AMOUNT = 1 },
			},
			[66235] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				section = 'Heal',
				tracker = 1,
				linkID = 31850,
				replacements = { AMOUNT = 1}
			},
			[633] = { -- LAY ON HANDS
				profile = 'LayOnHands',
				section = 'Heal',
				replacements = { TARGET = 1, AMOUNT = 1 }
			},
		},
		SPELL_CAST_START = {
			[212056] = { -- ABSOLUTION
				profile = 'Absolution',
			},
			--[[[7328] = { -- Redemption
				profile = 'Redemption',
				section = 'Start',
				replacements = { TARGET = 1 },
			},]]--
		},
		SPELL_CAST_SUCCESS = {
			[31884] = Config_AvengingWrath, -- AVENGING WRATH
			[231895] = Config_AvengingWrath, -- Crusade - Ret Talent
			[216331] = Config_AvengingWrath, -- Avenging Crusader - Holy Talent
			[6940] = Config_BoS, -- Blessing of Sacrifice
			[199448] = Config_BoS, -- Ultimate Sacrifice honour talent
			[212056] = { -- ABSOLUTION
				profile = 'Absolution',
				section = 'End'
			},
			[31850] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				tracker = 2
			},
			[53563] = { -- BEACON OF LIGHT
				profile = 'Beacon',
				replacements = { TARGET = 1 }
			},
			[31821] = { -- AURA MASTERY
				profile = 'DevotionAura'
			},
			[210256] = { -- Blessing of Sanctuary
				profile = 'BlessingOfSanctuary',
				replacements = { TARGET = 1 }
			},
		},
		SPELL_RESURRECT = {
			[7328] = { -- Redemption
				profile = 'Redemption',
				section = 'End',
				replacements = { TARGET = 1 },
			},
		},
		SPELL_AURA_APPLIED = {
			[642] = Config_DivineShield, -- DIVINE SHIELD
			[1022] = Config_BoP, -- BLESSING OF PROTECTION
			[204018] = Config_BoP, -- BLESSING OF SPELLWARDING
			[86659] = Config_GoAK, -- GUARDIAN OF ANCEINT KINGS
			[212641] = Config_GoAK, -- GUARDIAN OF ANCEINT KINGS
			[1044] = Config_BoF, -- Normal Freedom
			[305395] = Config_BoF, -- Unbound Freedom
			[853] = { -- HAMMER OF JUSTICE
				profile = 'HammerOfJustice',
				replacements = { TARGET = 1 }
			},
			[498] = { -- DIVINE PROTECTION
				profile = 'DivineProtection',
			},
			[25771] = { -- FORBEARANCE
				profile = 'Forbearance',
				replacements = { TARGET = 1 }
			},
			[62124] = { -- HAND OF RECKONING
				profile = 'HandOfReckoning',
				section = 'Cast',
				replacements = { TARGET = 1 }
			},
			[228049] = { -- Guardian of the Forgotten Queen
				profile = 'ForgottenQueen',
				replacements = { TARGET = 1 }
			},
			[105809] = { -- HOLY AVENGER
				profile = 'HolyAvenger'
			},
			[20066] = { -- REPENTANCE
				profile = 'Repentance',
				replacements = { TARGET = 1 }
			},
			[10326] = { -- turn evil
				profile = 'TurnEvil',
				replacements = { TARGET = 1 }
			},
			[184662] = { -- SHIELD OF VENGEANCE
				profile = 'ShieldOfVengeance'
			},
			--[[[204150] = { -- AEGIS OF LIGHT
				profile = 'AegisOfLight',
				tracker = 2,
				targetIsMe = 1
			},]]--
			[209202] = { -- Eye Of Tyr
				profile = 'EyeOfTyr',
				tracker = 2,
			},
			[205191] = { -- Eye for an Eye
				profile = 'EyeForAnEye'
			},
			[200656] = { -- Power of the Silver Hand
				profile = 'PowerOfTheSilverHand'
			},
			[200652] = { -- Tyr's Deliverance
				profile = 'TyrsDeliverance',
				targetIsMe = 1
			},
			[276112] = Config_DivineSteed, --Divine Steed
			[254473] = Config_DivineSteed, --Divine Steed
			[276111] = Config_DivineSteed, --Divine Steed
			[254474] = Config_DivineSteed, --Divine Steed
			[221887] = Config_DivineSteed, --Divine Steed
			[254472] = Config_DivineSteed, --Divine Steed
			[254471] = Config_DivineSteed, --Divine Steed
			[221885] = Config_DivineSteed, --Divine Steed
			[221886] = Config_DivineSteed, --Divine Steed
		},
		SPELL_AURA_REMOVED = {
			[31884] = Config_AvengingWrath_End, -- AVENGING WRATH
			[231895] = Config_AvengingWrath_End, -- Crusade - Ret Talent
			[216331] = Config_AvengingWrath_End, -- Avenging Crusader - Holy Talent
			[1022] = Config_BoP_End, -- BLESSING OF PROTECTION
			[204018] = Config_BoP_End, -- BLESSING OF SPELLWARDING
			[642] = Config_DivineShield_End, -- DIVINE SHIELD
			[86659] = Config_GoAK_End, -- GUARDIAN OF ANCEINT KINGS
			[212641] = Config_GoAK_End,   -- GUARDIAN OF ANCEINT KINGS
			[6940] = Config_BoS_End, -- Blessing of Sacrifice
			[199448] = Config_BoS_End, -- Ultimate Sacrifice honour talent
			[1044] = Config_BoF_End, -- Normal Freedom
			[305395] = Config_BoF_End, -- Unbound Freedom
			[853] = { -- HAMMER OF JUSTICE
				profile = 'HammerOfJustice',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[498] = { -- DIVINE PROTECTION
				profile = 'DivineProtection',
				section = 'End'
			},
			[228049] = { -- Guardian of the Forgotten Queen
				profile = 'ForgottenQueen',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[31850] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				section = 'End',
				tracker = 1
			},
			[53563] = { -- BEACON OF LIGHT
				profile = 'Beacon',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[31821] = { -- AURA MASTERY
				profile = 'DevotionAura',
				section = 'End',
				targetIsMe = 1
			},
			[25771] = { -- FORBEARANCE
				profile = 'Forbearance',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[210256] = { -- Blessing of Sanctuary
				profile = 'BlessingOfSanctuary',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[105809] = { -- HOLY AVENGER
				profile = 'HolyAvenger',
				section = 'End'
			},
			[20066] = { -- REPENTANCE
				profile = 'Repentance',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[10326] = { -- turn evil
				profile = 'TurnEvil',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[184662] = { -- SHIELD OF VENGEANCE
				profile = 'ShieldOfVengeance',
				section = 'End'
			},
			--[[[204150] = { -- AEGIS OF LIGHT
				profile = 'AegisOfLight',
				section = 'End',
				tracker = 1,
				targetIsMe = 1
			},]]--
			[209202] = { -- Eye Of Tyr
				profile = 'EyeOfTyr',
				section = 'End',
				tracker = 1
			},
			[205191] = { -- Eye for an Eye
				profile = 'EyeForAnEye',
				section = 'End',
			},
			[200656] = { -- Power of the Silver Hand
				profile = 'PowerOfTheSilverHand',
				section = 'End',
			},
			[200652] = { -- Tyr's Deliverance
				profile = 'TyrsDeliverance',
				section = 'End',
				targetIsMe = 1
			},
			[276112] = Config_DivineSteed_End, --Divine Steed
			[254473] = Config_DivineSteed_End, --Divine Steed
			[276111] = Config_DivineSteed_End, --Divine Steed
			[254474] = Config_DivineSteed_End, --Divine Steed
			[221887] = Config_DivineSteed_End, --Divine Steed
			[254472] = Config_DivineSteed_End, --Divine Steed
			[254471] = Config_DivineSteed_End, --Divine Steed
			[221885] = Config_DivineSteed_End, --Divine Steed
			[221886] = Config_DivineSteed_End, --Divine Steed
		},
		SPELL_INTERRUPT = {
			[96231] = { -- REBUKE
				profile = 'Rebuke',
				section = 'Interrupt',
				replacements = { TARGET = 1, extraSpellName = '[TARSPELL]', extraSpellLink = '[TARLINK]' }
			},
			[31935] = { -- AVENGERS SHIELD
				profile = 'AvengersShield',
				section = 'Interrupt',
				replacements = { TARGET = 1, extraSpellName = '[TARSPELL]', extraSpellLink = '[TARLINK]' }
			},
		},
		SPELL_MISSED = {
			[96231] = {-- REBUKE
				profile = 'Rebuke',
				section = 'Resist',
				immuneSection = 'Immune',
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[20066] = { -- REPENTANCE
				profile = 'Repentance',
				section = 'Resist',
				immuneSection = 'Immune',
				replacements = { TARGET = 1, MISSTYPE = 1 }
			},
			[10326] = { -- turn evil
				profile = 'TurnEvil',
				section = 'Resist',
				immuneSection = 'Immune',
				replacements = { TARGET = 1, MISSTYPE = 1 }
			},
			[31935] = {-- AVENGERS SHIELD
				profile = 'AvengersShield',
				section = 'Resist',
				immuneSection = 'Immune',
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[62124] = {-- HAND OF RECKONING
				profile = 'HandOfReckoning',
				section = 'Resist',
				immuneSection = 'Immune',
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Paladin, UnitGUID('player'))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local function Paladin_Spells()
		local timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, overheal, ex3, ex4, ex5, ex6, ex7, ex8 = CombatLogGetCurrentEventInfo()
		if RSA.AffiliationMine(sourceFlags) then
			if (event == 'SPELL_CAST_SUCCESS' and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Paladin.Reminders.SpellName
				if spellName == ReminderSpell and (dest == pName or dest == nil) then
					RSA.Reminder:SetScript('OnUpdate', nil)
					if RSA.db.profile.Reminders.RemindChannels.Chat == true then
						RSA.Print_Self(ReminderSpell .. L[" Refreshed!"])
					end
					if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
						RSA.Print_Self_RW(ReminderSpell .. L[" Refreshed!"])
					end
				end
			end -- BUFF REMINDER
			MonitorAndAnnounce(self, 'player', timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, overheal, ex3, ex4, ex5, ex6, ex7, ex8)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript('OnEvent', Paladin_Spells)

	RSA.TalentMon = RSA.TalentMon or CreateFrame('Frame', 'RSA:TalentMonitor')
	RSA.TalentMon:RegisterEvent('PLAYER_TALENT_UPDATE')
	RSA.TalentMon:RegisterEvent('PLAYER_ENTERING_WORLD')
	RSA.TalentMon:SetScript('OnEvent', FinalStandCheck)

	local function PaladinRess(self, event, source, dest, _, spellid)
		local spellinfo,spelllinkinfo
		if UnitName(source) == pName then
			if spellid == 7328 and RSA.db.profile.Paladin.Spells.Redemption.Messages.Start ~= "" then
				if event == "UNIT_SPELLCAST_SENT" then
					local messagemax = #RSA.db.profile.Paladin.Spells.Redemption.Messages.Start
					if messagemax == 0 then return end
					local messagerandom = math.random(messagemax)
					local message = RSA.db.profile.Paladin.Spells.Redemption.Messages.Start[messagerandom]
					if (dest == L["Unknown"] or dest == nil) then
						if UnitExists("target") ~= 1 or (UnitHealth("target") > 1 and UnitIsDeadOrGhost("target") ~= 1) then
							if GameTooltipTextLeft1:GetText() == nil then
								dest = L["Unknown"]
							else
								dest = string.gsub(GameTooltipTextLeft1:GetText(), L["Corpse of "], "")
							end
						else
							dest = UnitName("target")
						end
					end
					local full_destName,dest = RSA.RemoveServerNames(dest)
					spellinfo = GetSpellInfo(spellid) spelllinkinfo = GetSpellLink(spellid)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					if message ~= "" then
						if RSA.db.profile.Paladin.Spells.Redemption.Local == true then
							RSA.Print_LibSink(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Yell == true then
							RSA.Print_Yell(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(message, full_destName, RSA.Replacements, dest)
							--RSA.Print_Whisper(string.gsub(message, ".%a+.", RSA.String_Replace), full_destName)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(message, ".%a+.", RSA.String_Replace), RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Channel)
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Say == true then
							RSA.Print_Say(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Party == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() == 0 then return end
								RSA.Print_Party(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Raid == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(message, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end
		end
	end
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", PaladinRess)
end

function RSA_Paladin:OnDisable()
	RSA.CombatLogMonitor:SetScript('OnEvent', nil)
	RSA.TalentMon:SetScript('OnEvent', nil)
end
