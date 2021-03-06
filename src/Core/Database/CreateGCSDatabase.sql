USE [GCSDatabase]
GO
/****** Object:  Table [dbo].[GoalsPowers]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoalsPowers](
	[GoalsPowerId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Effect] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](512) NOT NULL,
	[Cost] [int] NOT NULL,
	[Range] [nvarchar](50) NOT NULL,
	[Damage] [nvarchar](50) NOT NULL,
	[Page] [nvarchar](10) NOT NULL,
	[PowerClass] [nvarchar](50) NOT NULL,
	[Template] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsPowers] PRIMARY KEY CLUSTERED 
(
	[GoalsPowerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GoalsPowers] ON
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1000, N'Altered Beast', N'Other', N'The character spends a special action to shift into a primal predator form. While in this form he gains +2D Strength, +1D Toughness, and +2” Move. He may remain in this form as long as he wishes, but transforming back requires another special action and a TN4 Class trait check. While in primal form he may not cast spells or collect and carry objects or treasure. When possible, the player should replace his or her Druid model with another, were-form model to show this change.', N'Atavistic Druid Class Power.<br/> • 3rd level: Gain an additional +1D to Strength in this form.<br/> • 6th level: Gain an additional +1D to Toughness in this form.<br/> • 9th level: Gain an additional +1D to Defense in this form.<br/>', 7, N'', N'', N'99        ', N'Class', 1, CAST(0x0000A2030128C645 AS DateTime), CAST(0x0000A2030128C645 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1001, N'Arcane Student', N'Other', N'Characters with this power select three 1st level spells from the Arcane spell list. This represents their beginning arcane knowledge at 1st level.', N'Mage (Wizard) Class Power.', 10, N'', N'', N'99        ', N'Class', 1, CAST(0x0000A2030129C94E AS DateTime), CAST(0x0000A2030129C94E AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1002, N'Assassin''s Mark', N'Attack', N'Infiltration and assassination comprise a dark business, but certain Thieves make themselves masters of it. At the beginning of any encounter the character chooses an opposing character model or creature as his mark; when he successfully hits his marked foe, he may force him to make a second damage resistance goal roll and take the poorer of the two results. He may spend 1 Fate to change his designated foe to another character or creature.', N'Thief (Assassin) Class Power.<br/> 3rd Level: Add +1D to Dirty Strike against your Marked foe (for a total of +3D).<br/> 6th Level: Add +1D to Dirty Strike against your Marked foe (for a total of +4D).<br/> 9th level: You no longer need to spend Fate to change foes for Assassin’s Mark.<br/>', 6, N'', N'', N'100       ', N'Class', 1, CAST(0x0000A203012C70A1 AS DateTime), CAST(0x0000A203012C70A1 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1003, N'Armor of Anger', N'Defense', N'Once per Encounter characters with this power can ignore Level + 1 HP worth of damage from any one attack. Characters may spend 1 Fate per use for additional uses of this ability.', N'Slayer Fighter Class Power.', 5, N'', N'', N'100       ', N'Class', 1, CAST(0x0000A203012C9EEB AS DateTime), CAST(0x0000A203012C9EEB AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1004, N'Balm of Faith', N'Other', N'The character begins play with the Heal spell, and he may cast it as special action.', N'Priest (Paladin) Class Power.', 3, N'', N'', N'100       ', N'Class', 1, CAST(0x0000A203012CBEC4 AS DateTime), CAST(0x0000A203012CBEC4 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1005, N'Bodyguard', N'Defense', N'Once per Encounter, characters using this power can absorb the damage from a successful attack against a friendly model within 3”of them; the attacker rolls whatever damage dice he scored against the original target against the Bodyguard character instead. Characters may spend 1 Fate per use for additional uses of this ability.', N'Man-at-Arms Fighter Class Power.', 3, N'', N'', N'100       ', N'Class', 1, CAST(0x0000A203012CE973 AS DateTime), CAST(0x0000A203012CE973 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Bookish', N'Other', N'This character’s commitment to magic has left him weak; he suffers -1D to his Mage trait on Wilderness or Dungeon Adventure Challenge checks, and -1D to Strength on damage goal rolls with normal close combat weapons.', N'Mage (Wizard) Class Power.', -3, N'', N'', N'101       ', N'Class', 1, CAST(0x0000A203012D1093 AS DateTime), CAST(0x0000A203012D1093 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Boon Companion', N'Other', N'Characters with this power gain an appropriate animal companion with the following profile:<br/> The character must spend 1 Fate pt. at the start of the adventure to include the animal companion in the party. The companion activates on the character’s initiative, either before or after he takes his turn. The animal suffers damage as per the Retainer rules (see Appendix I: Retainers). The character reclaims a slain companion during the Recovery Phase, but this subtracts 1 from the PWS.', N'Keeper Druid Class Power.<br/> 3rd level: Add +1D to the companion’s Animal trait.<br/> 6th level: Add +1D to the companion’s Strength.<br/> 9th level: Add +1D to the companion’s Defense.<br/>', 15, N'', N'', N'102       ', N'Class', 1, CAST(0x0000A203013030E4 AS DateTime), CAST(0x0000A203013030E4 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Bow Mastery', N'Attack', N'Characters with this power count themselves among the land’s greatest archers. They enjoy the following benefits when wielding bows, crossbows, and great bows:<br/> Long Shot: <br/>Spend 1 Fate pt. add up to 10” of additional range to this shot; if the shot hits, he immediately gains back the 1 Fate cost.<br/> Running Shot:<br/> Once per encounter he may charge and shoot in the same round. He still may not fire his bow while in base contact with an enemy model.<br/> Sure Shot:<br/> +1D to damage', N'Ranger (Archer) Class Power.<br/> 3rd level: Add +1D to Sure Shot (total of +2D).<br/> 6th level: Add +1D to Sure Shot (total of +3D).<br/> 9th level: Once per Encounter you may make two ranged attacks in the same turn.<br/>', 10, N'', N'', N'103       ', N'Class', 1, CAST(0x0000A2030130553C AS DateTime), CAST(0x0000A2030130553C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Combat Magic', N'Attack', N'Characters with this power rank as combat wizards, and use their Mage trait to attack foes in close combat or at a range of up to twice its rating in inches. If the character also carries a Quarterstaff, Rod, or Wand, he adds +1D to these attack goal rolls.', N'Mage (Wizard) Class Power.<br/> 3rd level: Add +1D to Combat Magic damage (total 5D).<br/> 6th level: Add +1D to Combat Magic damage (total 6D).<br/> 9th level: Once per Encounter cast any spell as a Free action.<br/>', 10, N'', N'4D', N'103       ', N'Class', 1, CAST(0x0000A203013086EC AS DateTime), CAST(0x0000A203013086EC AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1010, N'Counterstrike', N'Attack', N'Characters or creatures with this power are deadly even when on the defensive. Once per round, if a creature or character with this power successfully defends against a close combat attack, it rolls for damage as if it had just initiated an attack on its attacker! If the initial roll was tied, roll the base damage of the defender’s best or most appropriate close combat attack, but if the defender exceeded his attacker’s total, he adds the difference to his damage dice total before rolling. Characters or creatures possessing Fate may spend 1 Fate for additional uses of this power during the course of the same combat round. This power adds +1D to a creature’s Reward Level.', N'Fighting Monk Class Power.', 10, N'', N'', N'104       ', N'Class', 1, CAST(0x0000A20301330D7C AS DateTime), CAST(0x0000A20301330D7C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1011, N'Defensive Fighter', N'Defense', N'When characters possessing this power fight with a one-handed weapon and shield, multiple foes and Hordes in base contact gain no friends bonus against them.', N'Man-at-Arms Fighter Class Power.', 5, N'', N'', N'104       ', N'Class', 1, CAST(0x0000A20301332E19 AS DateTime), CAST(0x0000A20301332E19 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1012, N'Dirty Strike', N'Attack', N'The character gains an extra +2D to attack goal rolls against a foe he enjoys a friends bonus against.', N'Thief Class Power.', 3, N'', N'', N'104       ', N'Class', 1, CAST(0x0000A20301334D78 AS DateTime), CAST(0x0000A20301334D78 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1013, N'Divine Power', N'Other', N'Characters with this power select two 1st level spells from the Spiritual spell list. This represents their divinely inspired magical knowledge at 1st level.', N'Priest (Cleric) Class Power.', 6, N'', N'', N'105       ', N'Class', 1, CAST(0x0000A2030133662F AS DateTime), CAST(0x0000A2030133662F AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1014, N'Dual Weapon Mastery', N'Attack', N'A character with this power package wields two 1H weapons with ease; and gains the following benefits when doing so:<br/> Boomerang Throw:<br/> Once per encounter, the character may throw one of his blades as a ranged attack up to twice his Class trait in inches. The base damage equals his Strength +1D, but gains no extra dice from carries. The blade returns to the thrower’s hand at the end of the attack.<br/> Flashing Blades: <br/>Add +1D to attacks; if he spends Fate on an extra attack and hits with it, he immediately gains that Fate back.<br/> Shield of Steel:<br/> If he chooses the Full Defense maneuver, he gains +2D to all Defense rolls instead of +1D.', N'Ranger (Bladesman) Class Power.<br/> 3rd level: Add +1 Re-roll to Flashing Blades.<br/> 6th level: Add +1D to Flashing Blades.<br/> 9th level: Once per Encounter make two close combat attacks in the same turn at no Fate cost.', 10, N'', N'', N'105       ', N'Class', 1, CAST(0x0000A203013389A2 AS DateTime), CAST(0x0000A203013389A2 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1015, N'Evasive', N'Defense', N'The character increases his Move by +2" and gains +1D to avoid ranged attacks.', N'Fighting Monk Class Power', 3, N'', N'', N'106       ', N'Class', 1, CAST(0x0000A203014C6B4D AS DateTime), CAST(0x0000A203014C6B4D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1016, N'Furious Charge', N'Attack', N'Characters or creatures possessing this power add +2D to damage on successful charge attacks.', N'Slayer Fighter Class Power.', 2, N'', N'', N'106       ', N'Class', 1, CAST(0x0000A203014CD25B AS DateTime), CAST(0x0000A203014CD25B AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1017, N'Healer', N'Other', N'Healers automatically get the Heal spell at 1st level, and they may cast it asa free actoin.', N'Priest (Cleric) Power.<br/> 3rd level: Gain an additional use of the Heal spell.<br/> 6th level: Add +1 HP to any use of the Heal spell.<br/> 9th level: Add a further +1 HP to any use of the Heal spell.', 5, N'', N'', N'106       ', N'Class', 1, CAST(0x0000A203014E9DF1 AS DateTime), CAST(0x0000A203014E9DF1 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1018, N'Hearten Allies', N'Other', N'Once per encounter the character may spend a free action and make a TN4 Priest trait check; on a success all allies within 10” of him gain +1D on their next attack or defense goal roll. Additionally, the character and all allies within this power’s 10” range always enjoy +1D to any checks versus Fear effects. This requires no roll and works so long as the Paladin remains conscious.', N'Priest (Paladin) Power.<br/> 3rd level: Add +1D to the bonus given by Hearten Allies.<br/> 6th level: Gain an additional +1D to the bonus given by Hearten Allies.<br/> 9th level: Gain an additional use per encounter of Hearten Allies.<br/>', 7, N'', N'', N'107       ', N'Class', 1, CAST(0x0000A203014ECDE5 AS DateTime), CAST(0x0000A203014ECDE5 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1019, N'Killing Hands', N'Attack', N'The character’s training makes him a living weapon; he ignores normal penalties for fighting unarmed and gains +1D to his attack goal rolls when unarmed.', N'Fighting Monk Class Power.', 3, N'', N'', N'107       ', N'Class', 1, CAST(0x0000A203014F0082 AS DateTime), CAST(0x0000A203014F0082 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1020, N'Magic Songs', N'Other', N'Characters with this power channel their magic into their music, and their songs inspire and aid their allies. This power affects characters within Mage trait x 2 inches. Each turn the Bard may use a special action to make a Mage trait roll. The bonuses granted remain in effect until the beginning of the Bard’s next turn. Every two goals scored grant one of the following effects to a target:<br/> +1D Class trait goal rolls<br/> +1D to non-Class trait goal rolls<br/> +2” Move<br/> Each effect may only be granted once per round. For example, two friendly characters could not both get +1D to their Class traits, as there is only one such bonus to this trait available from Magic Songs each round. Checks scoring 4+ goals allows different effects to be distributed to the same or multiple targets.', N'Mage (Bard) Class Power.<br/> 3rd level: Add +1D and +1” to the effects of Magic Songs.<br/> 6th level: Increase the range to Mage trait x 3 inches.<br/> 9th level: Add +2D and +2” to the effects of Magic Songs.', 10, N'', N'', N'108       ', N'Class', 1, CAST(0x0000A20301515B5E AS DateTime), CAST(0x0000A20301515B5E AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1021, N'Magical Dabbler', N'Other', N'Characters with this power select one 1st level spell from the appropriate spell list for their Class. This represents their beginning arcane knowledge at 1st level.', N'Mage (Bard) Or Druid Class Power.', 3, N'', N'', N'108       ', N'Class', 1, CAST(0x0000A20301518DBF AS DateTime), CAST(0x0000A20301518DBF AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1022, N'Mighty Blow', N'Attack', N'Once per Encounter the character can announce a mighty blow against a foe he’s just hit in close combat. He adds +2D to his total damage dice for the strike.', N'Fighter Class Power<br/> 3rd level: Increase the damage of Mighty Blow to +3D.<br/> 6th level: Increase the damage of Mighty Blow to +4D.<br/> 9th level: Gain 1 additional use of Mighty Blow per encounter.', 3, N'', N'', N'109       ', N'Class', 1, CAST(0x0000A2030151B645 AS DateTime), CAST(0x0000A2030151B645 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1023, N'Path Finder', N'Movement', N'The character treats all forest and swamp difficult ground as normal, open terrain.', N'Druid Class Power.', 2, N'', N'', N'109       ', N'Class', 1, CAST(0x0000A2030151DD03 AS DateTime), CAST(0x0000A2030151DD03 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1024, N'Poison', N'Attack', N'Once per Encounter the character may use a free action to activate this ability before attacking; the target does not get its armor dice on its defense and damage resistance rolls. This attack has the Poison damage type, and if it hits, no matter what the outcome of the damage and damage resistance goal rolls, it does at least 1 HP of damage.', N'Thief (Assassin) Class Power.', 5, N'', N'', N'109       ', N'Class', 1, CAST(0x0000A2030151F5E7 AS DateTime), CAST(0x0000A2030151F5E7 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1025, N'Price of Power', N'Other', N'The character starts play with one less Fate point than normal. Less control over his destiny becomes the price for magical might. For purposes of points-match games, this “power” actually subtracts points from the character’s total cost.', N'', -3, N'', N'', N'109       ', N'Class', 1, CAST(0x0000A20301521003 AS DateTime), CAST(0x0000A20301521003 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1026, N'Shield Bash', N'Attack', N'Once per Encounter characters with this ability may make a second close combat attack using their base Class trait.', N'Man-at-Arms Fighter Class Power.', 5, N'', N'Strength + 1D', N'110       ', N'Class', 1, CAST(0x0000A2030158ADE4 AS DateTime), CAST(0x0000A2030158ADE4 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1027, N'Slayer''s Advance', N'Attack', N'When a character with this power removes a foe’s last HP, he may move up to 3” and attack another foe, or simply attack a foe already within his reach; he may only do this once per round, and may do so outside of his normal turn. He may also just advance an additional 3” should no other foes be in range.', N'Slayer Fighter Class Power.', 3, N'', N'', N'110       ', N'Class', 1, CAST(0x0000A2030159A2BE AS DateTime), CAST(0x0000A2030159A2BE AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1028, N'Spear Mastery', N'Other', N'Characters with this power are experts when fighting with spears. They gain +1D attack with quarterstaffs, spears and javelins, and +1D to any Jump checks when carrying a spear or quarterstaff. They also gain +3” Reach when wielding a quarterstaff or spear.', N'Spearmen Fighter Class Power.', 6, N'', N'', N'111       ', N'Class', 1, CAST(0x0000A2030159E4D6 AS DateTime), CAST(0x0000A2030159E4D6 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1029, N'Spell Recharge', N'Other', N'Once per Adventure, a Mage may spend a free action and make a Mage trait check to regain the use of an expended spell. The TN of this check varies based on the level of the spell the Mage tries to recover:<br/> Spell Level 1 = TN3<br/> Spell Level 2 = TN4<br/> Spell Level 3 = TN5<br/> Spell Level 4 = TN6<br/> Spell Level 5 = TN7<br/> See Chapter 4: Magic & Spells for more details on spells and spell casting.', N'Mage (Wizard) Class Power.', 3, N'', N'', N'111       ', N'Class', 1, CAST(0x0000A203015A0171 AS DateTime), CAST(0x0000A203015A0171 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1030, N'Spider-Climb', N'Movement', N'Some thieves will climb anything if it’s worth their while; once per Encounter the character may use a free action to gain the Wall Walker creature power. This lasts until the end of the Encounter.', N'Thief Acrobat Class Power.', 3, N'', N'', N'111       ', N'Class', 1, CAST(0x0000A203015A1DBB AS DateTime), CAST(0x0000A203015A1DBB AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1031, N'Tumbler', N'Defence', N'Before breaking from a combat, the character may make a TN4 Thief trait roll. If he succeeds, no models gain free attacks on him. If he fails, he must still make his break. In addition, if ever knocked back by a blow or other force, the character may make a TN4 check to stay on his feet, otherwise, he suffers knockdown as normal.', N'Thief Acrobat Class Power.<br/> 3rd Level: Add +1D to your Thief trait for Tumbler checks (total = Trait + 1D).<br/> 6th Level: Add +1D to your Thief trait for Tumbler checks (total = Trait + 2D).<br/> 9th level: Once per Encounter the character may make a free attack against any foe in base contact as he leaves combat.', 6, N'', N'', N'112       ', N'Class', 1, CAST(0x0000A203015D7AE5 AS DateTime), CAST(0x0000A203015D7AE5 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1032, N'Turn or Rebuke Undead', N'Other', N'Once per encounter, the character may use a special action and roll his Priest trait versus the highest trait of any Undead type creatures within 5” of him. Any undead creatures his result total beats cannot charge, attack, or remain within a 5” radius of him for the remainder of the encounter. All creatures affected immediately retreat 2”--this movement provokes free attacks. Should an undead creature affected by this power find itself within the Priest’s 5” radius, it must use its next available turn to move out of that radius, even it means suffering free attacks for leaving combat. Any undead Hordes his total beats by 3+ goals (4+ for Paladins) are removed from play.', N'Priest Class Power.', 5, N'', N'', N'112       ', N'Class', 1, CAST(0x0000A203015D9D86 AS DateTime), CAST(0x0000A203015D9D86 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1033, N'Use Cover', N'Defense', N'The character gains +2D to Defense goal rolls from cover instead of the normal +1D.', N'Ranger Class Power.', 2, N'', N'', N'112       ', N'Class', 1, CAST(0x0000A203015DBBB3 AS DateTime), CAST(0x0000A203015DBBB3 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1034, N'Whirling Defense', N'Defense', N'Characters with this power gain +2D when using the Full Defense maneuver (instead of the normal +1D), and when they choose Full Defense, they may name one other friendly character within 3” to make Defense goal rolls for.', N'Spearmen Fighter Class Power.', 5, N'', N'', N'113       ', N'Class', 1, CAST(0x0000A203015DF609 AS DateTime), CAST(0x0000A203015DF609 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1035, N'Adaptable', N'Other', N'Characters possessing this ability may choose any class as their favored class.', N'Human racial ability.', 3, N'', N'', N'114       ', N'Creature', 1, CAST(0x0000A2030161D5A2 AS DateTime), CAST(0x0000A2030161D5A2 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1036, N'Amorphous', N'Other', N'Creatures possessing this power have blob-like bodies with no real bone structure. Multiple foes do not gain a friends bonus in close combat against them. Amorphous creatures can also move through closed doors and even certain cracked walls at no penalty. Amorphous creatures may not use equipment of any kind, nor hold items or objectives.', N'', 2, N'', N'', N'114       ', N'Creature', 1, CAST(0x0000A2030161F3F0 AS DateTime), CAST(0x0000A2030161F3F0 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1037, N'Aquatic', N'Other', N'Creatures with this power enjoy complete freedom of movement in water and total immunity to drowning. They may make charge moves in deep water as if they were on land.', N'', 2, N'', N'', N'114       ', N'Creature', 1, CAST(0x0000A203016213DC AS DateTime), CAST(0x0000A203016213DC AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1038, N'Armor', N'Other', N'This power adds damage resistance to a creature’s Toughness in the same manner as armor worn by adventurers. Players purchase this power in one of three levels:<br/> Light: +1D Toughness (2 pts.)<br/> Medium: +1D Toughness, +1D Defense (4 pts.)<br/> Heavy: +2D Toughness, +1D Defense (6 pts.)', N'', 6, N'', N'', N'114       ', N'Creature', 1, CAST(0x0000A2030162512C AS DateTime), CAST(0x0000A2030162512C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1039, N'Bloodlust', N'Other', N'Characters possessing this fault must make a TN3 class trait check or be forced to attack or charge the nearest, active enemy that they can see. The character may choose between equidistant enemies.', N'', -2, N'', N'', N'115       ', N'Creature', 1, CAST(0x0000A203016270FA AS DateTime), CAST(0x0000A203016270FA AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1040, N'Small Breath Weapon', N'Attack', N'Dragons and other creatures possess the terrifying ability to spout death! When selecting this ability players pick a damage type from the list in the sidebar of this section. For small, medium, and large creatures, this attack uses the Small cone template located in the back of the book in the Appendix of play aids. Very large and bigger creatures use the large cone template. Center the small tip of the template on the creature’s base. Any models touched by the template must defend against the attack. The creature makes a single prime trait check vs. the Defense goal rolls of any creature touched. Damage dice carry normally against any target that fails to tie or beat the creature’s check. Once used in an encounter, breath weapons recharge and may be used again that same encounter on a Chance Roll of 3+ goals. This recharge roll occurs at the beginning of the creature’s turn, and counts as a free action', N'', 20, N'Small Cone', N'5D(small cone)', N'115       ', N'Creature', 1, CAST(0x0000A20301629B99 AS DateTime), CAST(0x0000A20301629B99 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1041, N'Large Breath Weapon', N'Attack', N'Dragons and other creatures possess the terrifying ability to spout death! When selecting this ability players pick a damage type from the list in the sidebar of this section. For small, medium, and large creatures, this attack uses the Small cone template located in the back of the book in the Appendix of play aids. Very large and bigger creatures use the large cone template. Center the small tip of the template on the creature’s base. Any models touched by the template must defend against the attack. The creature makes a single prime trait check vs. the Defense goal rolls of any creature touched. Damage dice carry normally against any target that fails to tie or beat the creature’s check. Once used in an encounter, breath weapons recharge and may be used again that same encounter on a Chance Roll of 3+ goals. This recharge roll occurs at the beginning of the creature’s turn, and counts as a free action', N'', 25, N'Large Cone', N'6D(large cone)', N'115       ', N'Creature', 1, CAST(0x0000A20301629B99 AS DateTime), CAST(0x0000A20301629B99 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1042, N'Brain Suck', N'Attack', N'The creature sucks the living brain from its victim. The creature must first make a close combat attack and win by 2+ goals. If this occurs, the creature rolls its prime trait against that of the target. If the creature wins, the target suffers the difference in lost HP. This counts as Severe damage for purposes of inflicting wounds.', N'', 5, N'Close Combat', N'', N'115       ', N'Creature', 1, CAST(0x0000A2030165841D AS DateTime), CAST(0x0000A2030165841D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1043, N'Burrowing', N'Movment', N'At the beginning of its turn, the model may spend its Move action and declare that it is burrowing. If the model does so while in base contact with an enemy model, it suffers the normal penalty for leaving close combat. Burrowing models submerge themselves underground, and cannot be targeted by conventional close combat attacks moving in this manner. They also ignore difficult ground and may move through obstacles and intervening models. A burrowing model must re-emerge at the end of its movement. It may settle on any flat surface on the board that can support its base. Burrowing models gain +5” to their Move value on turns when they burrow. A burrowing model may perform a Charge maneuver, and adds a total of +9” to its Move for any charges. A burrowing model may choose to begin any encounter submerged. This allows the model to count as Hiding with a +2D bonus to resist detection checks. As long as it chooses not to move, it may remain submerged and Hiding until such time as it chooses to move.<br/> A burrowing creature may choose to leave an encounter by spending its move to burrow; its player declares the creature is leaving the battle not to return. It drops any objectives it carries.', N'', 10, N'', N'', N'116       ', N'Creature', 1, CAST(0x0000A203016A9EBC AS DateTime), CAST(0x0000A203016A9EBC AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1044, N'Contacts', N'Other', N'Characters possessing this ability gain +1D to their Class trait during the Recovery Phase on Item Acquisition and Mercenary Work checks.', N'Human racial ability.', 2, N'', N'', N'116       ', N'Creature', 1, CAST(0x0000A203016AB79D AS DateTime), CAST(0x0000A203016AB79D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1045, N'Curse', N'Attack', N'Cursing creatures inflicts an ongoing pall of ill luck upon the target. A character or creature may only ever suffer from one curse at a time. The cursing creature rolls its prime trait versus the Class trait or prime trait of the target. If the cursing creature wins by 2+ goals, the target is cursed, and immediately makes a Chance Roll. If the roll comes up zero goals the character suffers a -2D penalty to all trait checks until the beginning of the next Encounter. At the beginning of the next Encounter, and every encounter thereafter until the curse is lifted, the character makes another Chance Roll. If he scores no goals, the -2D penalty continues or resumes. Curses may only be removed during the Recovery Phase. See Chapter 7: Adventures & Campaigns for more details.', N'', 10, N'10"', N'', N'117       ', N'Creature', 1, CAST(0x0000A203016B009F AS DateTime), CAST(0x0000A203016B009F AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1046, N'Dark Vision', N'Other', N'Creatures possessing this power ignore the effects of Darkness adventure conditions.', N'', 2, N'', N'', N'117       ', N'Creature', 1, CAST(0x0000A203016B4A40 AS DateTime), CAST(0x0000A203016B4A40 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1047, N'Deadly', N'Other', N'The creature possesses a combination of experience and inherent deadliness that make it a very dangerous foe. Every level in this power adds +1D to the creature’s prime trait (i.e., Animal, Humanoid, Monster, or Undead). Adding +1D indicates an experienced or mature creature, +2D suggests a lot of hunting or battle experience, and +3D speaks to a very ancient or deadly (or both!) foe indeed. Adding this power to a Horde removes the damage cap against heroes. See Part II of this chapter (below) for more details.', N'', 6, N'', N'', N'117       ', N'Creature', 1, CAST(0x0000A203016B9D74 AS DateTime), CAST(0x0000A203016B9D74 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1048, N'Death Touch', N'Attack', N'Whether due to an acidic or magically destructive body, close contact with creatures possessing this power can cause terrible damage! Any character or creature who makes a close combat attack against, or suffers a close combat attack from the creature, must make a Dungeon Hazard check or suffer a 5D damage automatic hit. This hit counts as Severe Damage for purposes of wounding. When the creature attacks, resolve the damage from Death Touch separately from the actual melee attack that the creature makes. So an acidic beast with bludgeoning pseudopods that strikes a foe rolls for damage with the pseudopod strike first, then the check for Death Touch is made, and if it is failed, the damage for Death Touch is rolled. This power adds +1D to the creature’s Reward Level.', N'', 20, N'', N'5D', N'117       ', N'Creature', 1, CAST(0x0000A2030171CD2C AS DateTime), CAST(0x0000A2030171CD2C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1049, N'Energy Drain', N'Attack', N'The creature drains vital energy from its victim. The creature rolls its prime trait against the prime or Class trait of the target. If the creature wins by 1 - 2 goals, the target counts as stunned. Every 3 goals the creature wins this check by subtract 1” of Move value and 1D from all of the target’s traits. A target may be drained multiple times, but only the most severe drain result takes effect. For example, a target hit with -1”/-1D drain subsequently hit with a -2”/-2D drain would only suffer the worse of the two drain effects (-2”/-2D). The effects of a drain last until the end of the Encounter. During an Encounter in which he is drained, a character may use a free action and spend 1 Fate to automatically remove a drain effect. This power adds +1D to the creature’s Reward Level.', N'', 20, N'', N'', N'118       ', N'Creature', 1, CAST(0x0000A2030172B75C AS DateTime), CAST(0x0000A2030172B75C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1050, N'Entrap', N'Other', N'The creature is capable of entrapping foes with a web-based or other immobilizing substance. This attack may be used in close combat or within 5” range. The attacker makes a prime trait check versus the target’s Class or prime trait. If the attack hits the target must make a successful Dungeon or Wilderness Adventure Challenge (target’s choice) check or be Immobilized. Each turn he may use a free action to attempt the check again to try to free himself. If he succeeds he breaks free, but failures means he remains rooted to the spot. Another character in base contact may use a Special action to attempt to free the trapped character by also making a Dungeon Adventure Challenge check.', N'', 10, N'Close Combat or 5"', N'', N'119       ', N'Creature', 1, CAST(0x0000A20301730FF7 AS DateTime), CAST(0x0000A20301730FF7 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1051, N'Evasion', N'Defense', N'Creatures add their dice in Evasion to their Defense trait.', N'', 4, N'', N'', N'119       ', N'Creature', 1, CAST(0x0000A2030173739F AS DateTime), CAST(0x0000A2030173739F AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1052, N'Extra Attack', N'Other', N'Whenever the creature spends a combat action to attack, it may make a second attack against another legal target within its reach or range. Extra attacks may be used after charging, but the second attack does not receive the charge bonus. This adds +1D to the creature’s Reward Level. This power provides a quick and easy way to scale-up ordinary, lesser creatures to face higher level player characters.', N'', 10, N'', N'', N'119       ', N'Creature', 1, CAST(0x0000A20301738D70 AS DateTime), CAST(0x0000A20301738D70 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1053, N'Fated', N'Other', N'Fated creatures are special; they possess a pool of 3 Fate points for every level in this power. Being Fated grants the creature a Wound Capacity identical to a Classed character. These Fate points may be spent in the normal fashion as detailed in Chapter 2: Action & Combat. When spending Fate to regain lost HP, creatures regain 1 + Reward Die level HP. This power adds +1D per level to the creature’s total Reward Level. A creature may possess a maximum of two levels in this power, and this power is noted in the creature write-ups and either “Fated 1” or “Fated 2.” Most creatures in the bestiary possess the Fated 1 version of this power; upgrading a creature from Fated 1 to Fated 2 is an excellent way to scale the creature up to face higher level player characters. A creature may either possess this power or a Class trait, but not both.', N'', 20, N'', N'', N'120       ', N'Creature', 1, CAST(0x0000A2030178F837 AS DateTime), CAST(0x0000A2030178F837 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1054, N'First to Fight', N'Attack', N'Characters possessing this ability add +6” on charge moves instead of the normal +4” .', N'Orc racial ability', 2, N'', N'', N'120       ', N'Creature', 1, CAST(0x0000A20301791C16 AS DateTime), CAST(0x0000A20301791C16 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1055, N'Floater', N'Movement', N'Creatures possessing this power move via levitation. This is not flight, and they cannot float out of reach of close combat, but they do ignore difficult ground and may move over chasms and pits as if they were clear ground.', N'', 5, N'', N'', N'120       ', N'Creature', 1, CAST(0x0000A203017949F4 AS DateTime), CAST(0x0000A203017949F4 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1056, N'Flying', N'Movement', N'At the beginning of its turn, the model may spend its Move action and declare that it is in flight. If the model does so while in base contact with an enemy model, it suffers the normal penalty for leaving close combat. Flying models are considered to be airborne, and cannot be targeted by conventional close combat attacks while moving in flight. They also ignore difficult ground, chasms, and most vertical obstacles. A flying model must land at the end of its movement. It may land on any flat surface on the board that can support its base. Flying models gain +5” to their Move value on turns when they fly. A flying model may perform a Charge maneuver, and adds a total of +9” to its Move for any charges.', N'', 10, N'', N'', N'121       ', N'Creature', 1, CAST(0x0000A20301796431 AS DateTime), CAST(0x0000A20301796431 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1057, N'Gaseous Form', N'Other', N'Once per adventure, the creature uses a free action and takes a gaseous form. In this state it cannot be affected by any attacks that would require it to test against Toughness for damage. A model using Gaseous Form cannot affect other models in combat. A model using Gaseous Form may move or charge through walls, other models, and solid objects as if they were open ground. Gaseous Form models are also immune to the effects of falls, and are not knocked down after falling from any height. Gaseous models may not pick up or carry models or objective counters, and drop any objective counters or models they’re currently carrying when they activate the power. Gaseous form lasts until the beginning of the gaseous creature’s next turn.', N'', 15, N'', N'', N'121       ', N'Creature', 1, CAST(0x0000A203017982FD AS DateTime), CAST(0x0000A203017982FD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1058, N'Hideous Strength', N'Other', N'Add +1D or +2D to the character’s Strength trait. Lower all TN’s for bursting through doors by -1. Medium creatures with Hideous Strength count as Large creatures for purposes of Knockback. Creatures of Large size or greater possessing Hideous Strength add +1” per die in the power to their knockback total when they knock foes back.', N'', 5, N'', N'', N'121       ', N'Creature', 1, CAST(0x0000A203017AA1F8 AS DateTime), CAST(0x0000A203017AA1F8 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1059, N'Fast Reflexes', N'Other', N'Characters of creatures posessing this ability add +2 to their Initiative score.', N'Elven racial ability', 2, N'', N'', N'119       ', N'Creature', 1, CAST(0x0000A203017B74E8 AS DateTime), CAST(0x0000A203017B74E8 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1060, N'Insubstantial', N'Other', N'Creatures with this power possess ghostly, vaporous, or wispy bodies that prove more difficult to hurt and allow them greater ease of movement. Insubstantial characters gain +2D to Toughness against any non-magical attacks. They may also pass through or under doors or walls that the GM or players decide are porous enough to allow mist or smoke to seep through.', N'', 6, N'', N'', N'122       ', N'Creature', 1, CAST(0x0000A203018169CD AS DateTime), CAST(0x0000A203018169CD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1061, N'Invisibility', N'Other', N'Creatures with this power may use a special action to turn Invisible. For more on the effects of being invisible, see Chapter 2: Actions & Combat. Every time the creature attacks it must make a TN4 prime trait check to maintain its invisibility. If it becomes visible, it may use a special action to turn invisible again on a subsequent turn. Creatures possessing this power add +1D to their reward level.', N'', 20, N'', N'', N'122       ', N'Creature', 1, CAST(0x0000A20301818FDD AS DateTime), CAST(0x0000A20301818FDD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1062, N'Life Drain', N'Attack', N'The creature drains the very life essence from its victim. The creature must first make a close combat attack and win by 3+ goals. If this occurs, the attack inflicts 1 HP of damage (no resistance roll is made) and the creature rolls its prime trait against the prime or Class trait of the target. If the creature wins, the target suffers 1 Wound, and the creature gains 1 Fate point useable at any time during the adventure. Inflicting a wound in this manner immediately forces a check on the Save vs. Death! table. Fate points may be spent as normal to automatically pass this check.<br/> A character who fails this check and dies could return as the living dead! The difficulty to resurrect him increases by +1, and if the first attempt fails, his comrades must either destroy his body or the GM takes his character sheet and replaces his Class trait with the Undead trait. Properly disposing of the body, and summoning the will to do so, requires a Dungeon Adventure Challenge check. For more Resurrecting dead characters, players should see Chapter 7: Adventures & Campaigns. The newly Undead character retains all of his previous abilities, but also gains the Life Drain power and adds +1D to Strength. This power has no effect on Undead creatures. Only Undead and Monster types should take this power. Creatures possessing this power add +1D to their reward level.', N'', 10, N'Close Combat', N'', N'123       ', N'Creature', 1, CAST(0x0000A2030181C550 AS DateTime), CAST(0x0000A2030181C550 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1063, N'Lone Threat', N'Other', N'Creatures with this power can stand alone in an Encounter as the entire threat! They’re so important, significant, or powerful, they can act multiple times in a single round. Depending upon their rating in this ability, the GM should give them multiple turns in the initiative for each round of combat. Each level in this ability entitles the creature to an additional turn of action during a round. The GM should subtract 5 from the creature’s base initiative score to determine its second turn, and if it had a third turn, he would then subtract 5 from that score to determine its third turn.<br/> For example, an elder Dragon is a level 2 Lone Threat. His initiative score for a battle is 17. He would take a second turn each round on 12, and a third on 7.<br/> Each level in this power adds +1D to the creatures Reward Level.', N'', 30, N'', N'', N'124       ', N'Creature', 1, CAST(0x0000A20301850A78 AS DateTime), CAST(0x0000A20301850A78 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1064, N'Low Morale', N'Other', N'Characters with this fault fight best against foes who don’t fight back! Any character who inflicted HP loss on a Low Morale model in his last turn gains +1D to Defense on that character’s next attack against him.', N'Gnoll racial ability', -2, N'', N'', N'124       ', N'Creature', 1, CAST(0x0000A2030185418C AS DateTime), CAST(0x0000A2030185418C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1065, N'Lurker', N'Other', N'Creatures possessing this power literally hide in plain sight! When the characters encounter this creature, they do not immediately recognize it as a threat. No matter what their position on the tabletop, Lurkers count as having cover to hide in, and they gain +2D against any class checks to detect them.<br/> Some Lurkers are Immobile; they cannot move from their starting position on the tabletop.<br/> In GM-run games Lurker creatures should not be placed, but instead their location should be noted by the GM on a side map, and represented on the tabletop by an innocuous piece of terrain. In points-match games, players running lurkers should note their location on a slip of paper, fold it, and place it where both players can see it. Opposing players may call for detection checks on any piece of terrain they believe the lurker is concealed within.', N'', 4, N'', N'', N'124       ', N'Creature', 1, CAST(0x0000A20301856850 AS DateTime), CAST(0x0000A20301856850 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1066, N'Magic Supression', N'Attack', N'The creature blasts anti-magic energy in a large cone at targets. The creature makes a single prime trait roll opposed the targets’ Class trait rolls. Any character who fails the check may not cast spells or enjoy the benefits of any magic items or weapons until the beginning of the of the attacking creature’s next turn. Once used in an encounter, this power can recharge and may be used again that same encounter on a Chance Roll of 3+ goals. This recharge roll occurs at the beginning of the creature’s turn, and counts as a free action.', N'', 20, N'Large Cone', N'', N'124       ', N'Creature', 1, CAST(0x0000A2030185997C AS DateTime), CAST(0x0000A2030185997C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1067, N'Melee Attack', N'Attack', N'The creature possesses a natural attack that acts like a weapon to increase its damage and ability to hit. Based on the points spent, this power adds up to +2D to its Strength for damage and +2D to its prime trait for attacks. Add up to 5” of reach to allow the creature to make close combat attacks at range. This costs 1 pt. per inch.', N'', 13, N'Close Combat', N'', N'125       ', N'Creature', 1, CAST(0x0000A2030185D6A2 AS DateTime), CAST(0x0000A2030185D6A2 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1068, N'Mind Blast', N'Attack', N'Some creatures possess powerful, alien minds that lash out like psychic whips to stun their targets. This attack uses the Small cone template located in the back of the book in the Appendix of play aids. Center the small tip of the template on the creature’s base. Any models touched by the template must defend against the attack. The creature makes a single prime trait check vs. the Class or prime trait goal rolls of any creature touched. Any target beaten by 2+ goals is Stunned.', N'', 10, N'', N'', N'126       ', N'Creature', 1, CAST(0x0000A203018A0B81 AS DateTime), CAST(0x0000A203018A0B81 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1069, N'Multi-Limbed', N'Attack', N'A creature with this power possesses multiple arms, tentacles, or other combat-worthy appendages. Whenever this creature uses a combat action it may elect to add +2D to an attack on a single foe or make one attack against every legal target within its reach. The creature makes a single attack goal roll while its targets each make separate defense goal rolls. The creature makes separate damage goal rolls against each target struck by the attack. This adds +1D to the creature’s Reward Level.', N'', 10, N'', N'', N'126       ', N'Creature', 1, CAST(0x0000A203018A2D6E AS DateTime), CAST(0x0000A203018A2D6E AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1070, N'Pack fighter', N'Attack', N'Characters with this ability gain +1 Re-roll to attack and defense goal rolls when they outnumber a foe in close combat.', N'Gnoll racial ability', 1, N'', N'', N'126       ', N'Creature', 1, CAST(0x0000A203018A6D37 AS DateTime), CAST(0x0000A203018A6D37 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1071, N'Petrification', N'Attack', N'This attack can turn its target to stone! The default version of this attack is close combat, but it may be upgraded to a 10” range for additional points. The upgraded ranged version may still be used in close combat as normal. Either way, the attacking model makes a prime trait check versus the target’s Defense. If the attack hits, the attacker rolls his prime trait again (plus any carried dice), this time versus the defender’s class trait. If the attacker wins this opposed check by 3+ goals, the target is petrified, and also suffers 1 Wound. A petrified model and all of its possessions count as a statue. It may not move, attack, or otherwise interact with its environment. It does provide cover to models in base contact, but itself is immune to any further damage effects from any cone or radius attacks. Petrification counts as being Cursed for purposes of campaign play.', N'', 15, N'Close Combat', N'', N'127       ', N'Creature', 1, CAST(0x0000A203018ACAC1 AS DateTime), CAST(0x0000A203018ACAC1 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1072, N'Petrification Ranged', N'Attack', N'This attack can turn its target to stone! The default version of this attack is close combat, but it may be upgraded to a 10” range for additional points. The upgraded ranged version may still be used in close combat as normal. Either way, the attacking model makes a prime trait check versus the target’s Defense. If the attack hits, the attacker rolls his prime trait again (plus any carried dice), this time versus the defender’s class trait. If the attacker wins this opposed check by 3+ goals, the target is petrified, and also suffers 1 Wound. A petrified model and all of its possessions count as a statue. It may not move, attack, or otherwise interact with its environment. It does provide cover to models in base contact, but itself is immune to any further damage effects from any cone or radius attacks. Petrification counts as being Cursed for purposes of campaign play.', N'', 25, N'10"', N'', N'127       ', N'Creature', 1, CAST(0x0000A203018ACAC1 AS DateTime), CAST(0x0000A203018ACAC1 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1073, N'Preternatural Quickness', N'Other', N'The creature possesses unnatural quickness. When a foe misses this creature with an attack, it may move out of combat a distance of 3” plus the number of goals its defense roll exceeded the foe’s attack roll by. This break from combat ignores any free attacks, and the creature model may move through enemy models to complete it.', N'', 5, N'', N'', N'127       ', N'Creature', 1, CAST(0x0000A203018B4C39 AS DateTime), CAST(0x0000A203018B4C39 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1074, N'Ranged Attack Rank 1', N'Attack', N'The creature possesses a natural attack that acts like a ranged weapon. The attack possesses a base damage of 4D, but up to +2D may be added to this for 2 pts. per die.', N'', 11, N'15"', N'4D', N'127       ', N'Creature', 1, CAST(0x0000A2040000422D AS DateTime), CAST(0x0000A2040000422D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1075, N'Ranged Attack Rank 2', N'Attack', N'The creature possesses a natural attack that acts like a ranged weapon. The attack possesses a base damage of 4D, but up to +2D may be added to this for 2 pts. per die.', N'', 16, N'20"', N'4D', N'127       ', N'Creature', 1, CAST(0x0000A2040000422D AS DateTime), CAST(0x0000A2040000422D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1076, N'Ranged Attack Rank 3', N'Attack', N'The creature possesses a natural attack that acts like a ranged weapon. The attack possesses a base damage of 4D, but up to +2D may be added to this for 2 pts. per die.', N'', 21, N'26"', N'4D', N'127       ', N'Creature', 1, CAST(0x0000A2040000422D AS DateTime), CAST(0x0000A2040000422D AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1077, N'Regeneration', N'Other', N'The creature regenerates 2 lost HP per round at the beginning of each of its turns. This regeneration occurs automatically unless the creature is reduced to zero HP. When this occurs it must first make a TN5 prime trait check or remain at zero HP. This check is a free action. Opposing characters may remove a zero HP regenerating creature from play if they move into base contact and spend the remainder of their turn dispatching it. This allows them to finish the creature before its regeneration can “catch up.”', N'', 10, N'', N'', N'128       ', N'Creature', 1, CAST(0x0000A20400045433 AS DateTime), CAST(0x0000A20400045433 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1078, N'Severe Damage', N'Attack', N'One of the creature’s attacks becomes Severe. If the attack causes a wound, it instead cases two wounds. For more on damage and wounds, see Chapter 2: Action & Combat. This power adds +1D to the creature’s Reward Level.', N'', 10, N'', N'', N'128       ', N'Creature', 1, CAST(0x0000A2040004F843 AS DateTime), CAST(0x0000A2040004F843 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1079, N'Sharp Senses', N'Other', N'Creatures gain +1D to their prime trait for spotting hiding models and other perception-based Adventure Challenge checks.', N'', 2, N'', N'', N'128       ', N'Creature', 1, CAST(0x0000A204000647CE AS DateTime), CAST(0x0000A204000647D1 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1080, N'Slow', N'Movement', N'Characters possessing this fault only add +2” on Charge moves instead of the normal +4”.', N'Dwarf racial ability', -2, N'', N'', N'128       ', N'Creature', 1, CAST(0x0000A2040006F17E AS DateTime), CAST(0x0000A2040006F17E AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1081, N'Sneaky', N'Other', N'Characters and creatures possessing this trait gain +1D to Class or prime trait goal for Dungeion Hazard checks.', N'Halfling facial ability', 1, N'', N'', N'129       ', N'Creature', 1, CAST(0x0000A20900AB072C AS DateTime), CAST(0x0000A20900AB072C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1082, N'Smother', N'Attack', N'Creatures possessing this power can envelop their targets, smothering them to death! The medium for this could be water, mud, magical blackness, etc., but the mechanics work the same. The creature makes a close combat attack on its target and it must beat the defense goal roll by 2+ goals. If this occurs, the target counts as trapped and in danger of being smothered. At the beginning of each of his turns, the target must succeed on a TN5 Class trait check or suffer the loss of a number of HP equal to 4 - Chance Dice roll. Characters cannot roll to resist this damage. Thieves and Rangers gain +1D on these checks. If the target succeeds on the check, he escapes the effect. Although it’s a free action, only one attempt at escape may be made per turn. While entrapped, the character may do nothing else. A friendly character may use a Special action to attempt to free the trapped character using the same Dungeon Adventure Challenge check as above. While entrapping a target, the attacking creature may not move or perform any other combat actions save maintaining the entrapment. A creature may attempt to entrap multiple adjacent foes if it is larger than them. It may entrap up to two smaller foes at once.', N'', 20, N'', N'', N'129       ', N'Creature', 1, CAST(0x0000A20900AB9C57 AS DateTime), CAST(0x0000A20900AB9C57 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1083, N'Spell Steal', N'Attack', N'The creature can suck the magic from the target’s body! It targets a spell caster (Druid, Mage, or Priest) and makes an opposed roll of prime trait versus the target’s Class trait. If the creature wins, it selects one known spell the target has not yet cast and makes another prime trait check depending upon the spell’s level. If enough goals are scored, the spell counts as having been cast, but with no effect. The TNs for spell levels are as follows:<br/> Level 1 = TN4<br/> Level 2 = TN5<br/> Level 3 = TN6<br/> Level 4 = TN7<br/> Level 5 = TN8<br/> No matter its level, a creature may use the magic from a stolen spell to add +1D to its next attack or defense goal roll, or to heal 1 lost HP. Any healing occurs immediately after the spell is stolen.', N'', 15, N'15"', N'', N'130       ', N'Creature', 1, CAST(0x0000A20900AD2F8F AS DateTime), CAST(0x0000A20900AD2F8F AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1084, N'Stealth', N'Other', N'Creatures with this power gain +1D to their prime trait for hiding contests.', N'', 2, N'', N'', N'130       ', N'Creature', 1, CAST(0x0000A20900AD7B14 AS DateTime), CAST(0x0000A20900AD7B14 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1085, N'Tail Attack', N'Attack', N'The characters possess a whipping tail that gives it +1D to Trip attack maneuvers.', N'Lizzardman racial ability', 1, N'', N'', N'130       ', N'Creature', 1, CAST(0x0000A20900ADF76E AS DateTime), CAST(0x0000A20900ADF76E AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1086, N'Tank', N'Movement', N'Character possessing this ability ignores movement penalties associated with wearing heavy armor and carrying shields.', N'Dwarf racial ability', 2, N'', N'', N'131       ', N'Creature', 1, CAST(0x0000A20900AF654B AS DateTime), CAST(0x0000A20900AF654B AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1087, N'Terrifying Aura', N'Other', N'Some creatures project an aura so alien and terrifying that approaching or even attacking them proves difficult. At the beginning of its turn, any enemy model within 10” of a creature possessing Terrifying Aura must make a Class trait check or be Terrified. This counts as a Fear effect, and the TN varies based on the degree of the power (see Cost, below). Models possessing Terrifying Aura receive +2D on attack and defense goal rolls against models they have Terrified. Models using Held Turns make their check for this trait when they first activate and elect to go on hold.<br/> Once a model has passed its Terrifying Aura check against a foe, it does not need to make another one against that particular foe for the remainder of the Encounter.<br/> Models possessing this trait ignore the effects of other equal or lesser Terrifying Auras.<br/>', N'TN3 = 6 pts.; TN4 = 10 pts.; TN5 = 15 pts.', 0, N'', N'', N'131       ', N'Creature', 1, CAST(0x0000A20900AF9F9C AS DateTime), CAST(0x0000A20900AF9F9C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1088, N'True Name', N'Other', N'Names possess power, and knowing the true names of certain creatures, mainly Daemons, can grant a character an edge against them in combat. Learning a creature’s true name requires an Arcane Adventure Challenge check with a TN modifier based on the target creature’s age and power. See the Cost section below for the breakdown of modifiers and their accompanying points costs. Trying to learn a creature’s true name in the midst of a combat with that creature imposes a further +1 to the final TN. GMs might want to set up a roleplay or non-combat encounter prior to meeting the creature where certain characters can research the target creature and learn its history and secrets. Then a check could be made against its base TN.<br/> Knowing a creature’s true name means it’s easier to slay! Once a character knows a creature’s true name, he may spend a special action to automatically place a sigil signifying its true name on a target character’s person, weapons, and armor. The target character must be in base contact. Characters augmented by true name sigils may then automatically re-roll one defense roll per encounter against the target creature, or force the target creature to re-roll one attack goal roll per encounter (taking the worse of the two results). If the learning of the creature’s true name occurred during a non-combat scene, the character who learned the knowledge has the opportunity to place sigils on 2 + Chance Roll characters (including himself).<br/> Additionally, creatures wounded by characters augmented with true name sigils may not regenerate or heal lost HP from those attacks for the remainder of the encounter. GMs should mark those lost HP with an “X” instead of a slash in the creature’s HP boxes.', N'True Names place a creature at a disadvantage, so they reduce the creature’s cost based on the TN of the Class trait check: TN +1 = -15 pts.; TN +2 = -10 pts.; TN +3 = -5 pts.', -15, N'', N'', N'132       ', N'Creature', 1, CAST(0x0000A20900AFE9AF AS DateTime), CAST(0x0000A20900AFE9AF AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1089, N'Vigor', N'Other', N'Ther creatuer can sustain more punishment thatn normal. Add 1 HP per 1 pt. spent. Players may spend up to 10 pts. on this power.', N'1 - 10 pts', 10, N'', N'', N'132       ', N'Creature', 1, CAST(0x0000A20900BA1D5C AS DateTime), CAST(0x0000A20900BA1D5C AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1090, N'Swift', N'Movment', N'Add 1" to Move value for every 1 pt spent. Max  of + 6"', N'1 pt per 1" Max 6 pts', 6, N'', N'', N'132       ', N'Creature', 1, CAST(0x0000A20900BAA1CC AS DateTime), CAST(0x0000A20900BAA1CC AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1091, N'Wailing Scream', N'Attack', N'Banshees and other supernatural creatures possess haunting wails that hit as hard as a crossbow quarrel. This attack uses the Small cone template located in the back of the book in the Appendix of play aids. Center the small tip of the template on the creature’s base. Any models touched by the template must defend against the attack. The creature makes a single prime trait check vs. the Defense goal rolls of any creature touched. Damage dice carry normally against any target that fails to tie or beat the creature’s check. Targets do not get to add normal armor bonuses to damage resistance goal rolls, but bonuses from spells or magic items are allowed.', N'', 15, N'Small Cone', N'4D', N'132       ', N'Creature', 1, CAST(0x0000A20900BAE4D2 AS DateTime), CAST(0x0000A20900BAE4D2 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1092, N'Wall Walker', N'Movement', N'The creature can move or charge along walls and ceilings as if they were normal ground. This would potentially allow a creature to begin a game hidden on a dungeon ceiling, cliff overhang, or other inaccessible spot.', N'', 5, N'', N'', N'133       ', N'Creature', 1, CAST(0x0000A20900BB0F1B AS DateTime), CAST(0x0000A20900BB0F1B AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1093, N'Small', N'Other', N'-1" Move, -1D Strength', N'', -3, N'', N'', N'55        ', N'Creature', 1, CAST(0x0000A2090166C913 AS DateTime), CAST(0x0000A2090166C913 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1094, N'Large', N'Other', N'+1" Move, +1D Strength; +4 HP; Large Target', N'', 5, N'', N'', N'55        ', N'Creature', 1, CAST(0x0000A2090172A961 AS DateTime), CAST(0x0000A2090172A961 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1226, N'Slow', N'Movement', N'Characters possessing this fault only add +2” on Charge moves instead of the normal +4”.', N'Dwarf racial ability', -2, N'', N'', N'128       ', N'Creature', 0, CAST(0x0000A21B00675BBA AS DateTime), CAST(0x0000A21B00675BBA AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1227, N'Tank', N'Movement', N'Character possessing this ability ignores movement penalties associated with wearing heavy armor and carrying shields.', N'Dwarf racial ability', 2, N'', N'', N'131       ', N'Creature', 0, CAST(0x0000A21B00675BBA AS DateTime), CAST(0x0000A21B00675BBA AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1228, N'Bodyguard', N'Defense', N'Once per Encounter, characters using this power can absorb the damage from a successful attack against a friendly model within 3”of them; the attacker rolls whatever damage dice he scored against the original target against the Bodyguard character instead. Characters may spend 1 Fate per use for additional uses of this ability.', N'Man-at-Arms Fighter Class Power.', 3, N'', N'', N'100       ', N'Class', 0, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1229, N'Defensive Fighter', N'Defense', N'When characters possessing this power fight with a one-handed weapon and shield, multiple foes and Hordes in base contact gain no friends bonus against them.', N'Man-at-Arms Fighter Class Power.', 5, N'', N'', N'104       ', N'Class', 0, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1230, N'Mighty Blow', N'Attack', N'Once per Encounter the character can announce a mighty blow against a foe he’s just hit in close combat. He adds +2D to his total damage dice for the strike.', N'Fighter Class Power<br/> 3rd level: Increase the damage of Mighty Blow to +3D.<br/> 6th level: Increase the damage of Mighty Blow to +4D.<br/> 9th level: Gain 1 additional use of Mighty Blow per encounter.', 3, N'', N'', N'109       ', N'Class', 0, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1231, N'Shield Bash', N'Attack', N'Once per Encounter characters with this ability may make a second close combat attack using their base Class trait.', N'Man-at-Arms Fighter Class Power.', 5, N'', N'Strength + 1D', N'110       ', N'Class', 0, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1240, N'Low Morale', N'Other', N'Characters with this fault fight best against foes who don’t fight back! Any character who inflicted HP loss on a Low Morale model in his last turn gains +1D to Defense on that character’s next attack against him.', N'Gnoll racial ability', -2, N'', N'', N'124       ', N'Creature', 0, CAST(0x0000A21B0122DD73 AS DateTime), CAST(0x0000A21B0122DD73 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1241, N'Pack fighter', N'Attack', N'Characters with this ability gain +1 Re-roll to attack and defense goal rolls when they outnumber a foe in close combat.', N'Gnoll racial ability', 1, N'', N'', N'126       ', N'Creature', 0, CAST(0x0000A21B0122DD73 AS DateTime), CAST(0x0000A21B0122DD73 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1242, N'Sharp Senses', N'Other', N'Creatures gain +1D to their prime trait for spotting hiding models and other perception-based Adventure Challenge checks.', N'', 2, N'', N'', N'128       ', N'Creature', 0, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1244, N'Use Cover', N'Defense', N'The character gains +2D to Defense goal rolls from cover instead of the normal +1D.', N'Ranger Class Power.', 2, N'', N'', N'112       ', N'Class', 0, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1245, N'Bow Mastery', N'Attack', N'Characters with this power count themselves among the land’s greatest archers. They enjoy the following benefits when wielding bows, crossbows, and great bows:<br/> Long Shot: <br/>Spend 1 Fate pt. add up to 10” of additional range to this shot; if the shot hits, he immediately gains back the 1 Fate cost.<br/> Running Shot:<br/> Once per encounter he may charge and shoot in the same round. He still may not fire his bow while in base contact with an enemy model.<br/> Sure Shot:<br/> +1D to damage', N'Ranger (Archer) Class Power.<br/> 3rd level: Add +1D to Sure Shot (total of +2D).<br/> 6th level: Add +1D to Sure Shot (total of +3D).<br/> 9th level: Once per Encounter you may make two ranged attacks in the same turn.<br/>', 10, N'', N'', N'103       ', N'Class', 0, CAST(0x0000A21B012474F4 AS DateTime), CAST(0x0000A21B012474F4 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1272, N'Dark Vision', N'Other', N'Creatures possessing this power ignore the effects of Darkness adventure conditions.', N'', 2, N'', N'', N'117       ', N'Creature', 0, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1273, N'Small', N'Other', N'-1" Move, -1D Strength', N'', -3, N'', N'', N'55        ', N'Creature', 0, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1274, N'Dirty Strike', N'Attack', N'The character gains an extra +2D to attack goal rolls against a foe he enjoys a friends bonus against.', N'Thief Class Power.', 3, N'', N'', N'104       ', N'Class', 0, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1275, N'Spider-Climb', N'Movement', N'Some thieves will climb anything if it’s worth their while; once per Encounter the character may use a free action to gain the Wall Walker creature power. This lasts until the end of the Encounter.', N'Thief Acrobat Class Power.', 3, N'', N'', N'111       ', N'Class', 0, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1276, N'Tumbler', N'Defence', N'Before breaking from a combat, the character may make a TN4 Thief trait roll. If he succeeds, no models gain free attacks on him. If he fails, he must still make his break. In addition, if ever knocked back by a blow or other force, the character may make a TN4 check to stay on his feet, otherwise, he suffers knockdown as normal.', N'Thief Acrobat Class Power.<br/> 3rd Level: Add +1D to your Thief trait for Tumbler checks (total = Trait + 1D).<br/> 6th Level: Add +1D to your Thief trait for Tumbler checks (total = Trait + 2D).<br/> 9th level: Once per Encounter the character may make a free attack against any foe in base contact as he leaves combat.', 6, N'', N'', N'112       ', N'Class', 0, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1277, N'Wall Walker', N'Movement', N'The creature can move or charge along walls and ceilings as if they were normal ground. This would potentially allow a creature to begin a game hidden on a dungeon ceiling, cliff overhang, or other inaccessible spot.', N'', 5, N'', N'', N'133       ', N'Creature', 0, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[GoalsPowers] ([GoalsPowerId], [Name], [Type], [Effect], [Notes], [Cost], [Range], [Damage], [Page], [PowerClass], [Template], [CreatedDate], [ModifiedDate]) VALUES (1280, N'Armor', N'Other', N'This power adds damage resistance to a creature’s Toughness in the same manner as armor worn by adventurers. Players purchase this power in one of three levels:<br/> Light: +1D Toughness (2 pts.)<br/> Medium: +1D Toughness, +1D Defense (4 pts.)<br/> Heavy: +2D Toughness, +1D Defense (6 pts.)', N'', 6, N'', N'', N'114       ', N'Creature', 0, CAST(0x0000A21F01434C38 AS DateTime), CAST(0x0000A21F01434C38 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsPowers] OFF
/****** Object:  Table [dbo].[GoalsEquipment]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsEquipment](
	[GoalsEquipmentId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Effects] [nvarchar](max) NOT NULL,
	[Rarity] [nvarchar](50) NOT NULL,
	[Cost] [int] NOT NULL,
	[EquipmentClass] [nvarchar](50) NOT NULL,
	[Page] [nvarchar](10) NOT NULL,
	[Template] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsEquipment] PRIMARY KEY CLUSTERED 
(
	[GoalsEquipmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsEquipment] ON
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1000, N'Chainmail', N'Body Armor', N'+1D Toughness', N'Uncommon', 2, N'Armor', N'72        ', 1, CAST(0x0000A201016BB40D AS DateTime), CAST(0x0000A201016BB40D AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1001, N'Large Shield', N'Shield', N'+2D Defense, -1" Move ', N'Uncommon', 4, N'Armor', N'72        ', 1, CAST(0x0000A201016DC40F AS DateTime), CAST(0x0000A201016DC40F AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1002, N'Partial Platemail', N'Body Armor', N'+1D Toughness, +1D Defense, -1" Move', N'Uncommon', 3, N'Armor', N'72        ', 1, CAST(0x0000A201016E16AA AS DateTime), CAST(0x0000A201016E16AA AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1003, N'Platemail', N'Body Armor', N'+1D Toughness, +1D Defense, -1" Move', N'Rare', 4, N'Armor', N'72        ', 1, CAST(0x0000A201016E9236 AS DateTime), CAST(0x0000A201016E9236 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1004, N'Small Shield', N'Shield', N'+1D Defense', N'Common', 2, N'Armor', N'72        ', 1, CAST(0x0000A201016F14B5 AS DateTime), CAST(0x0000A201016F14B5 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1005, N'Studded Leather', N'Body Armor', N'+1 Re-roll to Toughness', N'Common', 1, N'Armor', N'72        ', 1, CAST(0x0000A201016F8C41 AS DateTime), CAST(0x0000A201016F8C41 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Axe', N'1H CC', N'+1D Strength', N'Common', 2, N'Weapon', N'73        ', 1, CAST(0x0000A201016FBB7C AS DateTime), CAST(0x0000A201016FBB7C AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Dagger/ Knife', N'1H CC', N'+1 ATT Rer-roll', N'Common', 1, N'Weapon', N'73        ', 1, CAST(0x0000A2010170117B AS DateTime), CAST(0x0000A2010170117B AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Chain Weapon', N'2H CC', N'+1 ATT  Re-roll; Negates benefits of small shield, 2" Reach, +1D Trip Maneuvers', N'Uncommon', 5, N'Weapon', N'73        ', 1, CAST(0x0000A2010170CC9A AS DateTime), CAST(0x0000A2010170CC9A AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Flail', N'1H CC', N'+1 ATT Re-roll; Negates benefits of small shields.', N'Uncommon', 2, N'Weapon', N'74        ', 1, CAST(0x0000A201017290EE AS DateTime), CAST(0x0000A201017290EE AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1010, N'Great Sword', N'2H CC', N'+1D ATT, +1D DEF', N'Uncommon', 4, N'Weapon', N'74        ', 1, CAST(0x0000A20101730ABE AS DateTime), CAST(0x0000A20101730ABE AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1011, N'Great Axe', N'2H CC', N'+2D Strength, +1D on Drive-Backs', N'Uncommon', 5, N'Weapon', N'74        ', 1, CAST(0x0000A2010173BFCC AS DateTime), CAST(0x0000A2010173BFCC AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1012, N'Large Weapon', N'Large Models Only', N'+3D Strength', N'Rare', 6, N'Weapon', N'74        ', 1, CAST(0x0000A20101748331 AS DateTime), CAST(0x0000A20101748331 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1013, N'Mace / Warhammer', N'1H CC', N'+1D ATT, +1D Damage vs Undead type', N'Common', 3, N'Weapon', N'74        ', 1, CAST(0x0000A2010174DB25 AS DateTime), CAST(0x0000A2010174DB25 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1014, N'Quarterstaff', N'2H CC', N'+1D DEF or +1D ATT (decide each turn)', N'Common', 2, N'Weapon', N'74        ', 1, CAST(0x0000A20101753B1A AS DateTime), CAST(0x0000A20101753B1A AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1015, N'Shillelagh', N'1H CC', N'+1D damage (+1D[1] Re-roll for Druids)', N'Common', 3, N'Weapon', N'75        ', 1, CAST(0x0000A201017DB942 AS DateTime), CAST(0x0000A201017DB942 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1016, N'Spear', N'2H CC', N'+1D ATT, +1D DEF, +1D to Trip Maneuvers', N'Common', 4, N'Weapon', N'75        ', 1, CAST(0x0000A201017E1EE6 AS DateTime), CAST(0x0000A201017E1EE6 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1017, N'Sword', N'1H CC', N'+1D ATT', N'Common', 2, N'Weapon', N'75        ', 1, CAST(0x0000A201017E53EB AS DateTime), CAST(0x0000A201017E53EB AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1018, N'Whip', N'1H CC', N'+1D ATT, +2D to Trip maneuvers, -1D damage, Reach 2"', N'Uncommon', 4, N'Weapon', N'75        ', 1, CAST(0x0000A201017EAB3D AS DateTime), CAST(0x0000A201017EAB3D AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1019, N'Bow', N'Rng', N'15" Range, 4D Damage', N'Common', 11, N'Weapon', N'75        ', 1, CAST(0x0000A201017F1BA7 AS DateTime), CAST(0x0000A201017F1BA7 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1020, N'Crossbow', N'Rng', N'20" Range, 6D Damage, Slow Reload (fire every other turn)', N'Uncommon', 15, N'Weapon', N'75        ', 1, CAST(0x0000A201017F7483 AS DateTime), CAST(0x0000A201017F7483 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1021, N'Great Bow', N'Rng', N'20" Range, 5D damage', N'Uncommon', 14, N'Weapon', N'76        ', 1, CAST(0x0000A201017FF7FA AS DateTime), CAST(0x0000A201017FF7FA AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1022, N'Javelins', N'Rng', N'Strength +5" Range, Strength damage', N'Common', 5, N'Weapon', N'76        ', 1, CAST(0x0000A20101807187 AS DateTime), CAST(0x0000A20101807187 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1023, N'Throwing Axe', N'Dual', N'+1 ATT Re-roll in CC, Strength + 2" range, Strength +1D damage when thrown', N'Common', 7, N'Weapon', N'76        ', 1, CAST(0x0000A2010180E319 AS DateTime), CAST(0x0000A2010180E319 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1024, N'Throwing Knives', N'Rng', N'Thrown Only, Strength + 2" range, Strength Damage', N'Common', 4, N'Weapon', N'76        ', 1, CAST(0x0000A201018132E8 AS DateTime), CAST(0x0000A201018132E8 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1025, N'Flin, Steel, and Torches', N'Item', N'Characters with a free hand can use a torch to eliminate the effects of the Darkness condition for an area within 5" of their base. Torches may be dropped at a spot, and should be marked with a counter of some kind. When torches are acquired, they count for the whole party(so only one acquisition roll need be made for them). If they''re used during an adventure, even for just a single encounter, the supply counts as exhausted at the end of the adventure and must be replenished during the Recovery Phase.', N'Common', 1, N'General', N'77        ', 1, CAST(0x0000A2010182C080 AS DateTime), CAST(0x0000A2010182C080 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1026, N'Rod or Wand', N'Item', N'This spellcasting implemnent grants the caster +1D to any Class trait goal rolls involving magic; this includes attack goal rolls with the Combat Magic Class Ability.', N'Uncommon', 2, N'General', N'77        ', 1, CAST(0x0000A20101833707 AS DateTime), CAST(0x0000A20101833707 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1027, N'Rope and Grapnel', N'Item', N'A sturdy length of hempen rop and grapnel allow a character to ascend and descend an otherwise impassable vertical surface. Movment still counts as difficult ground. We assume this packae includes enough rope to ascend or descend heights of up to 20". This item counts as 2 EP', N'Common', 2, N'General', N'77        ', 1, CAST(0x0000A20101842A86 AS DateTime), CAST(0x0000A20101842A86 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1028, N'Thief''s Tools', N'Item', N'This collection of metal tools provides +1 Re-roll to Thief checks vs. certain Dungeon and City Adventures Challenges. This includes opening doors and disarming traps.', N'Uncommon', 1, N'General', N'78        ', 1, CAST(0x0000A2010184B944 AS DateTime), CAST(0x0000A2010184B944 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1029, N'SpellBook', N'Item', N'Mage must use his entire turn to cast the spell--no movement or any other action is posible. if he uses his spellbook in this manner, he makes a TH4 check and on a success he gains one of the following effects: +1D to his Mage trait for casting rolls, or +1D to his Mage trait for Spell Recharge rolls. If he fails he may still make his trait check normally, but with no added benifit.', N'Uncommon', 0, N'General', N'83        ', 1, CAST(0x0000A20101864DAD AS DateTime), CAST(0x0000A20101864DAD AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1030, N'Artifact Magic Weapon', N'Artifact Weapon', N'Add this template to any weapon in the equipment list from Chapter 3. The weapon adds +2D to its attack and damage ratings.<br/> GMs introducing artifact weapons of this type should name them and provide a short history. This history should include a group or cult that desires the weapon. After each Adventure during the excursion part of the Recovery Phase the owning character makes a Chance Roll. On 1+ goal, nothing happens, but if he scores no goals, the group comes for the weapon. This becomes the party’s excursion for this Recovery Phase, and the GM should send an appropriate number of Reward Level dice of foes at them. If he has Fate points remaining, the owner may always elect to spend 1 in lieu of a Chance Roll and pass the check automatically.<br/> Damage: Weapon +2D<br/> Coase: Weapon +8pts<br/>', N'Special', 8, N'Magic Item', N'205       ', 1, CAST(0x0000A20900D054AF AS DateTime), CAST(0x0000A20900D054AF AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1031, N'Bracers of Might', N'Major Item', N'Any character wearing these bracers gains +1D to Strength and counts as a large creature for purposes of knockback.', N'Special', 3, N'Magic Item', N'205       ', 1, CAST(0x0000A20900D090B6 AS DateTime), CAST(0x0000A20900D090B6 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1032, N'Cloak of Concealment', N'Major Item', N'The wearer gains limited transparency. Foes wishing to target him with ranged attacks (including spells) must spend a free action and make a TN4 Class trait check or be unable to make the attack; if the spotting check succeeds, the target still gains +1D to his Defense goal roll. Foes in close combat must make a TN4 Class check or the wearer gains +1D to his Defense goal roll.', N'Special', 5, N'Magic Item', N'205       ', 1, CAST(0x0000A20900D0BC0E AS DateTime), CAST(0x0000A20900D0BC0E AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1033, N'Eye of the Liche-God', N'Artifact Item', N'This incredibly powerful and evil artifact is nothing less than the unliving eye of an Undead demi-god--the vile Liche-God Necraxxus! A character who finds this item must either accept or reject its power. If he rejects it he leaves it where he found it and moves on. Carrying the Eye without either accepting or rejecting its power requires a Magic Adventure Challenge check. If the check succeeds, it is assumed the character can safely dispose of the item after the adventure. If the check fails the item must either be accepted or dropped. If he accepts it, the Eye becomes bound to him. He immediately, permanently loses 1 Fate pt. from the total he starts each game with. Characters possessing the Eye gain +2D to attacks against creatures with the Undead type. Once per Adventure, the character may spend a special action and invoke the Eye’s power. If this is done, the player should make a Chance roll for his character. Check the following table for the results:<br/> 0 Goals = The character suffers 1 Wound; make Save vs. Death! as normal<br/> 1 Goal = Gain +2D Hideous Strength<br/> 2 Goals = As with 1, and also gain the Petrification power (CC version)<br/> 3 Goals = As with 1 & 2, and also gain Life Drain<br/> 4 Goals = As with 1, 2, & 3, and also gain Extra Attack.<br/> These powers last until the end of the adventure. Once accepted, it requires a successful Magic Adventure Challenge check to give it up. If the character has used the Eye at least once, add +1 to all TNs for this check.<br/> Characters who use the Eye in play should shift their Alignment one step toward evil at the end of the session. For example, a Good aligned character who uses the Eye once shifts his alignment to Neutral. If he uses it one more time, he shifts his Alignment to Evil at the end of the Adventure where the use occurred.<br/>', N'Special', 30, N'Magic Item', N'206       ', 1, CAST(0x0000A209013FF025 AS DateTime), CAST(0x0000A209013FF025 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1034, N'Flying Carpet', N'Major Item', N'The character using this item spends a free action to activate it at the beginning of his turn. The acting character and up to one other character within 1” of him gain the Flying creature power (see Chapter 4: Foes & Monsters for more details on this power) until the beginning of the acting character’s next turn. Both models move together when the acting character uses the Carpet for flying movement. Leaving combat via this item still provokes free attacks. Enemies may elect to attack this item instead of the characters using it! They still roll against the acting character’s Defense, but if the attack hits, the attacker rolls the damage dice against 4D for the Carpet. The carpet can sustain 4 HP before it is destroyed.', N'Special', 20, N'Magic Item', N'207       ', 1, CAST(0x0000A209014080BF AS DateTime), CAST(0x0000A209014080BF AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1035, N'Greater Magic Weapon', N'Major Weapon', N'Add this template to any weapon in the equipment list from Chapter 3. The weapon adds +2 Re-rolls to its attack and damage ratings.<br/> Damage: As weapon + 2 Re-rolls<br/> Cost: As weapon + 4 pts.', N'Special', 4, N'Magic Item', N'207       ', 1, CAST(0x0000A2090140BF20 AS DateTime), CAST(0x0000A2090140BF20 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1036, N'Healing Potion', N'Minor Potion', N' The user expends a free action and quaffs the potion; it heals 1 + Chance Roll lost HP. Spend a special action to administer this potion to a knocked out model in base contact.', N'Special', 3, N'Magic Item', N'207       ', 1, CAST(0x0000A2090140DB3E AS DateTime), CAST(0x0000A2090140DB3E AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1037, N'Helm of True Seeing', N'Minor Item', N'This magical headgear adds +1D to Class checks for any perception- based Adventure Challenge or other perception-based combat checks.', N'Special', 2, N'Magic Item', N'207       ', 1, CAST(0x0000A20901415232 AS DateTime), CAST(0x0000A20901415232 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1038, N'Magic Armor', N'Major Item', N'Add this template to any Chainmail or Plate armor in the equipment list from Chapter 3. The armor gains +1 Re-roll to both Defense and Toughness ratings, and subtracts 1” of Move penalty. Additionally, choose one Damage Type; the armor grants an additional +1D to Toughness against attacks of that type.<br/> Cost: Armor + 4 pts.', N'Special', 4, N'Magic Item', N'208       ', 1, CAST(0x0000A2090143260E AS DateTime), CAST(0x0000A2090143260E AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1039, N'Magic Weapon', N'Minor Weapon', N'Add this template to any weapon in the equipment list from Chapter 3. The weapon adds +1 Re-roll to its attack and damage ratings.<br/> Damage: As weapon + 1 Re-roll<br/> Cost: As weapon + 2 pts.', N'Special', 2, N'Magic Item', N'208       ', 1, CAST(0x0000A20901436022 AS DateTime), CAST(0x0000A20901436022 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1040, N'Potion of Dire Winds', N'Major Potion', N'This powerful elemental potion conjures magical winds that spirit the user out of danger and help to hide him from detection. Spend a free action and break from a close combat without suffering any free attacks. Move yourself up to 20” away. If you move into cover you gain an additional +2D for your Hiding check should you need it.', N'Special', 8, N'Magic Item', N'208       ', 1, CAST(0x0000A2090143A3C6 AS DateTime), CAST(0x0000A2090143A3C6 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1041, N'Potion of Restoration', N'Major Potion', N'The user expends a free action and quaffs the potion; it heals 2 lost HP and 1 Wound. Also, make a Chance Roll; every 2 goals scored heals either an additonal 2 HP or 1 Wound. Lucky players may split a 4-goal total between healing HP and restoring lost Wounds. Spend a special action to administer this potion to a knocked out model in base contact.', N'Special', 6, N'Magic Item', N'208       ', 1, CAST(0x0000A2090143C8D0 AS DateTime), CAST(0x0000A2090143C8D0 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1042, N'Potion of Speed', N'Minor Potion', N'The user expends a free action and quaffs the potion; it adds +3” to his Move value for the remainder of the Encounter.', N'Special', 2, N'Magic Item', N'209       ', 1, CAST(0x0000A209014577D9 AS DateTime), CAST(0x0000A209014577D9 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1043, N'Ring of Invisibility', N'Artifact Item', N'The wearer may use a special action to don the ring and turn invisible. See Chapter 2: Actions & Combat for more on the effects of invisibility. Every time the character attacks he must make a TN4 Class trait check to maintain his invisibility. If he becomes visible, he may use a special action to turn invisible again on a subsequent turn. Created by a dark lord of the nether-realms, overuse of the ring can bring unintended consequences. If activated more than once in an Encounter, the character must make a TN4 Class check after the second activation. If the roll succeeds he is fine, but if the roll fails he suffers a Wound and must make a Save vs. Death! check as normal. If this check fails and the character has already sustained 4 Wounds, he dies and replaces his Class trait with the Undead creature type. He now belongs to the GM!', N'Special', 20, N'Magic Item', N'209       ', 1, CAST(0x0000A2090145F49E AS DateTime), CAST(0x0000A2090145F49E AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1044, N'Ring of Protection', N'Major Item', N'Characters wearing Studded Leather or no armor gain +1D to Toughness for damage resistance checks. Characters wearing Chainmail or heavier armor instead gain +1D to Defense to avoid attacks.', N'Special', 2, N'Magic Item', N'209       ', 1, CAST(0x0000A20901462ED3 AS DateTime), CAST(0x0000A20901462ED3 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1045, N'Spell Staff', N'Major Item', N'This item stores one spell of 1st level, or a spell up to one level lower than the caster, whichever is higher. The caster may use an appropriate action to cast the spell from his staff; this does not count against his allotment for the adventure. Before each adventure the caster may change what spell is stored in the staff; his player must inform the GM and other players of his choice before play begins. In combat, this item functions as a magic Quarterstaff.', N'Special', 5, N'Magic Item', N'210       ', 1, CAST(0x0000A2090147D590 AS DateTime), CAST(0x0000A2090147D590 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1046, N'Vampiric Weapon', N'Artifact Weapon', N'Add this template to any CC weapon in the equipment list from Chapter 3. The weapon adds +2 Re-rolls to its attack and damage ratings.<br/> It also possesses a malign intelligence and vampiric qualities. The player should track how much damage the weapon inflicts. Every 2 HP the character inflicts while wielding the weapon creates one “soul” point. These soul points may be spent to heal the wielder’s own injuries. One soul point heals one HP, and two soul points will heal one wound. These points may be spent in any legal combination and using the weapon in this fashion is a free action. Each time he uses the weapon for healing the wielder risks a takeover by its malign intelligence. Multiple uses create a greater risk. To test this, the wielder must make an Arcane Adventure Challenge check. After he checks for the first use, he adds +1 to the difficulty for each subsequent usage.<br/> If the wielder fails a check, the GM may take that character over at the beginning of his next turn. The character will act against his natural Alignment, for it is the evil blade which controls him now. The GM might have him attack friends, selfishly seek loot, or simply attempt to exit the area. At the end of this turn, the character may make the Arcane Adventure Challenge check again at the same difficulty as the one he failed. If he succeeds, he regains control, but if he fails, he remains a pawn of the Vampiric Weapon.<br/> Any points left in the soul point pool when the adventure ends bleed off harmlessly.<br/> Players should think up a suitably impressive and grim name for the weapon.<br/> Damage: As weapon + 2 Re-rolls<br/> Cost: As weapon + 10 pts.', N'Special', 10, N'Magic Item', N'210       ', 1, CAST(0x0000A20901482128 AS DateTime), CAST(0x0000A20901482128 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1224, N'Axe', N'1H CC', N'+1D Strength', N'Common', 2, N'Weapon', N'73        ', 0, CAST(0x0000A21B00675BBA AS DateTime), CAST(0x0000A21B00675BBA AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1228, N'Chainmail', N'Body Armor', N'+1D Toughness', N'Uncommon', 2, N'Armor', N'72        ', 0, CAST(0x0000A21B00675BBB AS DateTime), CAST(0x0000A21B00675BBB AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1229, N'Small Shield', N'Shield', N'+1D Defense', N'Common', 2, N'Armor', N'72        ', 0, CAST(0x0000A21B00675BBB AS DateTime), CAST(0x0000A21B00675BBB AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1232, N'Crossbow', N'Rng', N'20" Range, 6D Damage, Slow Reload (fire every other turn)', N'Uncommon', 15, N'Weapon', N'75        ', 0, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1242, N'Studded Leather', N'Body Armor', N'+1 Re-roll to Toughness', N'Common', 1, N'Armor', N'72        ', 0, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1243, N'Axe', N'1H CC', N'+1D Strength', N'Common', 2, N'Weapon', N'73        ', 0, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1250, N'Bow', N'Rng', N'15" Range, 4D Damage', N'Common', 11, N'Weapon', N'75        ', 0, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1292, N'Studded Leather', N'Body Armor', N'+1 Re-roll to Toughness', N'Common', 1, N'Armor', N'72        ', 0, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1300, N'Thief''s Tools', N'Item', N'This collection of metal tools provides +1 Re-roll to Thief checks vs. certain Dungeon and City Adventures Challenges. This includes opening doors and disarming traps.', N'Uncommon', 1, N'General', N'78        ', 0, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1301, N'Shillelagh', N'1H CC', N'+1D damage (+1D[1] Re-roll for Druids)', N'Common', 3, N'Weapon', N'75        ', 0, CAST(0x0000A21B01357EF6 AS DateTime), CAST(0x0000A21B01357EF6 AS DateTime))
INSERT [dbo].[GoalsEquipment] ([GoalsEquipmentId], [Name], [Type], [Effects], [Rarity], [Cost], [EquipmentClass], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1303, N'Axe', N'1H CC', N'+1D Strength', N'Common', 2, N'Weapon', N'73        ', 0, CAST(0x0000A21F01423A4A AS DateTime), CAST(0x0000A21F01423A4A AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsEquipment] OFF
/****** Object:  Table [dbo].[GoalsClasses]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsClasses](
	[GoalsClassId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](512) NOT NULL,
	[Equipment] [nvarchar](512) NOT NULL,
	[StartingHitPoints] [int] NOT NULL,
	[BaseClass] [nvarchar](50) NOT NULL,
	[Page] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsClasses] PRIMARY KEY CLUSTERED 
(
	[GoalsClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsClasses] ON
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1000, N'Atavistic Druid', N'Druids feel at home in the wild places of the world. They possess a special bond with nature and the animals and plants who are a part of it. SOme druids travel with animal companions, while others can takeon the atavistic shape of the predator.', N'Choose up to two of the following: Javelins, Shillelagh, Spear. No armor or shields.', 7, N'Druid', N'58        ', CAST(0x0000A201014C0845 AS DateTime), CAST(0x0000A201014C0845 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1001, N'Keeper Druid', N'Druids feel at home in the wild places of the world. They possess a special bond with nature and the animals and plants who are a part of it. SOme druids travel with animal companions, while others can takeon the atavistic shape of the predator.', N'Choose up to two of the following: Sword, Javelins, Shillelagh,', 7, N'Druid', N'58        ', CAST(0x0000A201014C59AF AS DateTime), CAST(0x0000A201014C59AF AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1005, N'Man-at-Arms', N'When it comes right down to cases, Fighters provide the martail muscle for the adventuring party. Whether using all manner of melee weapons, or in some cases their bare hands, Fighters absorb viciuos attacks from foes while dealing out heavy damage of thier own.', N'Choose one weapon from the following options: Axe, Flail, Mace, Sword, Warhammer. Men-at-Arms should start with chainmail and a small shield. They may also select a bow or crossbow', 10, N'Fighter', N'60        ', CAST(0x0000A201014E02B9 AS DateTime), CAST(0x0000A201014E02B9 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Spearman', N'When it comes right down to cases, Fighters provide the martail muscle for the adventuring party. Whether using all manner of melee weapons, or in some cases their bare hands, Fighters absorb viciuos attacks from foes while dealing out heavy damage of thier own.', N'Start with a Spear and three Javelins. Also start with Chainmail armor.', 10, N'Fighter', N'60        ', CAST(0x0000A201014E5731 AS DateTime), CAST(0x0000A201014E5731 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Wild Slayer', N'When it comes right down to cases, Fighters provide the martail muscle for the adventuring party. Whether using all manner of melee weapons, or in some cases their bare hands, Fighters absorb viciuos attacks from foes while dealing out heavy damage of thier own.', N'Select either a Great Sword or Great Axe. Select either Studded Leather or Chainmail armor.', 10, N'Fighter', N'60        ', CAST(0x0000A201014F19AD AS DateTime), CAST(0x0000A201014F19AD AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Fighting Monk', N'When it comes right down to cases, Fighters provide the martail muscle for the adventuring party. Whether using all manner of melee weapons, or in some cases their bare hands, Fighters absorb viciuos attacks from foes while dealing out heavy damage of thier own.', N'Monks wear no armor of any kind, nor do they use any weapon other than a quarterstaff.', 10, N'Fighter', N'60        ', CAST(0x0000A201014F462B AS DateTime), CAST(0x0000A201014F462B AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Bard', N'Arcane magics belong to the mage. His path of power allows him to aid allies of attack and defend in battle, casting spells that shake the dungeon to its very seams. Although powerful, his resources are not limitless and must be carfully conserved lest they desert him at critical moment.', N'Start with a 1H weapon and studded leather armor. The Bard also gets a Spellbook.', 7, N'Mage', N'62        ', CAST(0x0000A20101508253 AS DateTime), CAST(0x0000A20101508253 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1010, N'Wizard', N'Arcane magics belong to the mage. His path of power allows him to aid allies of attack and defend in battle, casting spells that shake the dungeon to its very seams. Although powerful, his resources are not limitless and must be carfully conserved lest they desert him at critical moment.', N'Start with a Quarterstaff, Rod, or Wand. Wizards also have a Spellbook.', 6, N'Mage', N'62        ', CAST(0x0000A20101508BBF AS DateTime), CAST(0x0000A20101508BBF AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1011, N'Cleric', N'The powers of the gods infuses nearly every corner of the fantasy world. Priests worship a particular god or small pantheon of gods, and use their power for healing their comrades and punish transgressors.', N'Start with a 1H weapon and a small shield; also start with the holy symbol of an appropriate god.', 8, N'Priest', N'64        ', CAST(0x0000A2010152A042 AS DateTime), CAST(0x0000A2010152A042 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1012, N'Paladin', N'The powers of the gods infuses nearly every corner of the fantasy world. Priests worship a particular god or small pantheon of gods, and use their power for healing their comrades and punish transgressors.', N'Start with a 1H weapon, large shield, and partial plate mail armor.', 6, N'Priest', N'64        ', CAST(0x0000A2010152BB99 AS DateTime), CAST(0x0000A2010152BB99 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1013, N'Archer', N'Wilderness scouts and guardians of nature, rangers mix combat skill with stealth and natural lore. they act as guides for the party , and provide close combat support, or ranged punch. While Bladesmen deal death wielding a pair of 1H close combat weapons, Archers take down foes from afar.', N'Start with a bow, crossbow, or great bow. Also begin with a 1H weapon. He may wear studded leather armor.', 9, N'Ranger', N'66        ', CAST(0x0000A201016A0242 AS DateTime), CAST(0x0000A201016A0242 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1014, N'Bladesman', N'Wilderness scouts and guardians of nature, rangers mix combat skill with stealth and natural lore. they act as guides for the party , and provide close combat support, or ranged punch. While Bladesmen deal death wielding a pair of 1H close combat weapons, Archers take down foes from afar.', N'Start with two 1H weapons. The Bladesman may also take a short bow. He may wear chainmail or studded leather armor.', 9, N'Ranger', N'66        ', CAST(0x0000A201016A129D AS DateTime), CAST(0x0000A201016A129D AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1015, N'Acrobat', N'Thieves acquire things for a living. Sometimes the things they take are ancient and powerful, and somtimes they''re Newly minted coins of the realm. Adroit with traps, thieves make handy addition to any party bold enough ton risk their company. ', N'Start with a 1H weapon, usually a long knife or short sword (count as a sword). Also start with Thief tools. Thieves may wear studded leather armor only.', 7, N'Thief', N'68        ', CAST(0x0000A201016AF670 AS DateTime), CAST(0x0000A201016AF670 AS DateTime))
INSERT [dbo].[GoalsClasses] ([GoalsClassId], [Name], [Description], [Equipment], [StartingHitPoints], [BaseClass], [Page], [CreatedDate], [ModifiedDate]) VALUES (1016, N'Assassin', N'Thieves acquire things for a living. Sometimes the things they take are ancient and powerful, and somtimes they''re Newly minted coins of the realm. Adroit with traps, thieves make handy addition to any party bold enough ton risk their company. ', N'Start with a 1H weapon, usually a long knife or short sword (count as a sword). Also start with Thief tools. Thieves may wear studded leather armor only.', 7, N'Thief', N'68        ', CAST(0x0000A201016B09B0 AS DateTime), CAST(0x0000A201016B09B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsClasses] OFF
/****** Object:  Table [dbo].[GoalsUsers]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsUsers] ON
INSERT [dbo].[GoalsUsers] ([UserId], [UserName]) VALUES (6, N'aaronls79@gmail.com')
INSERT [dbo].[GoalsUsers] ([UserId], [UserName]) VALUES (7, N'Aaron Sprague')
SET IDENTITY_INSERT [dbo].[GoalsUsers] OFF
/****** Object:  Table [dbo].[GoalsSpells]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsSpells](
	[GoalsSpellId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartingLevel] [int] NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[Range] [nvarchar](50) NOT NULL,
	[Effects] [nvarchar](max) NOT NULL,
	[Damage] [nvarchar](256) NOT NULL,
	[Boost] [nvarchar](128) NOT NULL,
	[LevelBonus] [int] NOT NULL,
	[Bonus] [nvarchar](128) NOT NULL,
	[Uses] [nvarchar](50) NOT NULL,
	[School] [nchar](10) NULL,
	[Page] [nvarchar](10) NOT NULL,
	[Template] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsSpells] PRIMARY KEY CLUSTERED 
(
	[GoalsSpellId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsSpells] ON
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1000, N'Alf''s Acid Arrow', 2, N'Combat', N'15" + 5" per2 caster level', N'A magical acid bolt springs from the caster''s hand to unerringly strike a foe', N'Inflicts 2 automatic HP (Damage type acid). No Attack or damage roll needed, no save; at the beginning of the caster''s next turn, roll a D6 and on a 4+ the target suffers 1 more auto point of damage.', N'The character makes a Mage trait check; every 3 goals scored adds +1 to the spell''s damage.', 4, N'Fire additional acid missle at same or different target.', N'Adventure', N'Arcane    ', N'85        ', 1, CAST(0x0000A202007FBBCC AS DateTime), CAST(0x0000A202007FBBCC AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1001, N'Arcane Missle', 1, N'Combat', N'LOS', N'A magic bolt springs from the caster''s hand to unerringly strike a foe.', N'Inflicts 1 atumatic hit point, No attack or damage roll, no save.', N'The character makes a Mage trait check; every 3 goals scored adds +1 to the spell''s damage.', 3, N'Fire an additional missle at same or different target', N'Encounter', N'Arcane    ', N'85        ', 1, CAST(0x0000A202014AD1D6 AS DateTime), CAST(0x0000A202014AD1D6 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1002, N'Combat Geas', 4, N'Combat', N'15"', N'The caster targets a single character or creature using his mage trait, and that target resists the spell using its Class or prime trait. If the caster beats the target''s total, the spell takes effect. The target can choose totakeanother course of action, but tshould he do so, he sufeer the loss of 1 HP and -2D to any other action he attempts on that turn. The target may shoose to use its entire turn(no movement, combat, special actions, ect) to shake off the effects of this spell. This requires a TH5 Class or prime trait check. The effects of this spell last until the end of the Encounter.', N'None', N'', 0, N'', N'Adventure', N'Arcane    ', N'86        ', 1, CAST(0x0000A2020150D5BB AS DateTime), CAST(0x0000A2020150D5BB AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1003, N'Dispel Enchantment', 3, N'Special', N'10"  + 5" per 2 caster levels', N'On a successful trait check, this spell ends the effects of any single ongoing spell on the target. The TH for this check is based on the level of the spell targeted: <br/> Lvl 1: TN3<br/> Lvl 2: TN4<br/> Lvl 3: TN5 <br/> Lvl 4: TN6<br/> Lvl 5: TN7    ', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'87        ', 1, CAST(0x0000A2020151D5A2 AS DateTime), CAST(0x0000A2020151D5A2 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1004, N'Field of Spikes', 5, N'Combat', N'20"', N'the caster locates a 2 - 5" diamater(he selects the size) field of damaging terrain within 15" of his position. Modles touching or traveling through this field must make a successful TN5 Class or prime trait check or suffer 2 automatic HP of damage. This check occurs at the beginning of their respective turns, This field counts as difficult terrain.', N'2 HP', N'', 0, N'', N'Encounter', N'Arcane    ', N'87        ', 1, CAST(0x0000A2020151DA01 AS DateTime), CAST(0x0000A2020151DA01 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1005, N'Fireball', 5, N'Combat', N'20", Radius 5"', N'The caster hurls a ball of exploding magical fire at a foe. Target one enemy model and make a Mage trait roll versus the target''s Defens. Any other models within 5"must also roll against your single attack roll.', N'6D', N'', 0, N'', N'Adventure', N'Arcane    ', N'87        ', 1, CAST(0x0000A202015929E4 AS DateTime), CAST(0x0000A202015929E4 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Flicker', 2, N'Special', N'Base Contact', N'The caster makes a modle in base contact more difficult to strike in combat. He gains +2 Re-rolls on all Defense goal rolls until the end of the adventure.', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'88        ', 1, CAST(0x0000A202015D8536 AS DateTime), CAST(0x0000A202015D8536 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Floating Fall', 1, N'Reaction(Falling)', N'5" radius', N'If the caster(and/or a number of characters equal to 1 + caster level) within 5" of him falls any distance, he may cast this spell to prevent the damage. Characters affected by this spell land on their feet(no knockdown).', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'88        ', 1, CAST(0x0000A202015E8E44 AS DateTime), CAST(0x0000A202015E8E44 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Hensons''s Hovering Hexagon', 1, N'Special', N'Base Contact', N'A hovering hexagon of magical energy elevates the target and grants him +1D on Defense goal rolls in close combat until the end of the encounter, If the target of this spell suffers more then 2 HP of damaage from a a single attack, the effect ends.', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'88        ', 1, CAST(0x0000A2020160FBBD AS DateTime), CAST(0x0000A2020160FBBD AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Light', 1, N'Special', N'Base Contact', N'The caster touches an object(usally a weapon) and grants it a magical glow equivalant to a torch with a radius of 5". This lasts until the end of the encounter.', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'89        ', 1, CAST(0x0000A20201623453 AS DateTime), CAST(0x0000A20201623453 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1010, N'Phantom Armor', 4, N'Special', N'5" from caster', N'All friendly models within 5" of the caster gain + 1D armor until the endof the Encounter', N'None', N'', 0, N'', N'Adventure', N'Arcane    ', N'89        ', 1, CAST(0x0000A20201643B83 AS DateTime), CAST(0x0000A20201643B83 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1011, N'Phantom Portal', 4, N'Special', N'5"', N'The caster or 1 friendly model within 5" may move up to 10" anywhere from their current locations. This movement may pass through other models, vertical distances, and solid objects, but must end with themodel able to clearly stand.', N'None', N'', 0, N'', N'Adventure', N'Arcane    ', N'89        ', 1, CAST(0x0000A2020165A806 AS DateTime), CAST(0x0000A2020165A806 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1012, N'Rygar''s Resolve ram', 2, N'Attack', N'Class Trait x 2"', N'A ramof magical power drives the target back!this spell works just like the Drive-back maneuver detailed in CHapter 2. Actions & Combat, but workes at range. The caster pits his Class trait against the Class or prime trait of the target to determine the reult. ', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'90        ', 1, CAST(0x0000A202016A8D94 AS DateTime), CAST(0x0000A202016A8D94 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1013, N'Sleep', 1, N'Combat', N'10" + 5" Radius', N'The caster selects a single target or spot up to 10" away. The target and all characters and creatures within a 5" radius of him must make a opposed trait check against the caster''s mage trait roll. Any character who fails this check falls into a deep sleep. This sleep lasts for hte remainder of the adventure, or unti another character spends a special action to awaken a sleeping character. This requires base contact, and only one character can be awakened per actions. Sleeping characers count as being knocked down, and are defenseless foes. A sleeing characer may make a TN4 Class or prime trait check at the begininng of his turn to awaken on his own. Any amount of damage will automatically awaken a sleeping character. Creatures possessing Rewards Levesls of +3d or higher and those with the Undead type ignore the effects of this spell. ', N'None', N'', 0, N'', N'Adventure', N'Arcane    ', N'90        ', 1, CAST(0x0000A202016C389C AS DateTime), CAST(0x0000A202016C389C AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1014, N'Slick', 2, N'Combat', N'10" + 5" radius', N'The caster selects a single target item or spot up to 10" away. If he selects a spot on the battlefield, mark it with a counter. Characters and creatures within a 5" radius of that spot fall within the spell''s effect. Any model beginning its turn or passing through the affected area must make a TN3 Class or prime trait checks or suffer a knock down result. If the caster selects an item, anyone handling that item for an attack, spell casting, or other significant action must make TN3 Class or prime trait checks or drop it. If the item happens to be held when the spell is cast, the caster and the item holder make opposed Class or prime trait checks. If the caster succeeds, the spell takes effect as normal. The effects of this spell last until the end of the Encounter.', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'91        ', 1, CAST(0x0000A20201768D44 AS DateTime), CAST(0x0000A20201768D44 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1015, N'Summon Monster', 5, N'Special', N'5"', N'When cast, the Mage makes a TN3 Class trait check. On a success he may summon  a 1D Reward level creature into play. Every 2 additional goals he scores beyond the TN adds +1D Reward level more worth of creatures. These reward Levels may be spent on one creature, or spread among several. The summoned creatures may take no action until the next turn , and arrive within 5” of the caster’s base. They act on the same initiative count as the caster. These summoned creatures remain in play until destroyed, or until the end of the adventures. Summoning creatures with the following powers requires the expenditures of 1 fate point per creature: Extra Attack, Lone Threat, and Death Touch.', N'None', N'', 0, N'', N'Adventure', N'Arcane    ', N'91        ', 1, CAST(0x0000A2020177CA4C AS DateTime), CAST(0x0000A2020177CA4C AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1016, N'Wind Shields', 3, N'Special', N'10" or base Contact', N'The casters creates a moving wind shield that guards a number of targets equal to the casters’ level against ranged attacks. The spell recipients gain + 2D to defense goal against ranged attacks. The attacks, as soon as the target suffers HP loss from a ranged attack or is engaged in close combat, the shield dissipates and the effect ends.', N'None', N'', 0, N'', N'Encounter', N'Arcane    ', N'92        ', 1, CAST(0x0000A202017C706B AS DateTime), CAST(0x0000A202017C706B AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1017, N'Cheat Death', 1, N'Special', N'Base Contact', N'The target character of creature mey re-roll a single failed check on the Save vs Death table. This spell lasts until the re-roll is used, or until the end of the Encounter.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'92        ', 1, CAST(0x0000A20300ED14E9 AS DateTime), CAST(0x0000A20300ED14E9 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1018, N'Godly Might', 4, N'Special', N'Self', N'The caster channels his god''s divine might into his own body. He gains +2d Strength and +2D to his class trait for attack goal rolls until the end of the encounter.', N'None', N'', 0, N'', N'Adventure', N'Spiritual ', N'92        ', 1, CAST(0x0000A20300EDAD99 AS DateTime), CAST(0x0000A20300EDAD99 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1019, N'Heal', 1, N'Special', N'3" Radius', N'This spell restores lost HP on models within 3” of the caster’s base. The number of HP restored depends upon the level of the caster:<br/>Level 1 - 2 = Heal 2 lost HP<br/>Level 3 - 4 = Heal 3 lost HP<br/>Level 5 - 6 = Heal 4 lost HP<br/>Level 7 - 8 = Heal 5 lost HP<br/>Level 9 - 10 = Heal 6 lost HP<br/>The caster may divide this healing among any eligible targets within 3” of his base. At any level the caster may spend 1 Fate point and also heal 1 Wound to a single character along with the restored HP.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'93        ', 1, CAST(0x0000A20300EE4F4D AS DateTime), CAST(0x0000A20300EE4F4D AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1020, N'Invigorate', 2, N'Special', N'Base Contact', N'the target model gains +2D to its next non-attack Class trait or damage resistance goal roll. Once the +2D is used it is gone.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'93        ', 1, CAST(0x0000A20300EFCFDE AS DateTime), CAST(0x0000A20300EFCFDE AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1021, N'Lure', 4, N'Reaction(Trigger-Enemy model attacks)', N'10"', N'When an enemy model hits with an attack, redirect the damage dice roll from the attack to another legal target of the caster''s choice.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'93        ', 1, CAST(0x0000A20300F05C1F AS DateTime), CAST(0x0000A20300F05C1F AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1022, N'Natural Selection', 3, N'Special', N'Base Contact', N'The target may re-roll the entier dice pool from one trait check. Once this effect is used, it''s gone.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'94        ', 1, CAST(0x0000A20300F1001F AS DateTime), CAST(0x0000A20300F1001F AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1023, N'Pacify', 5, N'Reaction(Trigger--Ally Takes Damage)', N'20"', N'Negate all HP loss suffered by an ally from a single attack of effect.', N'None', N'', 0, N'', N'Adventure', N'Spiritual ', N'94        ', 1, CAST(0x0000A20300F17D2F AS DateTime), CAST(0x0000A20300F17D2F AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1024, N'Radiance', 2, N'Combat', N'5"', N'The caster makes an opposed Class trait vs. the target’s primarytrait. If the caster wins the target suffers -1D to attack goalrolls for the remainder of the encounter. This effect is -2D if thetarget is undead.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'94        ', 1, CAST(0x0000A20300F1BE44 AS DateTime), CAST(0x0000A20300F1BE44 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1025, N'Rain of Fire', 5, N'Combat', N'20"', N'The caster summons a rain of flaming debris on his foes. Allenemy models within 20” of the caster suffer 1 HP of damage.Increase this damage to 2 HP at level 6.', N'None', N'', 0, N'', N'Adventure', N'Spiritual ', N'94        ', 1, CAST(0x0000A20300F1FEDF AS DateTime), CAST(0x0000A20300F1FEDF AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1027, N'Six-Mile Stride', 1, N'Special', N'Base contact', N'The target model gains +3" to its base Move value. This lasts until the end of the encounter.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'95        ', 1, CAST(0x0000A20300F4494C AS DateTime), CAST(0x0000A20300F4494C AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1028, N'Smite', 1, N'Special', N'Base Contact', N'Add +1D to the damage goal rolls of a model in base contact. The damage bonus increases to +2D against foes of opposingalignments (i.e., a Good model would gain the extra bonusagainst Evil models). This bonus lasts until the end of the Encounter.Neutral models may pick either “evil” or “good” butmust stick with choice for the remainder of the adventure.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'95        ', 1, CAST(0x0000A20300F46FB9 AS DateTime), CAST(0x0000A20300F46FB9 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1029, N'Spiritual Weapon', 3, N'Special', N'5"', N'The caster projects a melee weapon of magical energy up to 5” from his base. Each round at the beginning of the caster’s turn, the Spiritual Weapon attacks a target within 5” of the caster. This attack uses the caster’s Class trait +1D to attack and does the caster’s Strength +1D to damage. If this attack misses, the spell effect ends and the weapon goes away. Players may want to model this spell with some sort of counter or actual weapon affixed to a base; this will aid in remembering to use the spell each round!', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'95        ', 1, CAST(0x0000A20300F490CB AS DateTime), CAST(0x0000A20300F490CB AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1030, N'Summon Undead', 2, N'Special', N'5"', N'When cast, the Priest makes a TN3 check using his class trait. On a success he summons a 5-model Horde of Skeletal Warriors. Every 2 goals the caster exceeds the check by adds an additional Horde member up to a maximum of 10 summoned models. Warriors summoned in this way may either reinforce an existing horde (up to a maximum of 20 models) or form a new one, at the caster’s preference. The summoned creatures may take no action until the next turn, and arrive within 5” of the caster’s base. They act on the same initiative count as the caster. These summoned warriors remain in play until destroyed, or until the end of the Encounter.', N'None', N'', 0, N'', N'Encounter', N'Spiritual ', N'96        ', 1, CAST(0x0000A20300F542B5 AS DateTime), CAST(0x0000A20300F542B5 AS DateTime))
INSERT [dbo].[GoalsSpells] ([GoalsSpellId], [Name], [StartingLevel], [Action], [Range], [Effects], [Damage], [Boost], [LevelBonus], [Bonus], [Uses], [School], [Page], [Template], [CreatedDate], [ModifiedDate]) VALUES (1031, N'Wild Growth', 4, N'Reaction (Trigger -- enemy attacks)', N'15"', N'When an enemy model attacks a friendly model within 15” of the caster, the caster and all friendly models within 10” of him heal 1 HP. Increase the damage healed to 2 HP at level 5.', N'None', N'', 0, N'', N'Adventure', N'Spiritual ', N'96        ', 1, CAST(0x0000A20300F57B74 AS DateTime), CAST(0x0000A20300F57B74 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsSpells] OFF
/****** Object:  Table [dbo].[GoalsRaces]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsRaces](
	[GoalsRaceId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NOT NULL,
	[FavoredClasses] [nvarchar](256) NOT NULL,
	[Movement] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[Notes] [nvarchar](256) NOT NULL,
	[Languages] [nvarchar](128) NOT NULL,
	[Page] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsRaces] PRIMARY KEY CLUSTERED 
(
	[GoalsRaceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsRaces] ON
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1000, N'Dwarf', N'Short stocky an stalwart, dwarves delve in the earth for reches and battle fiercely to keep them.', N'Fighter, Priest', 5, 0, N'+1D Toughness, Tank, Slow', N'Dwarven, Common', N'52        ', CAST(0x0000A201013F2C28 AS DateTime), CAST(0x0000A201013F2C28 AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1001, N'Elf', N'Long Lived and fair of face, elves possess an ancient culture that reveres nature', N'Ranger, Mage', 6, 1, N'+1D Defense, -1D Toughness, Fast Reflexes, +1D to checks for Hidden Doors.', N'Elvish, Common', N'52        ', CAST(0x0000A201013FB871 AS DateTime), CAST(0x0000A201013FB871 AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1002, N'Gnoll', N'Hulking, Fur-covered hyena-men who fight best in packs', N'Priest, Ranger', 7, 2, N'Low Morale, Pack Fighter, Sharp Senses', N'Gnollish, Common', N'52        ', CAST(0x0000A2010140141B AS DateTime), CAST(0x0000A2010140141B AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1003, N'Gnome', N'Smaller cousins of the dwarves, gnomes possess a touch of faerie blood and a penchant for magic', N'Mage, Thief', 5, 0, N'+1D Toughness, -1D Strength, +1D to Arcane task checks, Small', N'Gnomish, Common', N'52        ', CAST(0x0000A2010140C613 AS DateTime), CAST(0x0000A2010140C613 AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Goblin', N'Short, wiry and nasty when cornered, most goblins possess a trickster''s guile and a survivor''s grit.', N'Fighter, Priest', 5, 0, N'+1D Defense, -1D Strength, Dark Vision, Small', N'Goblin, Common', N'51        ', CAST(0x0000A2010141B21E AS DateTime), CAST(0x0000A2010141B21E AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Half-Elf', N'The progeny of a union between Human and Elf.', N'Druid, Ranger', 6, 2, N'+1D Defense', N'Elvish, Common', N'51        ', CAST(0x0000A2010142B023 AS DateTime), CAST(0x0000A2010142B023 AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Halfling', N'Small, elfin humanoids equally at home in woods or towns.', N'Druid, Thief', 5, 0, N'+1D Defense, -1D Strength, Sneaky, Small', N'Common', N'51        ', CAST(0x0000A2010145326F AS DateTime), CAST(0x0000A2010145326F AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Half-Orc', N'The progeny of a union between Human and Orc', N'Fighter (Wild Slayer), Druid', 6, 1, N'+1D Strength, Bloodlust, First to Fight', N'Orchish, Common', N'51        ', CAST(0x0000A2010145A9E2 AS DateTime), CAST(0x0000A2010145A9E2 AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1010, N'Human', N'Amon the most versatile and adaptable race.', N'Any', 6, 2, N'Adaptable, Contacts', N'Common', N'51        ', CAST(0x0000A2010146398D AS DateTime), CAST(0x0000A2010146398D AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1011, N'Kobolds', N'Small, red-skinned reptilian humanoids with barking voices.', N'Ranger, Thief', 5, 0, N'+1D Defense, -1D Strenght, Dark Vision, Small', N'Dragon, Common', N'54        ', CAST(0x0000A2010147269A AS DateTime), CAST(0x0000A2010147269A AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1012, N'Orcs', N'Brutish and powerful, mostorcs show an amazing propensity for violence.', N'Fighter, Druid', 6, 0, N'+1D Strength, -1D Defense, Bloodlust, First to Fight', N'Orcish, Common', N'54        ', CAST(0x0000A2010147EDFF AS DateTime), CAST(0x0000A2010147EDFF AS DateTime))
INSERT [dbo].[GoalsRaces] ([GoalsRaceId], [Name], [Description], [FavoredClasses], [Movement], [Points], [Notes], [Languages], [Page], [CreatedDate], [ModifiedDate]) VALUES (1013, N'Lizardman', N'Scaled humanoid reptiles with lashing tails, most lizardmen follow a rough, but hoble honor code.', N'Fighter, Ranger', 6, 1, N'+1D toughness, -1D Defense, Tail Attack', N'Repton, Common', N'54        ', CAST(0x0000A201014A4EA8 AS DateTime), CAST(0x0000A201014A4EA8 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsRaces] OFF
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'facebook', N'647802812', 7)
INSERT [dbo].[webpages_OAuthMembership] ([Provider], [ProviderUserId], [UserId]) VALUES (N'google', N'https://www.google.com/accounts/o8/id?id=AItOawmqUI6kgfOYGWtJL2yOyZG5qfQk4Qt-3Rc', 6)
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RacePowers]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RacePowers](
	[RacePowerId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsRaceId] [int] NOT NULL,
	[GoalsPowerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RacePowers] PRIMARY KEY CLUSTERED 
(
	[RacePowerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RacePowers] ON
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (1, 1000, 1080, CAST(0x0000A209016410E3 AS DateTime), CAST(0x0000A209016410E3 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (2, 1000, 1086, CAST(0x0000A2090164197A AS DateTime), CAST(0x0000A2090164197A AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (3, 1001, 1059, CAST(0x0000A20901648F5F AS DateTime), CAST(0x0000A20901648F5F AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (4, 1002, 1064, CAST(0x0000A2090164F3F0 AS DateTime), CAST(0x0000A2090164F3F0 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (5, 1002, 1070, CAST(0x0000A2090164FCB6 AS DateTime), CAST(0x0000A2090164FCB6 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (6, 1002, 1079, CAST(0x0000A20901651A21 AS DateTime), CAST(0x0000A20901651A21 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (7, 1003, 1093, CAST(0x0000A20901673577 AS DateTime), CAST(0x0000A20901673577 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (8, 1006, 1046, CAST(0x0000A20901684237 AS DateTime), CAST(0x0000A20901684237 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (9, 1006, 1093, CAST(0x0000A20901685D82 AS DateTime), CAST(0x0000A20901685D82 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (10, 1009, 1039, CAST(0x0000A209016ADDA0 AS DateTime), CAST(0x0000A209016ADDA0 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (11, 1009, 1054, CAST(0x0000A209016AFAFC AS DateTime), CAST(0x0000A209016AFAFC AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (12, 1008, 1081, CAST(0x0000A209016BB3A5 AS DateTime), CAST(0x0000A209016BB3A5 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (13, 1008, 1093, CAST(0x0000A209016BC24E AS DateTime), CAST(0x0000A209016BC24E AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (14, 1010, 1035, CAST(0x0000A209016D5B0B AS DateTime), CAST(0x0000A209016D5B0B AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (15, 1010, 1044, CAST(0x0000A209016D6AB6 AS DateTime), CAST(0x0000A209016D6AB6 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (16, 1011, 1046, CAST(0x0000A209016DE95D AS DateTime), CAST(0x0000A209016DE95D AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (17, 1011, 1093, CAST(0x0000A209016DF451 AS DateTime), CAST(0x0000A209016DF451 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (18, 1012, 1039, CAST(0x0000A209016FFD70 AS DateTime), CAST(0x0000A209016FFD70 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (19, 1012, 1054, CAST(0x0000A20901701196 AS DateTime), CAST(0x0000A20901701196 AS DateTime))
INSERT [dbo].[RacePowers] ([RacePowerId], [GoalsRaceId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (20, 1013, 1085, CAST(0x0000A209017043B2 AS DateTime), CAST(0x0000A209017043B2 AS DateTime))
SET IDENTITY_INSERT [dbo].[RacePowers] OFF
/****** Object:  Table [dbo].[RaceFavoredClass]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceFavoredClass](
	[RaceFavoredClassId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsRaceId] [int] NOT NULL,
	[GoalsClassId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RaceFavoredClass] PRIMARY KEY CLUSTERED 
(
	[RaceFavoredClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RaceFavoredClass] ON
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (2, 1000, 1005, CAST(0x0000A2090161A81F AS DateTime), CAST(0x0000A2090161A81F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (3, 1000, 1006, CAST(0x0000A2090161B6D7 AS DateTime), CAST(0x0000A2090161B6D7 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (4, 1000, 1007, CAST(0x0000A2090161BF02 AS DateTime), CAST(0x0000A2090161BF02 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (5, 1000, 1008, CAST(0x0000A2090161CEC5 AS DateTime), CAST(0x0000A2090161CEC5 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (6, 1000, 1011, CAST(0x0000A2090161D85E AS DateTime), CAST(0x0000A2090161D85E AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (7, 1000, 1012, CAST(0x0000A2090161E499 AS DateTime), CAST(0x0000A2090161E499 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (8, 1001, 1009, CAST(0x0000A2090162458F AS DateTime), CAST(0x0000A2090162458F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (9, 1001, 1010, CAST(0x0000A20901625451 AS DateTime), CAST(0x0000A20901625451 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (10, 1001, 1013, CAST(0x0000A209016275C5 AS DateTime), CAST(0x0000A209016275C5 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (11, 1001, 1014, CAST(0x0000A2090162836D AS DateTime), CAST(0x0000A2090162836D AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (12, 1002, 1011, CAST(0x0000A2090162ECCD AS DateTime), CAST(0x0000A2090162ECCD AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (13, 1002, 1012, CAST(0x0000A209016310D4 AS DateTime), CAST(0x0000A209016310D4 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (14, 1002, 1013, CAST(0x0000A2090163207F AS DateTime), CAST(0x0000A2090163207F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (15, 1002, 1014, CAST(0x0000A20901632A80 AS DateTime), CAST(0x0000A20901632A80 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (16, 1003, 1009, CAST(0x0000A209016758ED AS DateTime), CAST(0x0000A209016758ED AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (17, 1003, 1010, CAST(0x0000A20901676169 AS DateTime), CAST(0x0000A20901676169 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (18, 1003, 1015, CAST(0x0000A20901676C29 AS DateTime), CAST(0x0000A20901676C29 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (19, 1003, 1016, CAST(0x0000A2090167776C AS DateTime), CAST(0x0000A2090167776C AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (20, 1006, 1005, CAST(0x0000A209016876B3 AS DateTime), CAST(0x0000A209016876B3 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (21, 1006, 1006, CAST(0x0000A20901687F0E AS DateTime), CAST(0x0000A20901687F0E AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (22, 1006, 1007, CAST(0x0000A209016887C7 AS DateTime), CAST(0x0000A209016887C7 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (23, 1006, 1008, CAST(0x0000A20901689164 AS DateTime), CAST(0x0000A20901689164 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (24, 1006, 1011, CAST(0x0000A2090168ABB3 AS DateTime), CAST(0x0000A2090168ABB3 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (25, 1006, 1012, CAST(0x0000A2090168C315 AS DateTime), CAST(0x0000A2090168C315 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (26, 1007, 1000, CAST(0x0000A20901692092 AS DateTime), CAST(0x0000A20901692092 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (27, 1007, 1001, CAST(0x0000A2090169386E AS DateTime), CAST(0x0000A2090169386E AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (28, 1007, 1013, CAST(0x0000A2090169431F AS DateTime), CAST(0x0000A2090169431F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (29, 1007, 1014, CAST(0x0000A209016974D9 AS DateTime), CAST(0x0000A209016974D9 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (30, 1008, 1000, CAST(0x0000A2090169EF71 AS DateTime), CAST(0x0000A2090169EF71 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (31, 1008, 1001, CAST(0x0000A209016A0780 AS DateTime), CAST(0x0000A209016A0780 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (32, 1008, 1015, CAST(0x0000A209016A10DC AS DateTime), CAST(0x0000A209016A10DC AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (34, 1009, 1000, CAST(0x0000A209016AB681 AS DateTime), CAST(0x0000A209016AB681 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (35, 1009, 1001, CAST(0x0000A209016ABE21 AS DateTime), CAST(0x0000A209016ABE21 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (36, 1009, 1007, CAST(0x0000A209016AC693 AS DateTime), CAST(0x0000A209016AC693 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (37, 1008, 1016, CAST(0x0000A209016B91C0 AS DateTime), CAST(0x0000A209016B91C0 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (38, 1010, 1000, CAST(0x0000A209016C98AC AS DateTime), CAST(0x0000A209016C98AC AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (39, 1010, 1001, CAST(0x0000A209016CA3D3 AS DateTime), CAST(0x0000A209016CA3D3 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (41, 1010, 1005, CAST(0x0000A209016CC6C4 AS DateTime), CAST(0x0000A209016CC6C4 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (42, 1010, 1006, CAST(0x0000A209016CCEAA AS DateTime), CAST(0x0000A209016CCEAA AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (43, 1010, 1007, CAST(0x0000A209016CD4AD AS DateTime), CAST(0x0000A209016CD4AD AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (44, 1010, 1008, CAST(0x0000A209016CDFB8 AS DateTime), CAST(0x0000A209016CDFB8 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (45, 1010, 1009, CAST(0x0000A209016CE753 AS DateTime), CAST(0x0000A209016CE753 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (46, 1010, 1010, CAST(0x0000A209016CEF2F AS DateTime), CAST(0x0000A209016CEF2F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (47, 1010, 1011, CAST(0x0000A209016CFAAF AS DateTime), CAST(0x0000A209016CFAAF AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (48, 1010, 1012, CAST(0x0000A209016D0600 AS DateTime), CAST(0x0000A209016D0600 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (49, 1010, 1013, CAST(0x0000A209016D0DD8 AS DateTime), CAST(0x0000A209016D0DD8 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (50, 1010, 1014, CAST(0x0000A209016D16E9 AS DateTime), CAST(0x0000A209016D16E9 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (51, 1010, 1015, CAST(0x0000A209016D1D4F AS DateTime), CAST(0x0000A209016D1D4F AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (52, 1010, 1016, CAST(0x0000A209016D2530 AS DateTime), CAST(0x0000A209016D2530 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (53, 1011, 1013, CAST(0x0000A209016E0766 AS DateTime), CAST(0x0000A209016E0766 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (54, 1011, 1014, CAST(0x0000A209016E0F14 AS DateTime), CAST(0x0000A209016E0F14 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (55, 1011, 1015, CAST(0x0000A209016E1591 AS DateTime), CAST(0x0000A209016E1591 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (56, 1011, 1016, CAST(0x0000A209016E249D AS DateTime), CAST(0x0000A209016E249D AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (57, 1013, 1000, CAST(0x0000A209016EAD9D AS DateTime), CAST(0x0000A209016EAD9D AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (58, 1013, 1001, CAST(0x0000A209016EB8EE AS DateTime), CAST(0x0000A209016EB8EE AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (59, 1013, 1005, CAST(0x0000A209016EC4BD AS DateTime), CAST(0x0000A209016EC4BD AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (60, 1013, 1006, CAST(0x0000A209016ED071 AS DateTime), CAST(0x0000A209016ED071 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (61, 1013, 1007, CAST(0x0000A209016EEAF3 AS DateTime), CAST(0x0000A209016EEAF3 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (62, 1013, 1008, CAST(0x0000A209016EF49E AS DateTime), CAST(0x0000A209016EF49E AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (63, 1012, 1005, CAST(0x0000A209016F7D45 AS DateTime), CAST(0x0000A209016F7D45 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (64, 1012, 1006, CAST(0x0000A209016F84C9 AS DateTime), CAST(0x0000A209016F84C9 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (65, 1012, 1007, CAST(0x0000A209016F8B7A AS DateTime), CAST(0x0000A209016F8B7A AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (66, 1012, 1008, CAST(0x0000A209016F92FD AS DateTime), CAST(0x0000A209016F92FD AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (67, 1012, 1013, CAST(0x0000A209016F9B66 AS DateTime), CAST(0x0000A209016F9B66 AS DateTime))
INSERT [dbo].[RaceFavoredClass] ([RaceFavoredClassId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (68, 1012, 1014, CAST(0x0000A209016FA537 AS DateTime), CAST(0x0000A209016FA537 AS DateTime))
SET IDENTITY_INSERT [dbo].[RaceFavoredClass] OFF
/****** Object:  Table [dbo].[GoalsRaceMeta]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsRaceMeta](
	[GoalsCalassMetaId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsRaceId] [int] NOT NULL,
	[PropertyName] [nvarchar](50) NOT NULL,
	[Value] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsRaceMeta] PRIMARY KEY CLUSTERED 
(
	[GoalsCalassMetaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsRaceMeta] ON
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (1, 1000, N'ModTraitToughness', 1, CAST(0x0000A2190155BF54 AS DateTime), CAST(0x0000A2190155BF54 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (2, 1001, N'ModTraitDefense', 1, CAST(0x0000A2190155E172 AS DateTime), CAST(0x0000A2190155E172 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (4, 1001, N'ModTraitToughness', -1, CAST(0x0000A21901560F2C AS DateTime), CAST(0x0000A21901560F2C AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (5, 1003, N'ModTraitToughness', 1, CAST(0x0000A2190156AC40 AS DateTime), CAST(0x0000A2190156AC40 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (6, 1003, N'ModTraitStrength', -1, CAST(0x0000A2190156D0DE AS DateTime), CAST(0x0000A2190156D0DE AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (7, 1006, N'ModTraitDefense', 1, CAST(0x0000A219015706FA AS DateTime), CAST(0x0000A219015706FA AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (8, 1006, N'ModTraitStrength', -1, CAST(0x0000A21901571391 AS DateTime), CAST(0x0000A21901571391 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (10, 1007, N'ModTraitDefense', 1, CAST(0x0000A21901574226 AS DateTime), CAST(0x0000A21901574226 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (11, 1008, N'ModTraitDefense', 1, CAST(0x0000A21901575EC7 AS DateTime), CAST(0x0000A21901575EC7 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (12, 1008, N'ModTraitStrength', -1, CAST(0x0000A21901577761 AS DateTime), CAST(0x0000A21901577761 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (13, 1011, N'ModTraitDefense', 1, CAST(0x0000A2190157B8A7 AS DateTime), CAST(0x0000A2190157B8A7 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (14, 1011, N'ModTraitStrength', -1, CAST(0x0000A2190157DFC3 AS DateTime), CAST(0x0000A2190157DFC3 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (15, 1012, N'ModTraitStrength', 1, CAST(0x0000A2190157F918 AS DateTime), CAST(0x0000A2190157F918 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (16, 1012, N'ModTraitDefense', -1, CAST(0x0000A2190158115C AS DateTime), CAST(0x0000A2190158115C AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (17, 1013, N'ModTraitToughness', 1, CAST(0x0000A219015865F7 AS DateTime), CAST(0x0000A219015865F7 AS DateTime))
INSERT [dbo].[GoalsRaceMeta] ([GoalsCalassMetaId], [GoalsRaceId], [PropertyName], [Value], [CreatedDate], [ModifiedDate]) VALUES (18, 1013, N'ModTraitDefense', -1, CAST(0x0000A21901587B03 AS DateTime), CAST(0x0000A21901587B03 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsRaceMeta] OFF
/****** Object:  Table [dbo].[GoalsCharacters]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalsCharacters](
	[GoalsCharacterId] [int] IDENTITY(100,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Alignment] [nvarchar](128) NOT NULL,
	[Fate] [int] NOT NULL,
	[CharacterLevel] [int] NOT NULL,
	[HitPoints] [int] NOT NULL,
	[Speed] [int] NOT NULL,
	[Cost] [int] NOT NULL,
	[BaseTraitClass] [int] NOT NULL,
	[BaseTraitStrength] [int] NOT NULL,
	[BaseTraitToughness] [int] NOT NULL,
	[BaseTraitDefense] [int] NOT NULL,
	[BaseTraitInitiative] [int] NOT NULL,
	[ModTraitClass] [int] NOT NULL,
	[ModTraitStrength] [int] NOT NULL,
	[ModTraitToughness] [int] NOT NULL,
	[ModTraitDefense] [int] NOT NULL,
	[ModTraitInitiative] [int] NOT NULL,
	[Reward] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[GoalsRaceId] [int] NULL,
	[GoalsClassId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GoalsCharacters] PRIMARY KEY CLUSTERED 
(
	[GoalsCharacterId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GoalsCharacters] ON
INSERT [dbo].[GoalsCharacters] ([GoalsCharacterId], [Name], [Alignment], [Fate], [CharacterLevel], [HitPoints], [Speed], [Cost], [BaseTraitClass], [BaseTraitStrength], [BaseTraitToughness], [BaseTraitDefense], [BaseTraitInitiative], [ModTraitClass], [ModTraitStrength], [ModTraitToughness], [ModTraitDefense], [ModTraitInitiative], [Reward], [UserId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (118, N'Grubz Gutter', N'Good', 3, 1, 10, 5, 38, 4, 4, 4, 5, 10, 1, 0, 1, 0, 0, 1, 6, 1000, 1005, CAST(0x0000A21B00672B1C AS DateTime), CAST(0x0000A21B00698350 AS DateTime))
INSERT [dbo].[GoalsCharacters] ([GoalsCharacterId], [Name], [Alignment], [Fate], [CharacterLevel], [HitPoints], [Speed], [Cost], [BaseTraitClass], [BaseTraitStrength], [BaseTraitToughness], [BaseTraitDefense], [BaseTraitInitiative], [ModTraitClass], [ModTraitStrength], [ModTraitToughness], [ModTraitDefense], [ModTraitInitiative], [Reward], [UserId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (120, N'Gluk Shuk', N'Good', 3, 1, 9, 7, 0, 4, 4, 4, 4, 10, 1, 0, 0, 1, 0, 1, 6, 1002, 1013, CAST(0x0000A21B0122CB13 AS DateTime), CAST(0x0000A21F014A9767 AS DateTime))
INSERT [dbo].[GoalsCharacters] ([GoalsCharacterId], [Name], [Alignment], [Fate], [CharacterLevel], [HitPoints], [Speed], [Cost], [BaseTraitClass], [BaseTraitStrength], [BaseTraitToughness], [BaseTraitDefense], [BaseTraitInitiative], [ModTraitClass], [ModTraitStrength], [ModTraitToughness], [ModTraitDefense], [ModTraitInitiative], [Reward], [UserId], [GoalsRaceId], [GoalsClassId], [CreatedDate], [ModifiedDate]) VALUES (122, N'Splug', N'Good', 4, 1, 7, 5, 0, 4, 4, 4, 4, 10, 1, -1, 0, 1, 0, 1, 6, 1006, 1015, CAST(0x0000A21B0132201F AS DateTime), CAST(0x0000A21B013617D1 AS DateTime))
SET IDENTITY_INSERT [dbo].[GoalsCharacters] OFF
/****** Object:  Table [dbo].[ClassPowers]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassPowers](
	[ClassPowerId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsClassId] [int] NOT NULL,
	[GoalsPowerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClassPowers] PRIMARY KEY CLUSTERED 
(
	[ClassPowerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassPowers] ON
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (6, 1000, 1000, CAST(0x0000A2090177BA5B AS DateTime), CAST(0x0000A2090177BA5B AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (7, 1000, 1021, CAST(0x0000A2090177D5A2 AS DateTime), CAST(0x0000A2090177D5A2 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (8, 1000, 1023, CAST(0x0000A2090177DE8D AS DateTime), CAST(0x0000A2090177DE8D AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (9, 1001, 1007, CAST(0x0000A20901785590 AS DateTime), CAST(0x0000A20901785590 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (10, 1001, 1021, CAST(0x0000A20901785F1B AS DateTime), CAST(0x0000A20901785F1B AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (11, 1001, 1023, CAST(0x0000A209017895EF AS DateTime), CAST(0x0000A209017895EF AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (12, 1005, 1005, CAST(0x0000A209017B1ECA AS DateTime), CAST(0x0000A209017B1ECA AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (13, 1005, 1011, CAST(0x0000A209017B2652 AS DateTime), CAST(0x0000A209017B2652 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (14, 1005, 1022, CAST(0x0000A209017B3011 AS DateTime), CAST(0x0000A209017B3011 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (15, 1005, 1026, CAST(0x0000A209017B4330 AS DateTime), CAST(0x0000A209017B4330 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (16, 1006, 1022, CAST(0x0000A209017D6107 AS DateTime), CAST(0x0000A209017D6107 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (17, 1006, 1028, CAST(0x0000A209017D6A55 AS DateTime), CAST(0x0000A209017D6A55 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (18, 1006, 1034, CAST(0x0000A209017D7122 AS DateTime), CAST(0x0000A209017D7122 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (19, 1007, 1003, CAST(0x0000A209017F6157 AS DateTime), CAST(0x0000A209017F6157 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (20, 1007, 1016, CAST(0x0000A209017F8E39 AS DateTime), CAST(0x0000A209017F8E39 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (21, 1007, 1022, CAST(0x0000A209017F9943 AS DateTime), CAST(0x0000A209017F9943 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (22, 1007, 1027, CAST(0x0000A209017FBD14 AS DateTime), CAST(0x0000A209017FBD14 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (23, 1008, 1010, CAST(0x0000A20A0156C7A3 AS DateTime), CAST(0x0000A20A0156C7A3 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (24, 1008, 1019, CAST(0x0000A20A0156CFE1 AS DateTime), CAST(0x0000A20A0156CFE1 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (25, 1008, 1022, CAST(0x0000A20A0156DA8F AS DateTime), CAST(0x0000A20A0156DA8F AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (26, 1008, 1015, CAST(0x0000A20A01581650 AS DateTime), CAST(0x0000A20A01581650 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (27, 1009, 1020, CAST(0x0000A20A015C5433 AS DateTime), CAST(0x0000A20A015C5433 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (28, 1009, 1021, CAST(0x0000A20A015C5CCB AS DateTime), CAST(0x0000A20A015C5CCB AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (29, 1009, 1029, CAST(0x0000A20A015C674E AS DateTime), CAST(0x0000A20A015C674E AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (30, 1010, 1001, CAST(0x0000A20A015FF57F AS DateTime), CAST(0x0000A20A015FF57F AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (31, 1010, 1006, CAST(0x0000A20A01600692 AS DateTime), CAST(0x0000A20A01600692 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (32, 1010, 1009, CAST(0x0000A20A016020E4 AS DateTime), CAST(0x0000A20A016020E4 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (33, 1010, 1025, CAST(0x0000A20A016040C7 AS DateTime), CAST(0x0000A20A016040C7 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (34, 1010, 1029, CAST(0x0000A20A01604BA3 AS DateTime), CAST(0x0000A20A01604BA3 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (35, 1011, 1013, CAST(0x0000A20A0164E24D AS DateTime), CAST(0x0000A20A0164E24D AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (36, 1011, 1017, CAST(0x0000A20A0164F044 AS DateTime), CAST(0x0000A20A0164F044 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (37, 1011, 1025, CAST(0x0000A20A0164FB5D AS DateTime), CAST(0x0000A20A0164FB5D AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (38, 1011, 1032, CAST(0x0000A20A0165040C AS DateTime), CAST(0x0000A20A0165040C AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (39, 1012, 1004, CAST(0x0000A20A01682673 AS DateTime), CAST(0x0000A20A01682673 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (40, 1012, 1018, CAST(0x0000A20A01683619 AS DateTime), CAST(0x0000A20A01683619 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (41, 1013, 1008, CAST(0x0000A20A016DED18 AS DateTime), CAST(0x0000A20A016DED18 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (42, 1013, 1033, CAST(0x0000A20A016DF89C AS DateTime), CAST(0x0000A20A016DF89C AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (43, 1014, 1014, CAST(0x0000A20A017024E9 AS DateTime), CAST(0x0000A20A017024E9 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (44, 1014, 1033, CAST(0x0000A20A01702EBF AS DateTime), CAST(0x0000A20A01702EBF AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (45, 1015, 1012, CAST(0x0000A20A01715F83 AS DateTime), CAST(0x0000A20A01715F83 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (46, 1015, 1030, CAST(0x0000A20A017168F7 AS DateTime), CAST(0x0000A20A017168F7 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (47, 1015, 1031, CAST(0x0000A20A017172E8 AS DateTime), CAST(0x0000A20A017172E8 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (48, 1016, 1002, CAST(0x0000A20A017280A6 AS DateTime), CAST(0x0000A20A017280A6 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (49, 1016, 1012, CAST(0x0000A20A01728781 AS DateTime), CAST(0x0000A20A01728781 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (50, 1016, 1024, CAST(0x0000A20A017298B5 AS DateTime), CAST(0x0000A20A017298B5 AS DateTime))
INSERT [dbo].[ClassPowers] ([ClassPowerId], [GoalsClassId], [GoalsPowerId], [CreatedDate], [ModifiedDate]) VALUES (51, 1015, 1092, CAST(0x0000A21B00C104CD AS DateTime), CAST(0x0000A21B00C104CD AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassPowers] OFF
/****** Object:  Table [dbo].[ClassEquipment]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassEquipment](
	[ClassEquipmentId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsClassId] [int] NOT NULL,
	[GoalsEquipmentId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ClassEquipment] PRIMARY KEY CLUSTERED 
(
	[ClassEquipmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassEquipment] ON
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (1, 1000, 1015, CAST(0x0000A20901768EE4 AS DateTime), CAST(0x0000A20901768EE4 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (2, 1000, 1016, CAST(0x0000A2090176A37E AS DateTime), CAST(0x0000A2090176A37E AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (3, 1000, 1022, CAST(0x0000A2090176B231 AS DateTime), CAST(0x0000A2090176B231 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (4, 1001, 1015, CAST(0x0000A2090178F7CB AS DateTime), CAST(0x0000A2090178F7CB AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (5, 1001, 1016, CAST(0x0000A20901790151 AS DateTime), CAST(0x0000A20901790151 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (6, 1001, 1017, CAST(0x0000A209017908F5 AS DateTime), CAST(0x0000A209017908F5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (7, 1001, 1022, CAST(0x0000A209017923AB AS DateTime), CAST(0x0000A209017923AB AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (8, 1005, 1006, CAST(0x0000A209017A5648 AS DateTime), CAST(0x0000A209017A5648 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (9, 1005, 1009, CAST(0x0000A209017A5EA3 AS DateTime), CAST(0x0000A209017A5EA3 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (10, 1005, 1013, CAST(0x0000A209017A9E2E AS DateTime), CAST(0x0000A209017A9E2E AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (11, 1005, 1017, CAST(0x0000A209017AA6E2 AS DateTime), CAST(0x0000A209017AA6E2 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (12, 1005, 1000, CAST(0x0000A209017BD671 AS DateTime), CAST(0x0000A209017BD671 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (13, 1005, 1004, CAST(0x0000A209017BE3D3 AS DateTime), CAST(0x0000A209017BE3D3 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (15, 1005, 1019, CAST(0x0000A209017C0551 AS DateTime), CAST(0x0000A209017C0551 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (16, 1005, 1020, CAST(0x0000A209017C23C6 AS DateTime), CAST(0x0000A209017C23C6 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (17, 1006, 1000, CAST(0x0000A209017D2FAF AS DateTime), CAST(0x0000A209017D2FAF AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (18, 1006, 1016, CAST(0x0000A209017D3C72 AS DateTime), CAST(0x0000A209017D3C72 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (19, 1006, 1022, CAST(0x0000A209017D4627 AS DateTime), CAST(0x0000A209017D4627 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (20, 1007, 1000, CAST(0x0000A209017FD1B7 AS DateTime), CAST(0x0000A209017FD1B7 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (21, 1007, 1005, CAST(0x0000A209017FD897 AS DateTime), CAST(0x0000A209017FD897 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (22, 1007, 1010, CAST(0x0000A209017FDF15 AS DateTime), CAST(0x0000A209017FDF15 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (23, 1007, 1011, CAST(0x0000A209017FE589 AS DateTime), CAST(0x0000A209017FE589 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (24, 1007, 1021, CAST(0x0000A20901800A89 AS DateTime), CAST(0x0000A20901800A89 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (26, 1008, 1014, CAST(0x0000A20A0156AA2B AS DateTime), CAST(0x0000A20A0156AA2B AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (27, 1009, 1005, CAST(0x0000A20A015ACAC5 AS DateTime), CAST(0x0000A20A015ACAC5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (28, 1009, 1006, CAST(0x0000A20A015AD4E1 AS DateTime), CAST(0x0000A20A015AD4E1 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (29, 1009, 1007, CAST(0x0000A20A015AE801 AS DateTime), CAST(0x0000A20A015AE801 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (30, 1009, 1009, CAST(0x0000A20A015AF817 AS DateTime), CAST(0x0000A20A015AF817 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (31, 1009, 1013, CAST(0x0000A20A015B047C AS DateTime), CAST(0x0000A20A015B047C AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (32, 1009, 1015, CAST(0x0000A20A015B1742 AS DateTime), CAST(0x0000A20A015B1742 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (33, 1009, 1017, CAST(0x0000A20A015B25E7 AS DateTime), CAST(0x0000A20A015B25E7 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (34, 1010, 1014, CAST(0x0000A20A0160C045 AS DateTime), CAST(0x0000A20A0160C045 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (35, 1010, 1026, CAST(0x0000A20A0160C977 AS DateTime), CAST(0x0000A20A0160C977 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (36, 1010, 1029, CAST(0x0000A20A0160D9DD AS DateTime), CAST(0x0000A20A0160D9DD AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (37, 1011, 1004, CAST(0x0000A20A01654023 AS DateTime), CAST(0x0000A20A01654023 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (38, 1011, 1006, CAST(0x0000A20A01654C8D AS DateTime), CAST(0x0000A20A01654C8D AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (39, 1011, 1007, CAST(0x0000A20A0165562F AS DateTime), CAST(0x0000A20A0165562F AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (40, 1011, 1009, CAST(0x0000A20A0165782B AS DateTime), CAST(0x0000A20A0165782B AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (41, 1011, 1013, CAST(0x0000A20A016585AD AS DateTime), CAST(0x0000A20A016585AD AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (42, 1011, 1015, CAST(0x0000A20A0165932C AS DateTime), CAST(0x0000A20A0165932C AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (43, 1011, 1017, CAST(0x0000A20A01659C38 AS DateTime), CAST(0x0000A20A01659C38 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (44, 1012, 1001, CAST(0x0000A20A0168C1FC AS DateTime), CAST(0x0000A20A0168C1FC AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (45, 1012, 1002, CAST(0x0000A20A0168CAB5 AS DateTime), CAST(0x0000A20A0168CAB5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (46, 1012, 1006, CAST(0x0000A20A0168D7D5 AS DateTime), CAST(0x0000A20A0168D7D5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (47, 1012, 1007, CAST(0x0000A20A0168EB60 AS DateTime), CAST(0x0000A20A0168EB60 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (48, 1012, 1009, CAST(0x0000A20A0168F4CA AS DateTime), CAST(0x0000A20A0168F4CA AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (49, 1012, 1013, CAST(0x0000A20A0168FDD2 AS DateTime), CAST(0x0000A20A0168FDD2 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (50, 1012, 1015, CAST(0x0000A20A01691943 AS DateTime), CAST(0x0000A20A01691943 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (51, 1012, 1017, CAST(0x0000A20A01694087 AS DateTime), CAST(0x0000A20A01694087 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (52, 1012, 1018, CAST(0x0000A20A0169A1C9 AS DateTime), CAST(0x0000A20A0169A1C9 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (53, 1013, 1005, CAST(0x0000A20A016CFBB5 AS DateTime), CAST(0x0000A20A016CFBB5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (54, 1013, 1006, CAST(0x0000A20A016D1552 AS DateTime), CAST(0x0000A20A016D1552 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (55, 1013, 1007, CAST(0x0000A20A016D1EF9 AS DateTime), CAST(0x0000A20A016D1EF9 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (56, 1013, 1009, CAST(0x0000A20A016D2766 AS DateTime), CAST(0x0000A20A016D2766 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (57, 1013, 1013, CAST(0x0000A20A016D5E5F AS DateTime), CAST(0x0000A20A016D5E5F AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (58, 1013, 1015, CAST(0x0000A20A016D6868 AS DateTime), CAST(0x0000A20A016D6868 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (59, 1013, 1017, CAST(0x0000A20A016D8606 AS DateTime), CAST(0x0000A20A016D8606 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (60, 1013, 1018, CAST(0x0000A20A016D9B6A AS DateTime), CAST(0x0000A20A016D9B6A AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (61, 1013, 1019, CAST(0x0000A20A016DA67E AS DateTime), CAST(0x0000A20A016DA67E AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (62, 1013, 1020, CAST(0x0000A20A016DBF85 AS DateTime), CAST(0x0000A20A016DBF85 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (63, 1013, 1021, CAST(0x0000A20A016DD760 AS DateTime), CAST(0x0000A20A016DD760 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (64, 1014, 1000, CAST(0x0000A20A016FA1D1 AS DateTime), CAST(0x0000A20A016FA1D1 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (65, 1014, 1005, CAST(0x0000A20A016FA816 AS DateTime), CAST(0x0000A20A016FA816 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (66, 1014, 1006, CAST(0x0000A20A016FB169 AS DateTime), CAST(0x0000A20A016FB169 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (67, 1014, 1007, CAST(0x0000A20A016FBFB9 AS DateTime), CAST(0x0000A20A016FBFB9 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (68, 1014, 1009, CAST(0x0000A20A016FC91F AS DateTime), CAST(0x0000A20A016FC91F AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (69, 1014, 1013, CAST(0x0000A20A016FD328 AS DateTime), CAST(0x0000A20A016FD328 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (70, 1014, 1015, CAST(0x0000A20A016FDCDD AS DateTime), CAST(0x0000A20A016FDCDD AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (71, 1014, 1017, CAST(0x0000A20A016FE97F AS DateTime), CAST(0x0000A20A016FE97F AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (72, 1014, 1018, CAST(0x0000A20A016FFD67 AS DateTime), CAST(0x0000A20A016FFD67 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (73, 1014, 1019, CAST(0x0000A20A01700B92 AS DateTime), CAST(0x0000A20A01700B92 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (74, 1015, 1005, CAST(0x0000A20A0170F099 AS DateTime), CAST(0x0000A20A0170F099 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (75, 1015, 1006, CAST(0x0000A20A0170F6C7 AS DateTime), CAST(0x0000A20A0170F6C7 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (76, 1015, 1007, CAST(0x0000A20A0170FDB5 AS DateTime), CAST(0x0000A20A0170FDB5 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (77, 1015, 1009, CAST(0x0000A20A01710425 AS DateTime), CAST(0x0000A20A01710425 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (78, 1015, 1013, CAST(0x0000A20A01710F00 AS DateTime), CAST(0x0000A20A01710F00 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (79, 1015, 1015, CAST(0x0000A20A017117EC AS DateTime), CAST(0x0000A20A017117EC AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (80, 1015, 1017, CAST(0x0000A20A017122F7 AS DateTime), CAST(0x0000A20A017122F7 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (81, 1015, 1018, CAST(0x0000A20A0171323B AS DateTime), CAST(0x0000A20A0171323B AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (82, 1015, 1028, CAST(0x0000A20A01713E4C AS DateTime), CAST(0x0000A20A01713E4C AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (83, 1016, 1005, CAST(0x0000A20A0171FE94 AS DateTime), CAST(0x0000A20A0171FE94 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (84, 1016, 1006, CAST(0x0000A20A017215CB AS DateTime), CAST(0x0000A20A017215CB AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (85, 1016, 1007, CAST(0x0000A20A01721F5B AS DateTime), CAST(0x0000A20A01721F5B AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (86, 1016, 1009, CAST(0x0000A20A017226DA AS DateTime), CAST(0x0000A20A017226DA AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (87, 1016, 1013, CAST(0x0000A20A01722FB7 AS DateTime), CAST(0x0000A20A01722FB7 AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (88, 1016, 1015, CAST(0x0000A20A01723B5D AS DateTime), CAST(0x0000A20A01723B5D AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (89, 1016, 1017, CAST(0x0000A20A0172433E AS DateTime), CAST(0x0000A20A0172433E AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (90, 1016, 1018, CAST(0x0000A20A0172536C AS DateTime), CAST(0x0000A20A0172536C AS DateTime))
INSERT [dbo].[ClassEquipment] ([ClassEquipmentId], [GoalsClassId], [GoalsEquipmentId], [CreatedDate], [ModifiedDate]) VALUES (91, 1016, 1028, CAST(0x0000A20A017267D3 AS DateTime), CAST(0x0000A20A017267D3 AS DateTime))
SET IDENTITY_INSERT [dbo].[ClassEquipment] OFF
/****** Object:  Table [dbo].[CharacterSpells]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterSpells](
	[CharacterSpellId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsCharacterId] [int] NOT NULL,
	[GoalsSpellId] [int] NOT NULL,
	[GoalsSpellTemplateId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CharacterSpells] PRIMARY KEY CLUSTERED 
(
	[CharacterSpellId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterPowers]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterPowers](
	[CharacterPowerId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsCharacterId] [int] NOT NULL,
	[GoalsPowerId] [int] NOT NULL,
	[GoalsPowerTemplateId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CharacterPowers] PRIMARY KEY CLUSTERED 
(
	[CharacterPowerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CharacterPowers] ON
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (131, 118, 1226, 1080, CAST(0x0000A21B00675BBA AS DateTime), CAST(0x0000A21B00675BBA AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (132, 118, 1227, 1086, CAST(0x0000A21B00675BBA AS DateTime), CAST(0x0000A21B00675BBA AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (133, 118, 1228, 1005, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (134, 118, 1229, 1011, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (135, 118, 1230, 1022, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (136, 118, 1231, 1026, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (145, 120, 1240, 1064, CAST(0x0000A21B0122DD73 AS DateTime), CAST(0x0000A21B0122DD73 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (146, 120, 1241, 1070, CAST(0x0000A21B0122DD73 AS DateTime), CAST(0x0000A21B0122DD73 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (147, 120, 1242, 1079, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (149, 120, 1244, 1033, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (150, 120, 1245, 1008, CAST(0x0000A21B012474F4 AS DateTime), CAST(0x0000A21B012474F4 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (177, 122, 1272, 1046, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (178, 122, 1273, 1093, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (179, 122, 1274, 1012, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (180, 122, 1275, 1030, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (181, 122, 1276, 1031, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (182, 122, 1277, 1092, CAST(0x0000A21B01348773 AS DateTime), CAST(0x0000A21B01348773 AS DateTime))
INSERT [dbo].[CharacterPowers] ([CharacterPowerId], [GoalsCharacterId], [GoalsPowerId], [GoalsPowerTemplateId], [CreatedDate], [ModifiedDate]) VALUES (185, 122, 1280, 1038, CAST(0x0000A21F01434C39 AS DateTime), CAST(0x0000A21F01434C39 AS DateTime))
SET IDENTITY_INSERT [dbo].[CharacterPowers] OFF
/****** Object:  Table [dbo].[CharacterEquipment]    Script Date: 08/19/2013 21:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterEquipment](
	[CharacterEquipmentId] [int] IDENTITY(1,1) NOT NULL,
	[GoalsCharacterId] [int] NOT NULL,
	[GoalsEquipmentId] [int] NOT NULL,
	[GoalsEquipmenTemplateId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CharacterEquipment] PRIMARY KEY CLUSTERED 
(
	[CharacterEquipmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CharacterEquipment] ON
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (178, 118, 1224, 1006, CAST(0x0000A21B00675BBB AS DateTime), CAST(0x0000A21B00675BBB AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (182, 118, 1228, 1000, CAST(0x0000A21B00675BBB AS DateTime), CAST(0x0000A21B00675BBB AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (183, 118, 1229, 1004, CAST(0x0000A21B00675BBB AS DateTime), CAST(0x0000A21B00675BBB AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (186, 118, 1232, 1020, CAST(0x0000A21B00675BBD AS DateTime), CAST(0x0000A21B00675BBD AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (196, 120, 1242, 1005, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (197, 120, 1243, 1006, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (204, 120, 1250, 1019, CAST(0x0000A21B0122DD74 AS DateTime), CAST(0x0000A21B0122DD74 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (246, 122, 1292, 1005, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (254, 122, 1300, 1028, CAST(0x0000A21B01348772 AS DateTime), CAST(0x0000A21B01348772 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (255, 122, 1301, 1015, CAST(0x0000A21B01357EF6 AS DateTime), CAST(0x0000A21B01357EF6 AS DateTime))
INSERT [dbo].[CharacterEquipment] ([CharacterEquipmentId], [GoalsCharacterId], [GoalsEquipmentId], [GoalsEquipmenTemplateId], [CreatedDate], [ModifiedDate]) VALUES (257, 122, 1303, 1006, CAST(0x0000A21F01423A58 AS DateTime), CAST(0x0000A21F01423A58 AS DateTime))
SET IDENTITY_INSERT [dbo].[CharacterEquipment] OFF
/****** Object:  Default [DF_CharacterEquipment_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterEquipment] ADD  CONSTRAINT [DF_CharacterEquipment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CharacterEquipment_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterEquipment] ADD  CONSTRAINT [DF_CharacterEquipment_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_CharacterPowers_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterPowers] ADD  CONSTRAINT [DF_CharacterPowers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CharacterPowers_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterPowers] ADD  CONSTRAINT [DF_CharacterPowers_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_CharacterSpells_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterSpells] ADD  CONSTRAINT [DF_CharacterSpells_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_CharacterSpells_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterSpells] ADD  CONSTRAINT [DF_CharacterSpells_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_ClassEquipment_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassEquipment] ADD  CONSTRAINT [DF_ClassEquipment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ClassEquipment_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassEquipment] ADD  CONSTRAINT [DF_ClassEquipment_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_ClassPowers_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassPowers] ADD  CONSTRAINT [DF_ClassPowers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_ClassPowers_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassPowers] ADD  CONSTRAINT [DF_ClassPowers_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsCharacters_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsCharacters_Alignment]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_Alignment]  DEFAULT (N'Neutral') FOR [Alignment]
GO
/****** Object:  Default [DF_GoalsCharacter_Fate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_Fate]  DEFAULT ((3)) FOR [Fate]
GO
/****** Object:  Default [DF_GoalsCharacter_CharacterLevel]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_CharacterLevel]  DEFAULT ((1)) FOR [CharacterLevel]
GO
/****** Object:  Default [DF_GoalsCharacter_HitPoints]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_HitPoints]  DEFAULT ((6)) FOR [HitPoints]
GO
/****** Object:  Default [DF_GoalsCharacters_HitPoints1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_HitPoints1]  DEFAULT ((6)) FOR [Speed]
GO
/****** Object:  Default [DF_GoalsCharacter_Cost]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_Cost]  DEFAULT ((0)) FOR [Cost]
GO
/****** Object:  Default [DF_GoalsCharacter_BaseTraitClass]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_BaseTraitClass]  DEFAULT ((4)) FOR [BaseTraitClass]
GO
/****** Object:  Default [DF_GoalsCharacter_BaseTraitStrength]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_BaseTraitStrength]  DEFAULT ((4)) FOR [BaseTraitStrength]
GO
/****** Object:  Default [DF_GoalsCharacter_BaseTraitToughness]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_BaseTraitToughness]  DEFAULT ((4)) FOR [BaseTraitToughness]
GO
/****** Object:  Default [DF_GoalsCharacter_BaseTraitInitiative]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_BaseTraitInitiative]  DEFAULT ((4)) FOR [BaseTraitDefense]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitInitiative1_1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitInitiative1_1]  DEFAULT ((4)) FOR [BaseTraitInitiative]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitClass1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitClass1]  DEFAULT ((0)) FOR [ModTraitClass]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitStrength1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitStrength1]  DEFAULT ((0)) FOR [ModTraitStrength]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitToughness1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitToughness1]  DEFAULT ((0)) FOR [ModTraitToughness]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitDefense1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitDefense1]  DEFAULT ((0)) FOR [ModTraitDefense]
GO
/****** Object:  Default [DF_GoalsCharacters_BaseTraitInitiative1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_BaseTraitInitiative1]  DEFAULT ((0)) FOR [ModTraitInitiative]
GO
/****** Object:  Default [DF_GoalsCharacters_ModTraitInitiative1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacters_ModTraitInitiative1]  DEFAULT ((0)) FOR [Reward]
GO
/****** Object:  Default [DF_GoalsCharacter_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsCharacter_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters] ADD  CONSTRAINT [DF_GoalsCharacter_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsClass_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClass_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsClass_Description]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClass_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_GoalsClasses_Description1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClasses_Description1]  DEFAULT ('') FOR [Equipment]
GO
/****** Object:  Default [DF_GoalsClass_StartingHitPoints]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClass_StartingHitPoints]  DEFAULT ((6)) FOR [StartingHitPoints]
GO
/****** Object:  Default [DF_GoalsClasses_BaseClass]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClasses_BaseClass]  DEFAULT ('') FOR [BaseClass]
GO
/****** Object:  Default [DF_GoalsClasses_Page]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClasses_Page]  DEFAULT ('') FOR [Page]
GO
/****** Object:  Default [DF_GoalsClasses_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClasses_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsClasses_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsClasses] ADD  CONSTRAINT [DF_GoalsClasses_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsEquipment_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsEquipment_Type]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Type]  DEFAULT ('') FOR [Type]
GO
/****** Object:  Default [DF_GoalsEquipment_Effects]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Effects]  DEFAULT ('') FOR [Effects]
GO
/****** Object:  Default [DF_GoalsEquipment_Rarity]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Rarity]  DEFAULT ('') FOR [Rarity]
GO
/****** Object:  Default [DF_GoalsEquipment_Cost]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Cost]  DEFAULT ((1)) FOR [Cost]
GO
/****** Object:  Default [DF_GoalsEquipment_EquipmentClass]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_EquipmentClass]  DEFAULT ('') FOR [EquipmentClass]
GO
/****** Object:  Default [DF_GoalsEquipment_Page]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Page]  DEFAULT ('') FOR [Page]
GO
/****** Object:  Default [DF_GoalsEquipment_Template]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_Template]  DEFAULT ((0)) FOR [Template]
GO
/****** Object:  Default [DF_GoalsEquipment_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsEquipment_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsEquipment] ADD  CONSTRAINT [DF_GoalsEquipment_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsPowers_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsPowers_Type]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Type]  DEFAULT ('') FOR [Type]
GO
/****** Object:  Default [DF_GoalsPowers_Effect]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Effect]  DEFAULT ('') FOR [Effect]
GO
/****** Object:  Default [DF_GoalsPowers_Notes]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Notes]  DEFAULT ('') FOR [Notes]
GO
/****** Object:  Default [DF_GoalsPowers_Cost]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Cost]  DEFAULT ((0)) FOR [Cost]
GO
/****** Object:  Default [DF_GoalsPowers_Range]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Range]  DEFAULT ('') FOR [Range]
GO
/****** Object:  Default [DF_GoalsPowers_Damage]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Damage]  DEFAULT ('') FOR [Damage]
GO
/****** Object:  Default [DF_GoalsPowers_Page]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Page]  DEFAULT ('') FOR [Page]
GO
/****** Object:  Default [DF_GoalsPowers_PowerClass]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_PowerClass]  DEFAULT ('') FOR [PowerClass]
GO
/****** Object:  Default [DF_GoalsPowers_Template]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_Template]  DEFAULT ((0)) FOR [Template]
GO
/****** Object:  Default [DF_GoalsPowers_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsPowers_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsPowers] ADD  CONSTRAINT [DF_GoalsPowers_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsRaceMeta_Value]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaceMeta] ADD  CONSTRAINT [DF_GoalsRaceMeta_Value]  DEFAULT ((1)) FOR [Value]
GO
/****** Object:  Default [DF_GoalsRaceMeta_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaceMeta] ADD  CONSTRAINT [DF_GoalsRaceMeta_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsRaceMeta_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaceMeta] ADD  CONSTRAINT [DF_GoalsRaceMeta_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsRaces_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsRaces_Description]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_GoalsRaces_FavoredClasses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_FavoredClasses]  DEFAULT ('') FOR [FavoredClasses]
GO
/****** Object:  Default [DF_GoalsRaces_Move]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Move]  DEFAULT ((6)) FOR [Movement]
GO
/****** Object:  Default [DF_GoalsRaces_Points]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Points]  DEFAULT ((0)) FOR [Points]
GO
/****** Object:  Default [DF_GoalsRaces_Notes]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Notes]  DEFAULT ('') FOR [Notes]
GO
/****** Object:  Default [DF_GoalsRaces_Page]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_Page]  DEFAULT ('') FOR [Page]
GO
/****** Object:  Default [DF_GoalsRaces_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsRaces_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaces] ADD  CONSTRAINT [DF_GoalsRaces_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_GoalsSpells_Name]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_GoalsSpells_StartingLevel]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_StartingLevel]  DEFAULT ((1)) FOR [StartingLevel]
GO
/****** Object:  Default [DF_GoalsSpells_Action]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Action]  DEFAULT ('') FOR [Action]
GO
/****** Object:  Default [DF_GoalsSpells_Range]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Range]  DEFAULT ('') FOR [Range]
GO
/****** Object:  Default [DF_GoalsSpells_Effects]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Effects]  DEFAULT ('') FOR [Effects]
GO
/****** Object:  Default [DF_GoalsSpells_Damage]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Damage]  DEFAULT (N'None') FOR [Damage]
GO
/****** Object:  Default [DF_GoalsSpells_Boost]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Boost]  DEFAULT ('') FOR [Boost]
GO
/****** Object:  Default [DF_GoalsSpells_LevelBonus]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_LevelBonus]  DEFAULT ((0)) FOR [LevelBonus]
GO
/****** Object:  Default [DF_GoalsSpells_Bonus]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Bonus]  DEFAULT ('') FOR [Bonus]
GO
/****** Object:  Default [DF_GoalsSpells_Uses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Uses]  DEFAULT ('') FOR [Uses]
GO
/****** Object:  Default [DF_GoalsSpells_Page]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Page]  DEFAULT ('') FOR [Page]
GO
/****** Object:  Default [DF_GoalsSpells_Template]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_Template]  DEFAULT ((0)) FOR [Template]
GO
/****** Object:  Default [DF_GoalsSpells_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_GoalsSpells_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsSpells] ADD  CONSTRAINT [DF_GoalsSpells_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_Users_UserName]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsUsers] ADD  CONSTRAINT [DF_Users_UserName]  DEFAULT ('') FOR [UserName]
GO
/****** Object:  Default [DF_RaceFavoredClass_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RaceFavoredClass] ADD  CONSTRAINT [DF_RaceFavoredClass_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RaceFavoredClass_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RaceFavoredClass] ADD  CONSTRAINT [DF_RaceFavoredClass_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF_RacePowers_CreatedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RacePowers] ADD  CONSTRAINT [DF_RacePowers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_RacePowers_ModifiedDate]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RacePowers] ADD  CONSTRAINT [DF_RacePowers_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Default [DF__webpages___IsCon__77AABCF8]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__789EE131]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [FK_CharacterEquipment_GoalsCharacters]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterEquipment]  WITH CHECK ADD  CONSTRAINT [FK_CharacterEquipment_GoalsCharacters] FOREIGN KEY([GoalsCharacterId])
REFERENCES [dbo].[GoalsCharacters] ([GoalsCharacterId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterEquipment] CHECK CONSTRAINT [FK_CharacterEquipment_GoalsCharacters]
GO
/****** Object:  ForeignKey [FK_CharacterEquipment_GoalsEquipment]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterEquipment]  WITH CHECK ADD  CONSTRAINT [FK_CharacterEquipment_GoalsEquipment] FOREIGN KEY([GoalsEquipmentId])
REFERENCES [dbo].[GoalsEquipment] ([GoalsEquipmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterEquipment] CHECK CONSTRAINT [FK_CharacterEquipment_GoalsEquipment]
GO
/****** Object:  ForeignKey [FK_CharacterPowers_GoalsCharacters]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterPowers]  WITH CHECK ADD  CONSTRAINT [FK_CharacterPowers_GoalsCharacters] FOREIGN KEY([GoalsCharacterId])
REFERENCES [dbo].[GoalsCharacters] ([GoalsCharacterId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterPowers] CHECK CONSTRAINT [FK_CharacterPowers_GoalsCharacters]
GO
/****** Object:  ForeignKey [FK_CharacterPowers_GoalsPowers]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterPowers]  WITH CHECK ADD  CONSTRAINT [FK_CharacterPowers_GoalsPowers] FOREIGN KEY([GoalsPowerId])
REFERENCES [dbo].[GoalsPowers] ([GoalsPowerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterPowers] CHECK CONSTRAINT [FK_CharacterPowers_GoalsPowers]
GO
/****** Object:  ForeignKey [FK_CharacterSpells_GoalsCharacters]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterSpells]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSpells_GoalsCharacters] FOREIGN KEY([GoalsCharacterId])
REFERENCES [dbo].[GoalsCharacters] ([GoalsCharacterId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSpells] CHECK CONSTRAINT [FK_CharacterSpells_GoalsCharacters]
GO
/****** Object:  ForeignKey [FK_CharacterSpells_GoalsSpells]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[CharacterSpells]  WITH CHECK ADD  CONSTRAINT [FK_CharacterSpells_GoalsSpells] FOREIGN KEY([GoalsSpellId])
REFERENCES [dbo].[GoalsSpells] ([GoalsSpellId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterSpells] CHECK CONSTRAINT [FK_CharacterSpells_GoalsSpells]
GO
/****** Object:  ForeignKey [FK_ClassEquipment_GoalsClasses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ClassEquipment_GoalsClasses] FOREIGN KEY([GoalsClassId])
REFERENCES [dbo].[GoalsClasses] ([GoalsClassId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassEquipment] CHECK CONSTRAINT [FK_ClassEquipment_GoalsClasses]
GO
/****** Object:  ForeignKey [FK_ClassEquipment_GoalsEquipment]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ClassEquipment_GoalsEquipment] FOREIGN KEY([GoalsEquipmentId])
REFERENCES [dbo].[GoalsEquipment] ([GoalsEquipmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassEquipment] CHECK CONSTRAINT [FK_ClassEquipment_GoalsEquipment]
GO
/****** Object:  ForeignKey [FK_ClassPowers_GoalsClasses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassPowers]  WITH CHECK ADD  CONSTRAINT [FK_ClassPowers_GoalsClasses] FOREIGN KEY([GoalsClassId])
REFERENCES [dbo].[GoalsClasses] ([GoalsClassId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassPowers] CHECK CONSTRAINT [FK_ClassPowers_GoalsClasses]
GO
/****** Object:  ForeignKey [FK_ClassPowers_GoalsPowers]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[ClassPowers]  WITH CHECK ADD  CONSTRAINT [FK_ClassPowers_GoalsPowers] FOREIGN KEY([GoalsPowerId])
REFERENCES [dbo].[GoalsPowers] ([GoalsPowerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassPowers] CHECK CONSTRAINT [FK_ClassPowers_GoalsPowers]
GO
/****** Object:  ForeignKey [FK_GoalsCharacters_GoalsClasses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters]  WITH CHECK ADD  CONSTRAINT [FK_GoalsCharacters_GoalsClasses] FOREIGN KEY([GoalsClassId])
REFERENCES [dbo].[GoalsClasses] ([GoalsClassId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[GoalsCharacters] CHECK CONSTRAINT [FK_GoalsCharacters_GoalsClasses]
GO
/****** Object:  ForeignKey [FK_GoalsCharacters_GoalsRaces1]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters]  WITH CHECK ADD  CONSTRAINT [FK_GoalsCharacters_GoalsRaces1] FOREIGN KEY([GoalsRaceId])
REFERENCES [dbo].[GoalsRaces] ([GoalsRaceId])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[GoalsCharacters] CHECK CONSTRAINT [FK_GoalsCharacters_GoalsRaces1]
GO
/****** Object:  ForeignKey [FK_GoalsCharacters_GoalsUsers]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsCharacters]  WITH CHECK ADD  CONSTRAINT [FK_GoalsCharacters_GoalsUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[GoalsUsers] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoalsCharacters] CHECK CONSTRAINT [FK_GoalsCharacters_GoalsUsers]
GO
/****** Object:  ForeignKey [FK_GoalsRaceMeta_GoalsRaces]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[GoalsRaceMeta]  WITH CHECK ADD  CONSTRAINT [FK_GoalsRaceMeta_GoalsRaces] FOREIGN KEY([GoalsRaceId])
REFERENCES [dbo].[GoalsRaces] ([GoalsRaceId])
GO
ALTER TABLE [dbo].[GoalsRaceMeta] CHECK CONSTRAINT [FK_GoalsRaceMeta_GoalsRaces]
GO
/****** Object:  ForeignKey [FK_RaceFavoredClass_GoalsClasses]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RaceFavoredClass]  WITH CHECK ADD  CONSTRAINT [FK_RaceFavoredClass_GoalsClasses] FOREIGN KEY([GoalsClassId])
REFERENCES [dbo].[GoalsClasses] ([GoalsClassId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceFavoredClass] CHECK CONSTRAINT [FK_RaceFavoredClass_GoalsClasses]
GO
/****** Object:  ForeignKey [FK_RaceFavoredClass_GoalsRaces]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RaceFavoredClass]  WITH CHECK ADD  CONSTRAINT [FK_RaceFavoredClass_GoalsRaces] FOREIGN KEY([GoalsRaceId])
REFERENCES [dbo].[GoalsRaces] ([GoalsRaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceFavoredClass] CHECK CONSTRAINT [FK_RaceFavoredClass_GoalsRaces]
GO
/****** Object:  ForeignKey [FK_RacePowers_GoalsPowers]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RacePowers]  WITH CHECK ADD  CONSTRAINT [FK_RacePowers_GoalsPowers] FOREIGN KEY([GoalsPowerId])
REFERENCES [dbo].[GoalsPowers] ([GoalsPowerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RacePowers] CHECK CONSTRAINT [FK_RacePowers_GoalsPowers]
GO
/****** Object:  ForeignKey [FK_RacePowers_GoalsRaces]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[RacePowers]  WITH CHECK ADD  CONSTRAINT [FK_RacePowers_GoalsRaces] FOREIGN KEY([GoalsRaceId])
REFERENCES [dbo].[GoalsRaces] ([GoalsRaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RacePowers] CHECK CONSTRAINT [FK_RacePowers_GoalsRaces]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 08/19/2013 21:33:32 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[GoalsUsers] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
