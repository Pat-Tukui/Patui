Filger_Settings = {
	configmode = false,
}

--[[ CD-Example
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "CENTER", UIParent, "CENTER", 0, -100 },
			
			-- Wild Growth
			{ spellID = 48438, size = 32, filter = "CD" },
		},
]]

Filger_Spells = {
	["DRUID"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			--Lifebloom
			{ spellID = 33763, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Rejuvenation
			{ spellID = 774, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Regrowth
			{ spellID = 8936, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Wild Growth/Wildwuchs
			{ spellID = 48438, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			--Lifebloom
			{ spellID = 33763, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Rejuvenation
			{ spellID = 774, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Regrowth
			{ spellID = 8936, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Wild Growth/Wildwuchs
			{ spellID = 48438, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Eclipse (Lunar)
			{ spellID = 48518, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eclipse (Solar)
			{ spellID = 48517, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shooting Stars
			{ spellID = 93400, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16870, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Siphoned Power
			{ spellID = 71636, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hyperspeed Accelerators
			{ spellID = 54999, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cultivated Power
			{ spellID = 71572, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hardened Skin
			{ spellID = 71586, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Savage roar
			{ spellID = 52610, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate
			{ spellID = 29166, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Barkskin
			{ spellID = 22812, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bloodlust
			{ spellID = 2825, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Heroism
			{ spellID = 32182, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Survival Instincts
			{ spellID = 61336, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hyperspeed Accelerators
			{ spellID = 54999, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tree of Life
			{ spellID = 33891, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Moonfire
			{ spellID = 8921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunfire
			{ spellID = 93402, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Insect Swarm
			{ spellID = 5570, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Faerie Fire
			{ spellID = 770, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots
			{ spellID = 339, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Earth and Moon
			{ spellID = 48506, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rake
			{ spellID = 1822, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rip
			{ spellID = 1079, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Lacerate
			{ spellID = 33745, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pounce Bleed
			{ spellID = 9007, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mangle (Cat)
			{ spellID = 33876, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			--Hibernate/Winterschlaf
			{ spellID = 2637, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			--Entangling Roots/Wucherwurzeln
			{ spellID = 339, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			--Cyclone/Wirbelsturm
			{ spellID = 33786, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["HUNTER"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },
			
			-- Lock and Load
			{ spellID = 56342, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fury of the Five Flights
			{ spellID = 60314, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Greatness
			{ spellID = 60233, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Mjolnir Runestone
			{ spellID = 65019, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Quick Shots
			--{ spellID = 6150, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician
			{ spellID = 34837, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician
			{ spellID = 53224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Expose Weakness
			--{ spellID = 34503, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Exploit Weakness 2t10 proc
			{ spellID = 70728, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Stinger 4t10 proc
			{ spellID = 71007, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Power of the Taunka
			{ spellID = 71486, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Aim of the Iron Dwarves
			{ spellID = 71491, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Agility of the Vrykul
			{ spellID = 71485, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Icy Rage
			{ spellID = 71401, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rapid Fire
			{ spellID = 3045, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Berserking
			{ spellID = 26297, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Potion of Speed
			{ spellID = 53908, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Potion of Wild Magic
			{ spellID = 53909, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Fury
			{ spellID = 20572, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of the Wild
			{ spellID = 53434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hyperspeed Acceleration
			{ spellID = 54758, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Frostforged Champion
			{ spellID = 72412, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			-- Hunter's Mark
			{ spellID = 1130, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Serpent Sting
			{ spellID = 1978, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Scorpid Sting
			--{ spellID = 3043, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Black Arrow
			{ spellID = 3674, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Explosive Shot
			{ spellID = 53301, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Wyvern Sting
			{ spellID = 19386, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "PET_ICON",
			Direction = "UP",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "CENTER", UIParent, 0, -300 },

			--Mend Pet/Tier heilen
			{ spellID = 136, size = 32, unitId = "pet", caster = "player", filter = "BUFF" },
			--Feed Pet/Tier füttern
			{ spellID = 6991, size = 32, unitId = "pet", caster = "player", filter = "BUFF" },
		},
	},
	["MAGE"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },
			
			-- Frostbite
			--{ spellID = 11071, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Winter's Chill
			{ spellID = 28593, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Fingers of Frost
			{ spellID = 44544, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fireball!
			{ spellID = 57761, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hot Streak
			{ spellID = 44445, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Missile Barrage
			{ spellID = 54486, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 12536, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Impact
			{ spellID = 12358, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Greatness
			{ spellID = 60234, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			-- Arcane Blast
			{ spellID = 36032, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Improved Scorch
			{ spellID = 11367, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Scorch
			{ spellID = 2948, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Slow
			{ spellID = 31589, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Ignite
			{ spellID = 11119, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Living Bomb
			{ spellID = 44457, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pyroblast!
			{ spellID = 92315, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Polymorph
			{ spellID = 118, size = 32, barWidth = 191, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["WARRIOR"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Sudden Death
			{ spellID = 52437, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slam!
			{ spellID = 46916, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Sword and Board
			{ spellID = 50227, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Greatness
			{ spellID = 60229, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Strength of the Taunka
			{ spellID = 71561, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Speed of the Vrykul
			{ spellID = 71560, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Aim of the Iron Dwarves
			{ spellID = 71559, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Reserve
			{ spellID = 64568, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Wall
			{ spellID = 871, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Hamstring
			{ spellID = 1715, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rend
			{ spellID = 94009, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunder Armor
			{ spellID = 7386, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Expose Armor
			--{ spellID = 48669, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Thunder Clap
			{ spellID = 6343, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Infected Wounds
			{ spellID = 48484, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frost Fever
			{ spellID = 55095, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Demoralizing Shout
			{ spellID = 1160, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demoralizing Roar
			{ spellID = 99, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
	},
	["SHAMAN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			--Earth Shield/Erdschild
			{ spellID = 974, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Riptide/Springflut
			{ spellID = 61295, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Lightning Shield/Blitzschlagschild
			{ spellID = 324, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Water Shield/Wasserschild
			{ spellID = 52127, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			--Earth Shield/Erdschild
			{ spellID = 974, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Riptide/Springflut
			{ spellID = 61295, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Maelstorm Weapon
			{ spellID = 53817, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shamanistic rage
			{ spellID = 30823, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 12536, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tidal Waves
			{ spellID = 51562, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancestral Fortitude
			{ spellID = 16236, size = 47, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Storm Strike
			{ spellID = 17364, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth Shock
			{ spellID = 8042, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Shock
			{ spellID = 8056, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Flame Shock
			{ spellID = 8050, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Hex
			{ spellID = 51514, size = 32, barWidth = 191, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["PALADIN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			--Beacon of Light/Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			--Beacon of Light/Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Judgements of the Pure
			{ spellID = 53671, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Holy Shield
			{ spellID = 20925, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Infusion of Light
			{ spellID = 54149, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Plea
			{ spellID = 54428, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Illumination
			{ spellID = 31842, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Hammer of Justice
			{ spellID = 853, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Light
			{ spellID = 20271, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Justice
			--{ spellID = 53407, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Wisdom
			--{ spellID = 20186, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Heart of the Crusader
			--{ spellID = 54499, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Blood Corruption
			--{ spellID = 53742, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			--Hammer of Justice/Hammer der Gerechtigkeit
			{ spellID = 853, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["PRIEST"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			--Prayer of Mending/Gebet der Besserung
			{ spellID = 41637, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Guardian Spirit/Schutzgeist
			{ spellID = 47788, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Pain Suppression/Schmerzunterdrückung
			{ spellID = 33206, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Power Word: Shield/Machtwort: Schild
			{ spellID = 17, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Renew/Erneuerung
			{ spellID = 139, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Fade/Verblassen
			{ spellID = 586, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Fear Ward/Furchtzauberschutz
			{ spellID = 6346, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			--Inner Fire/Inneres Feuer
			{ spellID = 588, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			--Prayer of Mending/Gebet der Besserung
			{ spellID = 41637, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Guardian Spirit/Schutzgeist
			{ spellID = 47788, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Pain Suppression/Schmerzunterdrückung
			{ spellID = 33206, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Power Word: Shield/Machtwort: Schild
			{ spellID = 17, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Renew/Erneuerung
			{ spellID = 139, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			--Fear Ward/Furchtzauberschutz
			{ spellID = 6346, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Surge of Light
			{ spellID = 33151, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Serendipity
			{ spellID = 63730, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Greatness
			{ spellID = 60234, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Energized
            { spellID = 67696, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
            -- Frostforged Sage
            { spellID = 72416, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
            -- Shadow Weaving
            --{ spellID = 15258, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
            -- Improved Spirit Tap
           -- { spellID = 59000, size = 37, unitId = "player", caster = "all", filter = "BUFF" },
			-- Shadow Orb
			{ spellID = 77487, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Archangel
			{ spellID = 81700, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evangelism
			{ spellID = 81661, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hand of Protection
            { spellID = 1022, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
            -- Dispersion
            { spellID = 47585, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			-- Shadow Word: Pain
			{ spellID = 589, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Devouring Plague
			{ spellID = 2944, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Vampiric Touch
            { spellID = 34914, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Shackle undead
			{ spellID = 9484, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Psychic Scream
			{ spellID = 8122, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["WARLOCK"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Molten Core
			{ spellID = 47383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Decimation
			{ spellID = 63158, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backdraft
			{ spellID = 54277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backlash
			{ spellID = 34939, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nether Protection
			{ spellID = 30301, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nightfall
			{ spellID = 18095, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Burning Soul
			{ spellID = 74434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Curse of the Elements
			{ spellID = 1490, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Ebon Plaguebringer
			{ spellID = 51099, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Earth and Moon
			{ spellID = 48506, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Tongues
			{ spellID = 1714, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Exhaustion
			{ spellID = 18223, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shadow Embrace
			{ spellID = 32385, size = 47, unitId = "target", caster = "player", filter = "BUFF" },
			-- Corruption
			{ spellID = 172, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Immolate
			{ spellID = 348, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Agony
			{ spellID = 980, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Bane of Doom
			{ spellID = 603, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Unstable Affliction
			{ spellID = 30108, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Haunt
			{ spellID = 48181, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },	
			-- Seed of Corruption
			{ spellID = 27243, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Weakness
			{ spellID = 702, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Tongues
			{ spellID = 1714, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Exhaustion
			{ spellID = 18223, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Fear
			{ spellID = 5782, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Howl of Terror
			{ spellID = 5484, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Death Coil
			{ spellID = 6789, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Banish
			{ spellID = 710, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Enslave Demon
			{ spellID = 1098, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demon Charge
			{ spellID = 54785, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Fear
			{ spellID = 5782, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
			-- Banish
			{ spellID = 710, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["ROGUE"] = {	
		{	
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },
			
			-- Sprint
			{ spellID = 2983, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cloak of Shadows
			{ spellID = 31224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Adrenaline Rush
			{ spellID = 13750, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evasion
			{ spellID = 5277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },	
			-- Envenom
			{ spellID = 32645, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Overkill
			{ spellID = 58426, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slice and Dice
			{ spellID = 5171, size = 47, unitId = "player", caster = "player", filter = "BUFF" },		
			-- Tricks of the Trade
			{ spellID = 57934, size = 47, unitId = "player", caster = "player", filter = "BUFF" },		
			-- Turn the Tables
			{ spellID = 51627, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			-- Rupture
			{ spellID = 1943, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Garrote
			{ spellID = 703, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Kidney shot
			{ spellID = 408, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Cheap shot
			{ spellID = 1833, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Blind
			{ spellID = 2094, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Expose Armor
			{ spellID = 8647, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Dismantle
			{ spellID = 51722, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Deadly Poison
			{ spellID = 2818, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind-numbing Poison
			{ spellID = 5760, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },		
			-- Crippling Poison
			{ spellID = 3409, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Wound Poison
			{ spellID = 13218, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },
			
			-- Blind
			{ spellID = 2094, size = 32, barWidth = 200, unitId = "focus", caster = "player", filter = "DEBUFF" },
		},
	},
	["DEATHKNIGHT"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			--Unholy Force/Unheilige Kraft
			{ spellID = 67383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Desolation/Verwüstung
			--{ spellID = 66817, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Unholy Strength/Unheilige Stärke
			{ spellID = 53365, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Unholy Might/Unheilige Macht
			{ spellID = 67117, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Dancing Rune Weapon/Tanzende Runenwaffe
			{ spellID = 49028, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Killing machine 
			{ spellID = 51124, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Freezing fog 
			{ spellID = 59052, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			--Blood Plague/Blutseuche
			{ spellID = 59879, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			--Frost Fever/Frostfieber
			{ spellID = 59921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			--Unholy Blight/Unheilige Verseuchung
			{ spellID = 49194, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			--Summon Gargoyle/Gargoyle beschwören
			{ spellID = 49206, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
	},
}