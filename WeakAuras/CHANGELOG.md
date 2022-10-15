# WeakAuras

## [](https://github.com/WeakAuras/WeakAuras2/tree/c5bb8a4637577d9189dc69df881d0aad5a21d490) (2022-10-14)
[Full Changelog](https://github.com/WeakAuras/WeakAuras2/commits/c5bb8a4637577d9189dc69df881d0aad5a21d490) 

- Add Dracthyr to spelling dictionary  
- Convert the few typo annotations we have to Emmy ones  
- Don't glow an hidden frame when no unitframe is found to glow  
    Handle new FRAME\_UNIT\_ADDED callback from LibGetFrame, useful when matching frame is found only later  
    FRAME\_UNIT\_ADDED was added in a refactor of LibGetFrame https://github.com/mrbuds/LibGetFrame/commit/f678aa70bfd63be33fe12d0c584ca2d247877700  
- Actions: Ups fix up hide function  
    Fixes: #3878  
- Tweak DebugPrint description  
- Actions: Fix finish tts voice setting being hidden  
    Fixes: #3876  
- Wrath Character Stats trigger: add expertise, armoren, spellpen  
    Fixes #3858  
- Wrath Pet trigger: Pet Behavior missed 'aggressive' option, fixes #3860  
- Fix typo in trigger description  
- Remove WeakAuras.TestSchool because it's unused and trivial  
- Fixup broken settings after a bug in update.lua  
    Unfortunately there was a bug in update.lua that lead to auras creating  
    a circle.  
    And even more unfortunately there was a second bug in the code that  
    should have printed a error message. So the bug didn't get properly  
    diagnosed.  
    I did analyze two broken settings, and while for the first detection of  
    which parent is wrong was easy, the second case requires a hardcoded  
- Fix variable name in AddMany.  
- Remove WeakAurasSortedDropDown  
    AceOptions+AceGui can actually do this for the last 3 years.  
- Cast Trigger: Fix cast latency calculation  
    Fixes: #3831  
- Fix typo in equip set trigger  
    Fixes #3852  
- Update: Fix removing existing groups in edge cases  
    Namely, if a groups has auras in it, but all of them are moved to a  
    different new group, we would not correctly delete the group and thus  
    multiple group would control the same aura. This obviously leads to lots  
    of problems.  
    Fixes: #3825  
- Implement IsDragonflight on main branch  
- Wrath: Fix encounter id tooltip (Ipse's fix)  
- Add beta to issue template  
- StopMotion: Fix wrong layer  
- Fix Icons with disabled modRate  
- don't use 20 as a fallback  
    if author did not provide a softMax then we should use max as the softMax instead.  
    indeed, this is what is done further down the procedure, where if max is also nil then we fallback to 100.  
    Fixes #3834  
- fixed typo added in https://github.com/WeakAuras/WeakAuras2/pull/3794  
- Weapon Enchant trigger: update on login  
    Fixes #3824  
- Add LibGetFrame profiling data to profiling result  
- Fix Lua error in replaceValuesFuncs with talent load condition which is a table  
- Enable "Crowd Controlled" trigger on Wrath  
    Translit found it works but can't make a PR or a ticket!!  
- Fix load option's multiTristate with multi selection  
    Fixes #3812  
- Wrath template racials update  
- Wrath: warrior template update  
    Fixes #3798  
- Wrath Talent load condition: require Class selected  
    Refactored single condition check into Private.checkForSingleLoadCondition  
    This function has an optional parameter to validate values, this is useful for example for checking spec selection for a class that have fewer specs than previously selected. eg select 4th druid spec (restoration) then switch class to evoker (2 specs).  
- Combat Log trigger: use spellid for icon on wrath  
- Fix Slider max >= min check  
    By doing the same check that AceGui does and fixing it up if we detect a  
    problem.  
    Noteably that means soft overrides normal, and fallbacks to 0 and 100  
    respectively.  
    Fixes: #3799  
- BT2: Fix Pets being included in unitCount  
    Actually two separate bugs:  
    * The LibSpecialization on receiving a spec update, would recheck  
      whether a TriggerInfo should be active on "party1pet", which  
      WeakAuras.UnitIsPet does not consider a pet.  
      Fix that by passing in "partypet1" instead.  
    * The code that sets triggerInfo.includePets didn't set includePets to  
      nil if it's not enabled  
- fixed typo and added ID to error msg on duplicate ID import  
- BT2: Fix UNIT\_PET not considering all scanFuncs  
    Fixes: #3755  
- BT2: Add a NPC Id filter to nameplates  
    Fixes: #3788  
- BT2 Spell Cache: Increase misses to skip to 80k  
    Because on Wrath there is a 76k gap between spells. At some point we  
    probably need to hardcode a few restarts per expansion.  
    Fixes: #3767  
- Fix lua error on dragging auras  
    The buttons should not be relayouted in button:StartDrag but outside, so  
    that the position of the mainAura stays correct.  
    Fixes: #3778  
- Hide lua errors in the Options for auras with legacy behaviour again  
    Fixes: #3792  
- Lua error handling: Fix Custom Sort and Untrigger  
- Add a callback to Weakauras.Import (#3794)  
    * Which is called after the import process is done  
    * With success, id  
- Make talent lazy migration from single to multi wipe previous multi data  
- Add cspell database and fix a few typos  
- Fix error in talent lazy migration, when use\_talent is true but talent.single is nil  
- Talent load condition skip testing talents not existing for player class  
    This add arg.initTest, if this function return false on init further tests by arg.test will be ignored  
    Fixes #3780  
- Aura trigger: fix options not available for current version of the game handled as if they were  
    Fixes #3784  
- Add the LoC type NONE  
- Convert single talents to multi talents on Wrath  
- Cast trigger, enable interruptible option on Wrath  
    Fixes #3738  
- Fix nil error in valuesForTalentFunction  
- really actually remove escape from the editor this time, honest  
- Fix "Spec Role" load condition label on Retail again  
    Fix incorrect label after https://github.com/WeakAuras/WeakAuras2/commit/978ca3403e6edf0d6b9c948fc54b014ba32149d5  
    Revert change https://github.com/WeakAuras/WeakAuras2/commit/a340e303013fcb5b06b1a6c873b9ae35664e44fe in the wrong place  
- Options Fix tooltips of BT2  
    Fixes: #3753  
- Fix creation of fallback states  
    No idea why the old code always used the first trigger's data, that  
    doesn't look correct  
    Fixes: #3735  
- GenericTrigger: Fix number check if there's nothing to check against  
    Fixes: #3751  
- Custom Options: Allow width setting for multiselect  
    Fixes: #3744  
- Conditions: Fix lua error for strange remaining time checks  
- Improve Lua Error handling  
    * Make a AuraWarning if we encounter a error  
    * Improve how we point out which custom code block caused the error  
    * Add the WeakAuras/Aura Version Number to the Output  
    Fixes: #3741  
- Wrath Talent load condition rework (#3730)  
- Rename "From Template" to "Premade Auras" and change icon  
- Wrath assigned role load condition: use role from talent group if not in a group with assigned role  
- Fix glows missing on some frames not in LibGetFrame cache yet  
    add region to glow\_frame\_monitor when no frame was found in case of one is find later  
- Fix "spec role" load condition label on retail  
- Tidy up combat log additions (#3759)  
- TextEditor: Remove escape to close without saving (#3760)  
- Add raid marks as a text replacement on combat log triggers (#3754)  
- add elapsed to FRAME\_UPDATE  
- More reasonable font sizes and fixed formating  
- Adds font size menu in settings. 12 - 24, increasing by 2.  
- Item Equipped trigger: add slot filter  
    Fixes #3739 indirectly  
- templates classic up to wrath: add immolate to warlock debuffs, fixes #3740  
- TOC Bump for Patch 9.2.7  
- move encounter & zoneId list stuff from Prototypes.lua to a per extension Types_<version>.lua  
- Wrath: Listen to event PLAYER\_TALENT\_UPDATE for talent & spell known load conditions & triggers, fixes #3729  
- Make setting distribute spaced with 0 "work"  
    Fixes: #3734  
- Document workaround with a link to WoWUIBugs  
    Now that I did actually report it.  
- BT2: Fix stale/wrong information in multi-tracking states  
    The unit property was only set on constructing the state, and not  
    updated if the mapping between guids and units changed. While it is  
    possible to write code that updates all states, that seems like  
    unnecessary complexity, since apparently no one depends on unit.  
    The GUID property was wrong because it was updated from the stale unit  
    information. Removing the unit property, makes the GUID stay correct.  
    Fixes: #3711  
- PositionOptions: Hide AnchorPoint if a aura is in a dynamic group  
    It could show up if the anchor frame type was changed while outside the  
    dynamic group.  
- Provide Specialization filter for BT2, Health, Power triggers  
    Built on top of LibSpecialization.  
    Note: Needs a more advanced LibSpecialization  
- Fix an error on SetTextureOrAtlas behavior  
- Fix typo  
- Add a framework for custom triggers to watch other triggers  
    * Custom triggers can watch other triggers via a TRIGGER:n event  
    Fixes: #3708   
    FIxes; #937  
- Switch to single build mode (#3722)  
- Fix spell cooldown trigger: ignore rune cooldown, on wrath  
    Fixes #3724  
- Death Knight wrath template update  
    Big thanks to Kruciform <3  
- Update bug\_report.yml  
    Add WOTLK to flavor dropdown  
- Fix set parent to anchor when frame is an empty string  
    fixes #3718  
- Custom Option deleting entry of an array prompt a confirmation dialog  
    Fixes #3667  
- Add "Cooldown > Hide Timer Text" condition on Icon region  
    Fixes #3671  
- add "Set Parent to Anchor" option to dynamic group's grouped by frame  
    Fixes #3672  
- use bcc's modelpath on wrath  
    sadly wowtools listfile script won't let us filter by build to make a proper wrath file  
- wrath templates (WIP)  
- Fix (temporary?) for WeakAuras.IsCorrectVersion and wrongTargetMessage for wrath  
- Reorganise version checks  
    If blizzard changes WOW\_PROJECT\_ID for Wrath it will be easier to fix everywhere in code  
    IsBCC was including Wrath, not anymore  
- Restore vehicle load condition for wrath  
- Make "Spell Known" load condition work with pet abilities  
- Fix number formaters with custom code  
- disable swing timer trigger for wrath  
- Assigned Role load condition & trigger filter for wrath  
    Also use different names for "Assigned Role" and "Raid Role" across UI  
- prepare wrath templates  
- update encounter ids for wrath  
- Add rune type triggers for wrath  
- support 10 & 25 players heroic raids for instance\_type load condition  
- Fix version check for Wrath  
- Faction Reputation trigger: handle paragons and improve friendship  
- Fix Wrath toc  
- CI: Add Wrath package  
    Re-use BCC pkmeta for now since it is the same  
- Add Wrath versions to TOC  
- Fix aura trigger UI positioning for BCC & Classic  
    Fixes #3696  
- Remove old newFeatureStrings from 2020-2021  
- Position setting: use 9slice widget and moved some options  
- new feature string  
    Signed-off-by: Allen Faure <afaure6@gmail.com>  
- teach group options how to not Merge  
    by default this is off, to preserve current behavior  
    Signed-off-by: Allen Faure <afaure6@gmail.com>  
- do more nil checks  
    after all, the arrays might not be the same length  
    Fixes #3688  
    Signed-off-by: Allen Faure <afaure6@gmail.com>  
- Aura trigger: fix role option  
    If an aura was imported from classic to retail or vice versa with group\_role or raid\_role option checked, an empty list of roles was shown with no possibility to hide it.  
- Threat Situation trigger: add unitexist check  
    Fixes #3670  
- swing timer: reset ranged & melee swings on Feign Death  
    Fixes #3669  
- TBC: fix "Instance Type", "Raid Role", "Group Leader" load conditions  
    fixes #3675  
- fix health trigger on classic era  
    confirmed by test that UNIT\_HEALTH has bug reported at https://github.com/Stanzilla/WoWUIBugs/issues/228  
- Fix "Since apply/refresh" checks for Show on always auras  
    For those auras UpdateStateWithMatch did not set the correct  
    initialTime/refreshTimes  
    Fixes: #3664  
- Fix warnings for protected frames  
    Fixes: #3662  
- Fix invalid rects that cause Glows not being applied properly  
    The underlying issue for glows not appearing is that they really don't  
    like invalid geometry. The root cause appears to be:  
    * We apply the glow in modify (if it is set to always visible)  
    * The geometry of a aura in a dynamic group might still be invalid at  
      that point, because it was previously attached to a controlPoint,  
      which got recycled. (The recyling breaking the controlPoints geometry)  
    * The control points are layed out afer the glow was already applied  
    So try to ensure that the controlPoints never get a invalid geometry,  
    thus ensuring that the geometry always works.  
    Fixes: #3657  
- Add a debug log functionality for custom coded auras  
    A minimal system:  
    * Custom Code can now call DebugPrint(...)  
      By default this does nothing  
    * Debug logging can be enabled on the Information Tab  
      If enabled, DebugPrints are saved  
    * Tables are automatically dumped, via the same system that is behind  
      /dump.  
    * Debug Logs are kept until debugging is disabled.  
    * There's a warning on loading a aura that has debugging enabled,  
      which should remind people to disable debug logging  
    * There's no api to check whether debugging is enabled or not.  
    * The debug flag is exported. No special handling for it.  
    * There's a warning once the debug log contains more than 1000 lines,  
      and a warning each time a aura with debug log enabled is loaded  
    * Auras loading is automatically noted in the debug log  
    * A clear log button is available  
    Fixes: #3239  
- Add a "Group Leader" load option  
    Probably useful enough.  
    Fixes: #3652  
- Update TOC for Patch 9.2.5  
- clean more unused variables  
- fix chat message\_voice condition not displayed correctly in options  
- remove BackdropTemplateMixin workaround  
- bufftrigger2: rename local frame to Buff2Frame  
- cleanup unused variables and functions  
- CreateFrame: use same casing for frameType  
- replace deprecated function C\_LegendaryCrafting.GetRuneforgePowersByClassAndSpec  
- none of the time formatters have 2 arguments  
- rename WeakAuras.lua "frame" to "WeakAurasFrame"  
    the name "frame" is use by variables of different scope all over the file  
- Fix assignement ambiguity  
- Fixed issue with "Array"-type options in aura groups  
- CI: Speed up build times by using `plain-copy` for model path files  
- Work around invalid geometry even harder  
    For auras that are attached to nameplates, the geometry might be  
    invalid. That is IsRectValid() returns false. For these regions,  
    applying the glow doesn't work.  
    Maybe it's worth consider fixing that at some point. (But how?)  
    For now, try even harder to work around the problem.  
    Fixes: #3638  
- Tweak visibility handling again  
    Fixes: #3643  
- Tweak Profiling output  
    Put auras before systems, since this is from experience the more useful  
    information.  
    Also add notes that the times are incomplete, and a link to our discord.  
- Fix Time formatting flooring the seconds, instead of ceiling them  
    For backwards compatibility reasons this is a new option, which defaults  
    to off for new auras, but is enabled for existing auras.  
    That's as good as it can be without breaking someones setup.  
    Fixes: #3142  
- Make right click open group tab by defaut  
    The same way that left click currently work.  
- Enable Spell Cast Succeeded on bcc & classic  
    fixes #3637  
- fix nil error with modRate in Cooldown Progress Spell trigger  
    fixes #3641  
- rangecheck condition: make it work with neutral  
- Make opening CodeReview much faster  
    Fixes: #3632  
- Fix nil error if direction is not set  
    Fixes: #3633  
- Companion: show consolidated update/install nags after login  
    Showing nag for update & install was handled by companion addon  
    Since there is now multiple app that show this information, we want weakauras to do it, only once  
    WeakAuras.CountWagoUpdates still exists in Init.lua and return 0, so outdated companion addons won't error and won't show any nag if they copied what WeakAurasCompanion did.  
- add WeakAuras.AddCompanionData to avoid colision between companion addons  
- Allow usage of names/units from trigger for whisper destination  
- Tweak protected frame warning  
    Combine message for show and hide in the same category.  
- Add a "Match Count Per Unit" check  
    Only enabled if:  
    * Group Trigger  
    * Show Clones  
    * Combine Per Unit  
    * Affected or All  
    is selected.  
    Fixes: #3389  
- Add warnings about protected frames with a link to the wiki  
    Fixes: #3440  
- Fix visibility handling some more  
    Fixes: #3566  
- Add a sound icon for Auras that play sound via a action or a condition  
    * Doesn't show a icon for custom code playing a sound  
    * Shares the spot with warnings/error which prevent the sound icon from  
      showing  
    Fixes: #3565  
- Deprecate %t, taget in Chat Message/Whisper Sent To  
    It's a very legacy feature that we want to get rid of.  
- Aura List: Fix scroll being wonky  
    We use a hack to hide every button that is currently outside the  
    viewport, but somehow the check if the value is different doesn't work.  
    Removing that does make it work and keeps the performance apparently  
    fine.  
    Removing the hack does make the aura list too slow.  
    Fixes: #3584  
- Fixup visibility handling  
    Fixes: #3566  
- Fix "Since Ready" condition  
    It kept on thinking that the spell just reset, even if it was already  
    ready.  
    Fixes: #3603  
- Fix ActionOptions layout  
    Fixes: #3624  
- Add description for - escape in more places  
- Conditions: Add Chat Color option to Chat Action  
    Was missing for some reason  
- Update.lua: Remove unused function  
- extra Cooldown Progress: typo for showlossofcontrol  
- Tweak Update Summary display  
- Fix Warmode load condition  
    Probably a regression from 5de07bf21  
    Fixes: #3619  
- Group icons handle atlas  
- Select a group show group tab  
- Spell Cooldown: new Loss of Control option  
    Fixes #3609  
- rangecheck condition: fix indenting  
- Fix shift-multiselection with aura installed from "Ready For Install"  
    Fixes 3607  
- fix error with dual dropdown multiselection  
    fixes #3614  
- add newFeatureString for recent new features  
- cast trigger: new "advanced caster's target check" option  
    This option is only visible with unit=nameplate  
    This is a workaround for UNIT\_TARGET event that does not trigger for nameplate units  
- new global range check condtion  
- add transparent background wa mini logo  
- set update/install logo behind animated texture  
- stopmotion picker: slow down animation frame rate  
- Enable the auto-filled Instance Type also on classic/tbc  
    Somehow that list includes both:  
     * Dungeon (Normal) and  
     * Normal Party  
    and it's unclear what the difference is. But at least it's automatically  
    updated with Blizzard changes  
    Fixes: #3599  
- Fix UpdateFakeTimers to always start from now  
    Since we only update the fake timers every second, this looks better.  
    See: #3604  
- Import: Increase font size  
    Use the "normal" font size instead of "small"  
- Rename export options  
    So that it's clear that one is only for debugging  
- Reintroduce warning about tocVersion  
    Make it warn whenever the expansion is different.  
    See: #3604  
- Fix typo in variable name  
- Change "In Group" string usage, so that it's better translatable  
    See: #3604  
- Profiling Window: Change "Start" to "Start Now"  
    See: #3604  
- Add missing localization  
    See: #3604  
- Add \ escaping to Name-Realm filter  
    Fixes: #3597  
- NewAura: Fix thumbnail buttons after canceling templates  
    Fixes: #3586  
- Reputation Trigger: Don't include standingId 0  
    It doesn't exist as far as I can tell.  
    Fixes: #3601  
- Texture Picker: Fix empty drop down for strange users  
    That is:  
    1) Open the pullout of the group picker  
    2) Change the texture,  
       which updates the group picker  
    3) Observe the pull out being empty.  
    Simply close the pullout before updating it  
    Fixes: #3600  
- make texture picker handle stopmotion files with settings in name  
- Add headers to bufftrigger2 to aid navigation of settings (#3598)  
    * add headers to bufftrigger2 to aid navigation of settings  
    * More minor layout changes to Bufftrigger2  
    * Fix inconsistency in Cast By player text  
    * Revert the debuff>dispel text change  
- Add missing color escape resets  
    Fixes: #3587  
- Increase width of Code Review Tree  
    Fixes: #3580  
- ScamCheck: Fix missing custom check  
    Also tweak text for custom code  
    See: #3580  
- ScamCheck:ScamCheck: Fix missing overlay functions  
    See: #3580  
- Fix lua error on trying to unregister a buggy event name  
    Fixes: #3591  
- Readd warning for auras from the future  
- fix parry logic in swing timer (#3592)  
    Co-authored-by: Buds <mrbouyou@gmail.com>  
- Unit Characteristics trigger: add Afk & DND checks  
- anchor options tuning for "group by frame", fixes #3570  
    hide "Anchored To", and show correct anchorPoint option  
- library check before loading files  
- handle CDR with modRate (#3548)  
    * State contains real numbers, to match Blizzard api.  
    * Default is Blizzard behaviour  
    * Make conversion optional for cooldown widget/%p/%t  
      * Though OmniCC ignores modRate  
    * Remaining Time/Total time checks in trigger/conditions always use  
      Blizzard time. If there's demand we can add real time options.  
    * Min/Max use real time, because the main use case is syncing multiple  
      displays to have a uniform width per second.  
    Co-authored-by: Infus <infus@squorn.de>  
- Bump actions/upload-artifact from 2 to 3  
    Bumps [actions/upload-artifact](https://github.com/actions/upload-artifact) from 2 to 3.  
    - [Release notes](https://github.com/actions/upload-artifact/releases)  
    - [Commits](https://github.com/actions/upload-artifact/compare/v2...v3)  
    ---  
    updated-dependencies:  
    - dependency-name: actions/upload-artifact  
      dependency-type: direct:production  
      update-type: version-update:semver-major  
    ...  
    Signed-off-by: dependabot[bot] <support@github.com>  
- BT2: Fix indentaion mistake  
- BT2: Fix automatic removal of multi auras after 60s  
    Fixes: #3465  
- Options: Fix moving auras showing wrong text replacements  
    The cause of this was df9140cbaa, which fixed a bug where states were  
    almost always applied to regions.  
    That exposed a bug, that after moving a aura around, the region's modify  
    function resets the text, which then isn't overwritten by a state.  
    Because the ApplyStatesToRegion correctly thinks that the region is  
    already synced with the state.  
    So reset state in modify, because fundamentally modify breaks any sync  
    with a state.  
    Fixes: #3536  
- Check Item Equipped via name instead of item id  
    This makes the check consider all items of the same id, the same.  
    That matches how the ui represents it.  
    If that breaks anything, we probably should add a "Exact Match" option  
    for items.  
    Fixes: #3538  
- Localize a few error messages  
- Preserve order of auras on drag and drop  
    Fixes: #3569  
- Add a scrollbar to the import window  
    This deals with too small windows effectively and will help when we  
    eventually show more information.  
- Move showing of NewAura tab to FillOptions instead of Pick  
    Fixes: #3567  
- Fix inconsistency of text replacements  
    We have a shortcut path for 2 letter strings, e.g. %p, %t. Because those  
    are very common, and we don't need to parse it.  
    Unfortunately this code path used a different logic for deciding what to  
    do with %c, if the state contains a .c member.  
    We additionaly had logic to hide the formatter for %c replacements. But  
    that was incorrect becasue %c could refer to state.c. (In the not  
    shortcut path.)  
    Fix that by removing the special casing of %c for the options, and since  
    we now show the options make them actually work for custom texts.  
    That's a minor feature, which got requested a few times.  
    Fixes: #3561  
- Block access to WeakAurasOptions + WeakAurasOptionsSaved  
    That will break some auras, but only those that are doing really stupid  
    things.  
- dummy commit to fix error in dependency  
- Add a few entries to the block list  
    Those are just essentially just different names for existing entries  
- Options: Refactor visbility flag tracking  
- Options: Also cache nameAll  
    Small benefit and hopefully doesn't break anything  
- Make ClearPicks a lot faster  
- Remove WeakAuras.UpdateDisplayButton  
    The function only updated the thumnail and thus was doing the same job  
    as UpdateThumbnail.  
    Thus:  
    * Replace it where it appeared to still be needed, or where I was  
      unsure.  
    * Remove it everywhere else. Most of those places are due to group  
      thumnails no longer being dynamic  
- Allow dragging/grouping of group auras  
- Enable creation of nested group  
- Enable importing for nested groups  
- Fix Duplicate not creating nested auras in the right order  
- Clear AuraEnvironment recursively  
    Not exactly sure if we need to, but it's relatively cheap  
- Adjust corruption detection for nested  
      * Remove part of corruption detection that detected nested  
      * But disallow dynamic groups having group type childre  
- Rework load tracking for group auras for nested  
- Fix scamCheck  
- Rewrite Importing of auras  
- Make Options window background less transparent  
- Disable new luacheck rules so we can get a release out  
- Adjust code for new luacheck rules  
- update bcc toc to 20504  
- workaround UNIT\_HEALTH bug, fixes #3550  
- Update WeakAurasModelPaths from wow.tools  
- Add new legendary bonus ids  
    Thanks to translit  
- Treat the subbackground special for ApplyFrameLevel  
    Setting the framelevel of the main region does somehow affect the frame  
    levels of the sub regions. So do that before setting the framelevel of  
    the sub regions.  
    Fixes: #3528  
- Fix nil error in UnitPlayerControlledFixed  
- Fix Class coloring for units that are far away  
    We can't use UnitPlayerControlled because it's broken, so use a  
    work-around via UnitGUID that works.  
    Fixes: #3539  
- DBM: Fix nil error for paused timers  
- BW/DBM Timer triggers: fix handling of remainingTime with paused timers, fixes #3537  
- Threat Situation trigger: add boss & nameplate support  
    add a migration for unitThreat to unit  
    statesParameter is now "unit"  
- Revert "Adjust {rt#} replacement to be compatible with DBM extended raid marks"  
    raid target > 8 was removed in 9.2  
    https://wowpedia.fandom.com/wiki/Patch\_9.2.0/API\_changes  
- Spell Known trigger: add inverse option, fixes #3533  
- Combat Log trigger: add spellSchool filter, fixes #3529  
- Character state bcc: revert hastepercent change, fixes #3516  
- Add slam rank 5 to spells resetting swing  
    Add the missign slam rank 5 to the list of spells that reset swing in  
    BCC.  
- add a tooltip for unit selections in status triggers  
- Change order of Types and Prototypes.lua loading  
- bufftrigger boss unit fix  
- more fixes to support boss units up to 10  
- increase boss units up to boss10  
    "prototype pantheon" & "generals boss in nathria" has more than 5 boss units  
- fix iconPicker with spellCache change  
- Add a detailed tooltip to the Unit setting in bufftrigger2 (#3509)  
    * Add a detailed tooltip to the Unit setting in bufftrigger2  
- Make spellcache take up less constants  
    Unfortunately our spell cache leads to such a enourmous options saved  
    variables, that on next interface load the data cannot be loaded,  
    leading to a "constant table overflow".  
    The root cause of that error is the amount of unique constants used in  
    the saved variables, which is limited to 2^18.  
    Fix that by keeping the final layer of the table in a string, instead of  
    a table. This severly reduces the amount of unique constants at some run  
    time cost.  
    Fixes: #3503  
- fix unpackaged copy of weakauras not working on 9.2  
    WOW\_PROJECT\_MAINLINE value changed from 5 to 1 in 9.2  
- Update TOC for 9.2.0 and 1.14.2  
- BCC: Correctly disabled Glaives and enable Thrown Weapons  
    Fixes: #3500  
- BCC: Correctly disable Goblins  
- Fix Order of Subelements in Dynamic Groups  
    Apparently calling SetFrameStrata resets the frame level. There's some  
    logic to that. So apply the right frame levels afterwards.  
    Fixes: #3430  
- enable autocast glow for bcc & som  
- clear scripts on import/export frame fixes #3496  
- restore hastepercent to previous state on retail  
- Faction Reputation trigger: support friendship standing  
- fix bad haste check  
- Allow \ to escape , in Zone Name check  
    Fixes: #3483  
- Faction: Use a Sorted Drop Down for the Names  
- Fix Faction trigger  
    Fixes: #3487  
- bcc: fix Character Stats > hastepercent  
- StopMotion: support more flexible frame size (#3481)  
    * add frame & file size options, allow to use frames with any size  
    * clean up ui  
- fix "unregister unknown event" error in conditions  
- Fix texts for AutomaticRepair vs ManualRepair  
    Accidentally fliped in 27e752bb4a440e1401f1353efd6c83caa41d5683  
- Fix unlocalized string in Anchor settings  
- Adjust {rt#} replacement to be compatible with DBM extended raid marks  
    And with that also fix the issue in:  
    Fixes: #3473  
- Be less clever with Repair Dialog translations  
    Fixes: #3447  
- Fix class colored option not being available  
    Fixes: #3464  
- import string: remove editbox workaround  
    it seems it is not needed anymore, tested on SL, TBC, SoM  
- fix unload of frame\_update & rangecheck conditions  
- fix possible Lua error in text formatter  
- Swap single quotes to double and escape inverted commas within strings  
- store %count in the tooltip  
- Add items that reset swing timer for TBC  
    Healing potions as well as oil of immolation and sulfuron slammers  
    reset the swing timer. Categorize them as such to make swing timer  
    more accurate when using any of them.  
- Let slam cast not interrupt swing timer  
    Slam only resets slam timer when cast finishes, or if the slam cast  
    happens when a swing is supposed to happen. This fixes the swing timer  
    when a slam is cancelled mid-swing.  
- make condition events use RegisterUnitEvent when possible (#3470)  
    * this should fix performance issues with the cooldown trigger with "Insufficient Resources" and "Spell Usable" conditions  
    * add support for filtering in custom checks too  
    * does not support multi units (group, nameplate, ...)  
    * this will break existing custom checks conditions using ":" as separator  
- Adjust icon cooldown option text (#3468)  
    * change cooldown to swipe and add tooltips  
- fix cast trigger for tbc 2.5.3 #3448  
- Fixing transmission and add a 5mn expiration timer on linked auras  
    Fixes: #3452  
- additional WA logo textures (#3451)  
    Co-authored-by: Buds <mrbouyou@gmail.com>  
- fix glow in templates  
- fix bad order of aurabar foreground when importing old version, #3449  
- Transmission: Check sender before decompression  
    Fixes: #3413  
- Spell Changes: Also check for name/icon changes  
    Fixes: #3424  
- remove boss unit for BBC  
- Disable WeakAurasModelPaths auto update  
    wowtools doesn't add new models to it's db because they don't have a name or path in db2 files  
    PR created are not doing anything right now  
- Fix unnecessary calls to ApplyStateToRegion  
    Fixes: #3412  
- Fix Modernize calling GetProperties lua error  
    Calling GetProperties in Modernize was a bad idea, because we obviously  
    run Modernize before we add. But GetProperties does depend on data that  
    is generated on Add. That is the overlay information.  
    Fortunately we don't all properties, all we need are the properties for  
    sub elements, and those don't depend on Add.  
    While the lua error log is pretty obvious that this is the problem, I  
    can't actually test this against real settings, because none of the  
    affected people actually properly reported the bug by including their  
    settings file.  
    Fixes: #3436  
- Update TOC for BCC Patch 2.5.3  
- Fix validate not actually moving conditions  
    And try to salvage the thus broken conditions  
- Update WeakAurasModelPaths from wow.tools  
- Allow unitId filtering on various events, fixes #3432 (#3433)  
- sanitize foreground/background subregions (#3427)  
    * sanitize foreground/background subregions  
    fixes #3423  
- remove the retail check on all incoming heal settings  
- Update WeakAurasModelPaths from wow.tools  
- Fix checking for unique keys  
    Space and separator don't have key  
    Close #3419  
- Fix generating unique key for suboptions  
    Close #3420  
- Improve Convert to remove incompatible sub elements  
- Ensure that each region has .values  
- Ensure that each region has anchor points  
- Ensure that regions always have a AnchorSubRegion  
- Show a warning if trying to anchor to a anchor restricted region  
    E.g. a aura that is attached to a nameplate  
- Workaround the editbox scrolling on resizing the editbox  
    Fixes: #3410  
- update SOM toc version  
- Subbackground should support everything but groups  
    Fixes #3406  
- Fix Modernize of barmodels  
    Also while at it, drop the code that removed invalid sub regions. That  
    would probably do as much harm as good, as it doesn't adjust conditions  
- add raid marker filter to Health, Power, Alternate Power, and Cast triggers  
- Unit Characteristics: add raid marker filter  
- Rename stopmotion.lua to StopMotion.lua  
- Update WeakAurasModelPaths from wow.tools  
- subregions tweaks (#3394)  
    * tweak model subregion  
      add extra\_width and extra\_height  
      support more regions  
    * rename BarModel into Model  
    * and subbarmodel subregionType into submodel  
    * migration and rename bar\_model\_visible & bar\_model\_alpha  
    * min/max => softMin/softMax  
    * templates: fix glow condition  
- Let timestamp differ slightly for extra attacks (#3396)  
    An arms warrior's sword specialization talent will trigger the event  
    SPELL\_EXTRA\_ATTACKS with a SWING\_DAMAGE/SWING\_MISSED immediately  
    after. The swing timer should not be reset by the extra attack, but  
    the check requires the exact same timestamp for SPELL\_EXTRA\_ATTACKS  
    and the following SWING\_DAMAGE/SWING\_MISSED.  
    The events are timestamped separately, thus the timestamp does not  
    strictly have to be the same. Allow a small discrepancy between the  
    timestamps to not reset the swing timer on mid-swing sword  
    specialization procs unnecessarily.  
- reflect Blizz changes to TTS volume and rate (#3397)  
-  Reputation trigger: add "Use Watched Faction" option  
     fixes #3391  
- Update WeakAurasModelPaths from wow.tools  
- DBM Stage Trigger: new "stage total" option  
    this option is supported since  
    https://github.com/DeadlyBossMods/DBM-Unified/commit/407e3ba5156409b5fe6becce35d0662014bb2d1a  
- Allow exporting of nested groups  
    Can't yet create them, nor import them. But export works :)  
- Replace CallbackHandler with a simple callback handler  
    CallbackHandler is intended for 1:1 connections, whereas the internal  
    callback handler should be a 1:M system.  
- Remove unused WeakAuras.ImportString compability function  
    It's rather unlikely that anyone depends on it.  
- Remove GetData hack in Import code  
    This was necessary because group thumnails depended on the child  
    thumbnails. Since that's no longer the case, we don't need this anymore  
- Slightly improve import code by commenting it  
- Remove old code for editing urls via import tooltip  
- temporary fix for 2.5.3 UnitCastingInfo & UnitChannelInfo changes  
    use them also for classic\_era  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Fix updating of PVP Talents  
    With the usual caveat of not working correctly if the options ui is  
    open.  
    Fixes: #3373  
- check that option key exists before writing  
    noninteractive options dont have keys, so we shouldn't assume that they always do  
    Signed-off-by: Allen Faure <afaure6@gmail.com>  
- yeet duplicate keys in custom options (#3369)  
    * generate unique keys on add/duplicate action  
    this was probably broken for years but nobody noticed,  
    because most people don't leave the option key at its default  
    and/or don't delete options  
    * further enhance custom option validation  
    WeakAuras should now know how to validate some more corner cases,  
    especially when moving options in and out of groups  
    Also, teach the validation process to deal with duplicate keys directly,  
    so that garbage data doesn't brick auras  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Fix sharing of auras with ] in the name  
    Fixes: #3360  
- Don't show color formating options for Chat message formating  
    Fixes: #3365  
- Fix Cooldown Resume if switching from static to dynamic progress  
- Fix Toggle List Default layout  
    We use a multiselect widget, which creates a InlineGroup. That  
    InlineGroup uses up some vertical space, so setting the width of each  
    checkbox to WeakAuras.normalWidth can lead to a undesirable layout.  
    Decreasing the width to 90% of that should not be noticeable to the  
    user, while guranteering the intended layout.  
    Fixes: #3371  
- Fix Crowd Control trigger  
    Fixes: #3364  
- Add a UNIT\_SPELLCAST\_SUCCEEDED event trigger  
    Since this is somewhat useful to the boss mod in WA community  
    Fixes: #3366  
- Fix PickDisplayMultiple not clearing a selection on selecting a group  
- Fix ungroup button  
    If the button is not selected, select it first  
- Remove unused local variable  
- BT2: Fix pet handling for group triggers  
    We need to do what happens e.g. on NAMEPLATE\_UNIT\_ADDED/REMOVED  
    Fixes: #3353  
- BT2: Add a "buff/debuff" mode  
    Fixes: #3357  
- Update WeakAurasModelPaths from wow.tools  
- Remove outdated TODO  
- BT2: Change how various filter options interact with the pets options  
    For several filter, the filtering option now applies to the owner of the  
    pet, instead of the pet.  
    The class filter, now filters by the owner's class. Same with  
    the role filter.  
    That means, a aura filtering for "hunter" with  
    * PetsOnly will only include pets of hunters  
    * PlayersAndPets will only include hunters and their pets  
    And Ignore self now applies to the pet too.  
    Fixes: #3349  
- Bufftrigger2: Fix pet inclusion  
    Fixes: #3348  
- Combat Log Event: Add "In Party" check, similar to "In Group"  
    Fixes: #3341  
- Fix Charged Combo Points  
    9.1.5 enables testing it, and it was buggy.  
    Fixes: #3343  
- Fix Bonus ID partial matches.  
    This fixes two cases:  
    * A partial match where the end of the string matched the searched id.  
      There was already a mechanism in place to prevent this, but there was  
      a minor mistake.  
    * A partial match where the beginning of the string matched the searched  
      id and was located prior to the id would result in a false negative.  
      Fix that by instead searching directly for both versions of the  
      potential id manually.  
- Update TOC for Retail Patch 9.1.5  
- Remove accidental debug print  
- Ensure that on drag start we select the dragged aura  
- Document that DuplicateAura does not copy children  
- Remove unused parameter from internal function  
- Simplify filterAnimPresets  
- Simplify code around deletion of dynamic groups  
    There's a suspend directly before deletion, which is good enough  
- Remove reference to dead regionType "timer"  
- PickDisplay: Adjust for nested groups  
    Expand all parents recursively. Also do that before checking if the  
    selection is the same, as we want to run that code even if the item is  
    already picked  
- Recursively add parents, grandparents, etc  
    E.g. the group's border depends on all children recursively, so we need  
    to go to the root on adding parents  
- Prepare group for nested  
    * Disable align/distribute options if there's a subgroup.  
      Instead of investing time into figuring out, and implementing how this  
      niche option should work.  
    * Disable border if there'S a dynamic group child. The grouü border only  
      updates according to the static position of auras. (E.g. it ignores  
      animations and conditions.) That makes it unable to cope with dynamic  
      groups at all.  
- Skip sub groups in shift multi selection  
- Add Spirit to Character Stats  
    Fixes: #3322  
- Add UNIT\_RESISTANCES to Character Stats trigger  
- enable TTS on classic\_era and fix error for tbc  
- Use .data.id instead of GetTitle()  
    They are the same, but we clearly want to use the id here not the string  
    being shown to the user.  
- ExternalAddons: Remove it  
    I accidentally broke this before the shadowlands release, which proves  
    that it is indeed unused.  
    Instead of fixing it, kill it.  
- BCC: Fix combo points not updating on target change  
    Fixes: #3318  
- AuraBar: Fix SetInverse not inversing overlays  
    Fixes: #3324  
- Fix reseting of x/y offset on auras being moved into a dynamic group  
    Fixes: #3328  
- Swing Timer: Note that the trigger is not correct in BCC  
    Fixes: #3321  
- Fix conditions not being unapplied correctly in collapse  
    If the aura has a out animation. Specifally we need to first collapse  
    a aura, which can either directly un apply conditions, or postpone the  
    unapply on when the animations are done.  
    And after that cancel the animations, so that the canceling runs the  
    unapply immediately.  
    Fixes: #3319  
- Add support for Charged Combo Points with Kyrian Legendary  
    Which is unfortunately ugly in several ways.  
    Fixes: #3297  
- Text Replacements: Add Custom Variables with descriptions  
    Making it opt-in sounds like the best way.  
    Fixes: #3310  
- Try to preserve names on importing  
    That is on importing we might rename a aura, due to a conflict. But  
    later the aura that conflicts gets renamed/deleted thus freeing the  
    original name.  
    Fixes: #3279  
- swing timer: fix spell that reset swing not starting swing timer  
    by waiting a frame after the spell so "isAttacking" has correct state  
- TTS: Save value.message\_voice as number instead of string  
    The voice index is used as number everywhere else  
    Fixes: #3323  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- update toc files for classic era 1.14.0  
- fix castbar latency overlay nil error  
    fixes #3314  
- Update WeakAurasModelPaths from wow.tools  
- character stats trigger: add block value  
    fixes  #3303  
- rework cast trigger latency overlay  
    fixes #3294  
- fix error when hovering ZoneID  
    fixes  #3306  
- Update WeakAurasModelPaths from wow.tools  
- Enable TTS actions for TBC, fixes #3288  
- Add Textures and Sounds by Leo  
    Thanks Leo.  
    Fixes: #3268  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update TOC for BCC Phase 2  
- Add deficit to health and power triggers  
    fixes #3273  
- bufftrigger2: trigger number was missing for some text replacement's tooltip  
- Enable raidMark for classic & bcc for bufftrigger2 trigger  
    And fix typo in tooltip  
- Add texture support to aurabar overlays  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- GetHitChance : fix potential nil error  
- Update WeakAurasModelPaths from wow.tools  
- Change the transmission version for nested exports  
    * Nested exports have a transmission version of 2000  
    * Imports of those fails until nested auras are actually supported  
- Model Fix small option issues  
    Fixes: #3254  
- Character Stats trigger: add hitrating and hitpercent on bcc, and update on PLAYER\_DAMAGE\_DONE\_MODS event  
    criticalchance wasn't update when changing stance on warrior  
- Character Stats trigger: fix criticalpercent fixes #3256  
    on classic & bcc it didn't use GetSpellCritChance  
    on retail it returned min GetSpellCritChance value instead of max  
- set region's alpha setter and getter only for regions with a default alpha property  
    fixes #3257  
- set region.regionType in region's create function  
    this give visibility of regionType in regionPrototype.create  
- bcc: add "zone id" load condition  
    api is back for builds 2.5.1 and 2.5.2  
- BT2: Add optional "Raid Mark"  
    Other solutions that are more general for all unit triggers are much  
    harder. And as much as I'd like to explore them, most users wouldn't  
    want to wait a decade for this feature.  
    So add it to bufftrigger 2 for now.  
- Add optional role + roleIcon to BT2 state  
    It's optional because we need to do extra work on role changes.  
    Fixes: #3247, #3122  
- Swingtimer (#3255)  
    * swing timer: fix attack speed update  
- bcc: update encounter ids tooltip  
    reflect changes made by blizzard with build 2.5.1.38453  
- Fix animation playing for models  
    No idea when that broke, but seems broken for everything. So implement  
    it via a slightly more modern method.  
    Fixes: #3252  
- Sounds: Add Double Whoosh  
    From  
    https://freesound.org/people/qubodup/sounds/60025/  
    by qubodup  
    Licensed under CC0 1.0  
- Sounds: Add a Oh No sound  
    From  
    https://freesound.org/people/kim.headlee/sounds/394409/  
    by kim.headlee  
    Licensed under CC BY 3.0  
- Sounds: Add Generic Errror Beep  
    From  
    https://freesound.org/people/RICHERlandTV/sounds/216090/  
    by RICHERlandTV  
    Licensed under CC BY 3.0  
- Sounds: Add a better Squeaky Toy Sound  
    From  
    https://freesound.org/people/arc241/sounds/448821/  
    by arc241  
    Licensed under CC0  
- Sounds: Add Tada Fanfare  
    From  
    https://freesound.org/people/plasterbrain/sounds/397353/  
    by plasterbrain  
    Licensed under CC0  
- Fix Enchant Trigger for Chinese locale  
    From a screenshot it appears that there's no space between the time and  
    the time unit. So remove that space from the pattern.  
    Should hopefully fix:  
    Fixes: #3248  
- Add pets support for BT2, Health, Cast and Power trigger  
    Fixes: #3189   
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Fix Weapon Enchant Trigger name state value.  
- swing timer: not all ranged attack trigger PLAYER\_ENTER\_COMBAT event, fixes #3232  
- swing timer: fix not hidding after swing, fixes #3233  
- Update WeakAurasModelPaths from wow.tools  
- Fix Item Trigger for Bonus Id  
- Fix WeakAuras.CheckForItemBonusIds for extraEnchantId  
    As used by e.g. engineering enchants.  
    Fixes: #3223  
- Snippets: Escape pipes on inserting  
    Fixes: #3214  
- Update WeakAurasModelPaths from wow.tools  
- Generic health trigger should fire UNIT\_MAXHEALTH, fixes #3225  
- swing timer: refactor  
    use a swingStart function to remove duplicate code  
    check weapon speed before scheduling a timer, if speed is 0 it means there is no weapon in the slot  
    use a single internal event for updating the trigger, nothing specific was done with each event  
    fix profiling not correctly stopped if not attacking (incorrect return)  
- swing timer: repentance reset swing, fixes #3186  
- character stats trigger: update for bcc, fixes #3218  
- swing timer: reset swing on equipement change, fixes #3125  
- swing timer: attack speed is snapshoted on tbc, fixes #3205  
- Sounds: Add Basic Drums  
    Modified from https://freesound.org/people/old\_waveplay/sounds/381353/  
    Original by old\_waveplay  
    Licensed under CC BY 3.0  
- Sounds: Add Xylophone  
    Modified from https://freesound.org/people/BockelSound/sounds/489495/  
    Original sound by BockelSound  
    Licensed under CC BY 3.0  
- Sounds: Add Chicken Alarm  
    From https://freesound.org/people/Rudmer\_Rotteveel/sounds/316920/  
    By Rudmer\_Rotteveel  
    Licensed under CC0 1.0  
- Sounds: Add Synth Chord  
    From https://freesound.org/people/1121weew/sounds/506508/  
    By 1121weew  
    Licensed under CC0 1.0  
- Sounds: Add Acoustic Guitar Chord  
    From https://freesound.org/people/NoiseCollector/sounds/58040/  
    Sound by NoiseCollector  
    Licensed under CC BY 3.0  
- Sounds: Goat Bleating  
    From https://freesound.org/people/reinsamba/sounds/57794/  
    Licensed under CC BY 3.0  
    Sound by reinsamba  
- Sounds: Add Rooster Chicken Calls  
    From https://freesound.org/people/AGFX/sounds/43382/  
    Sound by AGFX  
    Licensed under CC0 1.0  
- Sounds: Add Sheep Bleat  
    From https://freesound.org/people/n\_audioman/sounds/321967/  
    Sound by n\_audioman.  
    Licensed under CC BY 3.0  
- Fix visbility of unloaded auras  
    Fixes: #3192  
- Update WeakAurasModelPaths from wow.tools  
- Add alpha option for glows throughout settings  
- Add a sanity check for tsu all states contents  
    Fixes: #3182  
- Polish TTS feature  
    * Add a check if a voice id is valid and fallback to 0. In case the  
      orginating system had more voices than the playing system.  
    * Add a tooltip note that the voices are specific to the computer on  
      which it is running.  
    * Squelch the voice on login in the same way as sounds are squelched.  
- Bufftrigger 2: Show "and" for "buff missing" trigger  
    Since that's how it works.  
    Fixes: #3197  
- Fix Spellcache stopping to early  
    In BCC the gaps between spell ids are bigger than the 400 limit, so  
    increase the max gap to 50k, which covers the biggest gap.  
    This is a bit suboptimal, but works.  
    The cache will be rebuild automatically on a WeakAuras version bump.  
    Fixes: #3198  
- add DBM Stage trigger  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Fix Custom chat message help link in Conditions  
- Prevent swingtimer from triggering when not in attacking state, fixes #3179  
- update death wish & sweeping strike templates for bcc, fixes #3160  
- Add TTS to chat types for Actions and Conditions (#3173)  
    Co-authored-by: asakawa <johndoe@example.comjohndoe@example.com>  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Validate Companion Data before showing it to the user as a potential new install.  
- Validate Companion Data before showing it to the user as a potential update.  
    Covers a rare edge case where an update can be pending with invalid  
    data.  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update TOC for Patch 9.1.0  
- Make translations a bit easier  
    Reported on discord and somehow I did remember to change it.  
- Add new soul bind traits and new conduits  
    At least those that could be found easily in wowhead's database  
    Fixes: #3163  
- Add most new legendary effects  
- Add Shards of Domination buffs  
- Move some StopMotion texture definitions to the plugin  
    Fixes: #3152  
- Fix New from Templates adding two glows  
    Fixes: #3159  
- Update map of legendary ids and bonus ids. (#3170)  
- Update WeakAurasModelPaths from wow.tools  
- Only update ViewTexture if it changed  
    Since the updating walks up the parents, which then have to check all  
    children.  
- Be less brain dead for updating the "eye" texture in the Options  
    For reasons lost to time and likely decades, the eye textures  
    open/close/half-open texture was set in a OnUpdate handler.  
    So every frame.  
    For all auras.  
    And for groups by iterating over all children.  
    Fix this by updating them only if needed. Athough this can be optimized  
    further and made nicer, this fixes the memory usage observed in the  
    ticker already.  
    Fixes: #3161  
- add bcc encounter ids and show list in correct order  
- Character Stats: Add Run Speed  
    Fixes: #3112  
- BT2: Add Arena enemy spec support  
    Fixes: #3144  
- BCC: Remove textures that aren't shipped with BCC  
    Fixes: #3140  
- Fix Conditions options error on renaming group member  
    Introduced quite a while ago, with the options code refactoring for SL.  
    Fixes: #3146  
- Templates: Add Fel Bombardment to DH legendaries  
- Templates: Move Grip of the Everlasting to the right category  
    Fixes: #3136  
- Health trigger: Add heal absorb  
    Fixes: #3129  
- WeakAuras: Add a stage trigger for BigWigs (#3139)  
- - fixing personal resource display anchor for disabled Plater personal bar module  
- add difficulty load condition for bcc  
    fixes #3133  
- support new bcc dungeon difficulty index  
    fixes #3134  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Make Ungroup action handle nested groups  
    By moving the aura just one level  
- Prepare Drag and Drop for Nested groups  
- Remove debug output in DuplicateAura  
- Update WeakAurasModelPaths from wow.tools  
- Prepare Duplicate for nested  
- Fix deletion of nested groups  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare copy&paste for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare load handling for nested  
- Prepare SubText for nested  
- No longer need to block function that doesn't exist  
- Update WeakAurasModelPaths from wow.tools  
- privatise DisplayToString  
- Move SortDisplayButtons to private namespace (#3116)  
- swing timer: do not reset swing on SPELL\_EXTRA\_ATTACKS  
- Prepare another small part of WeakAurasOptions for nested  
- Prepare TriggerTemplates for nested  
    Also fix the bug that apply templates didn't work with a group/multi  
    selection.  
    More template fixes  
- Make Private accessible for Templates  
- Prepare TriggerOptions for nested  
- Prepare another part of ActionOptions for nested  
- Prepare GetOverlayInfo for nested  
- Prepare SortDisplayButtons for nested  
- Prepare automatic frame level setting for nested  
- Slightly Simplify ProgressTexture Options code  
- Cast Trigger: Deprecate the old Spell Name check  
    Which uses a string compare and rename the better spell id compare to  
    just "Spell".  
- Move Swing Timer remaining time check to the right place  
- Improve scam checks  
    * Add more custom codes  
    * Try to figure out more cases in which the custom code is not actually  
      used  
    * Make the code a bit less duplicated  
    Fixes: #3093  
- Fix regression on dragging auras  
    Fixes: #3104  
- Update WeakAurasModelPaths from wow.tools  
- Swing Timer trigger, fix remaining time check  
    fixes #3106  
- Update WeakAurasModelPaths from wow.tools  
- fix CorrectSpellName for linked spells on TBC  
- use weakauras fork of LibRangeCheck-2.0 for all versions  
- BCC & Classic packages fixes  
- retail pkgmeta should ignore ModelPathsBCC  
- Update WeakAurasModelPaths from wow.tools  
- fix "Talent Known" trigger for BCC  
    fixes #3098  
- update wowtools script for classic\_era and bcc  
- Dependabot: Monitor GitHub actions for updates  
- Text Region: Prepare for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare TextEditor for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- OptionsFrame: Make some preparations for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare DisplayOptions for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare tooltip for nesting  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Options: Use TraverseChildren in view test  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare InformationOptions for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Add offset to display button for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Rename everything concerning TBC Classic to BCC  
- tbc swing timer: aimed shot should reset both melee & ranged swings  
- remove debug print in DuplicateCollapseData  
- fix scrolling with Ready for Install/Update  
    AddChild should only be done on init  
    shown buttons always need to be added to frame.buttonsScroll.children  
- Cast trigger: Show a "Exact Spell match" option for the spellId check  
    Technically the spell name is now entirely redundant with the spell id  
    check, but I don't know what to do with the spell name check.  
    The options are to:  
    a) Try to modernize it by calling GetSpellInfo on the name and putting  
    it into the spell id check.  
    This does "break" importing "old" auras from a different locale.  
    In that previously you'd see the spell name of the wrong locale, whereas  
    after such a modernization the spell name would simply be gone.  
    b) Add a compability option for the spell name check.  
    Fixes: #3073  
- Fix Remaing Cast Time Check for multi auras  
    Fixes: #3078  
- Fix clones jumping around  
    I don't fully understand what the heck is going on, but this is the  
    place where the main region and clones are treated diffrently. So stop  
    doing that.  
    Fixes: #3068  
- Import tooltip: remove "Source:"  
    This make it easier to have correct position for urlEditBox for all locales  
- don't reset swing timer on Steady Shot  
- set chunk name on loadstring instead of injecting a comment  
- Support "Action Queued" for classic/tbc Templates  
    update skills Heroic Strike, Cleave, Raptor Strike and Maul  
- fix WeakAurasTemplates.toc  
- add a new section "Ready for Update"  
    change "Ready to Import" to "Ready for Import"  
    remove companion update code from WeakAurasDisplayButton  
    rename PendingImport to PendingInstall  
    refactor show/hide tooltips on button widgets  
    don't use skipWagoUpdate anymore  
- make url text of import tooltip frame selectable for copy  
- Update WeakAurasModelPaths from wow.tools  
- some spell reset both ranged & melee weapon timer  
- lock archivist version  
- Spell Cooldown: Fix fake charges for GCD tracking auras  
    A gcd shouldn't affect how many fake charges a aura has.  
    Fixes: #3052  
- fix glow anchor for aurabar  
    property name was duplicated  
- missing brackets  
- clean duplicates in FakeWeakAurasMixin.blockedFunctions  
- Allow TSU tooltips to be wrapped  
    At some point, we should a tooltip setting callback instead, though the  
    continued need for more tooltip features is strange.  
    Fixes: #3058  
- Fix TimerTick not being disabled on Collpase/Expand  
    This is probably the best way to fix this.  
    Fixes: #3050  
- Retail Templates: Add missing Unbound Chaos talent to DH Buffs  
    Fixes: #3065  
- fix MAX\_NUM\_TALENTS nil error on classic  
- fix talents on TBC  
- support change in structure of WeakAurasCompanion data  
    and add nil checks  
    fix pendingImportButton not hiding  
- GetSpellCount return correct value now  
- Update WeakAurasModelPaths from wow.tools  
- paladin update  
- update druid  
- warrior update  
- add MAX\_NUM\_TALENTS to .luacheckrc  
- priest update  
- rogue update  
- hunter update  
- warlock update  
- mage update  
- shaman template update  
- fix tbc talents  
    MAX\_NUM\_TALENTS is 20 in classic, 40 in tbc  
- split templates data  
- Fix nameAll if everything is a empty string  
    If we combine the names from several options, we generally want to  
    ignore empty names.  
    But the end result must not be nil.  
- Fix ModelPicker CancelClose  
    Not setting the model id property back to its right value  
- Prepare TexturePicker for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare ModelPicker for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare AuraBar options for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- add _HEAL\_ABSORBED CLEU suffix  
- Remove `PickupInventoryItem` from block list  
- Update AuraEnvironment.lua  
    Remove PickupContainerItem from the forbidden list  
- Add additional forbidden functions.  
- Update WeakAurasModelPaths from wow.tools  
- update classic toc to 11307  
- Update WeakAurasModelPaths from wow.tools  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Delete bug\_report.md  
- Update bug\_report.yml  
- Update bug\_report.yml  
- Update bug\_report.yml  
- fix WeakAuras.UnitChannelInfo on classic  
- Remove spaces from subsections in packager commands  
- remove TODO to see if this breaks the packager  
- comment cleanup  
- Add WeakAuras Import UI (#3031)  
    Co-authored-by: Benjamin Staneck <staneck@gmail.com>  
- Prepare MoverSizer for nested  
- Conditions: Fix Copy change to all auras error  
    If a condition is only in a subset of auras, and a property change in a  
    subset of this subset then a copy to all auras operation resulted in a  
    error.  
    Fix this by only copying the property change to all auras that already  
    have the condition  
- Conditions: Fix missign tooltip on property combobox  
- Prepare ConditionOptions for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Switch to LF instead of CRLF since WoW is cross platform  
- Add StyLua config  
    Not mandatory to use for now  
- Fix logic check and use `not IsRetail` instead of Classic/TBC  
- fix usage of LibClassicSpellActionCount-1.0 for bc  
- Add TODOs for temp bc hacks  
- fixes more wow version test  
- fix issues with WOW\_PROJECT\_BURNING\_CRUSADE\_CLASSIC not defined on classic/retail  
- fix WeakAuras.UnitCastingInfo  
- make WeakAuras.UnitChannelInfo not check WoW version on each call  
- make intendedWoWProject use a specific vallue for TBC if not loaded on TBC  
- fix classic or bc logic in a few places  
- Add most TBC 1s cast time drums to not reset swing timer (#3022)  
    * Add new TBC ranks of melee spells to Types.lua  
    * Add most types of drums to not reset swing timer  
- CI: touch up wow.tools script  
- CI: Cleanup and send tag to WowI as well  
- fix time formatting  
- steady shot doesn't reset ranged swing timer  
- fix LibRangeCheck-2.0 packaging better  
- fix LibRangeCheck-2.0 packaging  
- Use our LibRangeCheck-2.0 fork until original is updated  
- update pull\_request.yml for bc  
- update build-beta.yml  
- use .pkgmeta-bc  
- typo  
- fix wrongTargetMessage logic  
- more neutral message  
- fix wrongTargetMessage for tbc  
- Add WOW\_PROJECT\_BURNING\_CRUSADE\_CLASSIC to .luacheckrc  
- Update IsFlavor() functions for new BC build changes  
- Update version check for latest BC build  
- fix CorrectSpellName for tbc  
- combat log events return correct spellid now  
- CI: Publish BC to CurseForge as well  
- TBC/Classic bomb and grenade additions (#3008)  
    Add all bomb and grenade types to not reset swing timer  
- reset swing timer on shoots & don't reset on dense dynamite  
- Swing timer fixes  
    Enable ranged swing timer for TBC. Add new TBC spell ranks and Steady Shot for swing timer resets. Add warrior/rogue ranged shots to reset melee swing timer.  
- CI: only skip packager zip creation when not on a tag  
- CI: zip packager zip creation and use the action for it  
- CI: Upload the zip directly  
- UnitCastingInfo & UnitChannelInfo doesn't return "notInterruptible"  
- more trigger fixes  
- Disable triggers made for retail  
- fix load conditions  
- fix models  
- no vehicle on tbc  
- set Types.lua for BC  
- fix combat log trigger  
- fix scanForLoadsImpl  
- use tbc wowhead link  
- Enable PLAYER\_FOCUS\_CHANGED logic in BC  
- Change Prototypes check to not isRetail  
- Convert all `not classic` checks to `is retail` checks  
- fix some lua errors  
- Add hack for WOW\_PROJECT\_ID being the same as Classic part 2  
- Fix packager logic for Classic libs part 2  
- Fix packager logic for Classic libs  
- Add hack for WOW\_PROJECT\_ID being the same as Classic  
- Load Classic specific libs from the TOC instead of the XML so the packager can handle the BC check  
- Use normal .pkgmeta for BC  
- WOW\_PROJECT\_ID is "2" for BC  
- Fix typo  
- Fix packager logic  
- Add vscode folder to gitignore  
- Fix typo in PR CI  
- Add WOW\_PROJECT\_BC to .luacheckrc  
- Use the beta build CI for BC for now  
- Initial support for BC  
- Prepare CommonOptions for Nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Replace ApplyToDataOrChildData with Traverse  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Icon Options + Icon Picker: Prepare for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Make ClearAndUpdateOptions work for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Prepare AuthorOptions for nested  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Add function that iterate over all childrens recursively  
    Co-authored-by: InfusOnWoW <infus@squorn.de>  
- Fix UnitIsVisible check on raid roster changes  
    Reported on Discord by Translit. He tested the change and confirmed it  
    working.  
    No Ticket though.  
- Classic: Add Other to the potential raid roles  
    Which is anyone that is neither maintank nor mainassist  
    Fixes: #3006  
- Fix scamCheck to ignore empty custom functions  
    Fixes: #3007  
- Fix WeakAuras.prettyPrint to print more than one argument  
- Weapon Enchant trigger: update on PLAYER\_EQUIPMENT\_CHANGED for classic/tbc  
- Keep the old issue template around until we are accepted into the new issue system test  
- try the new GitHub issue template  
- Add border shapes (#3012)  
    Co-authored-by: asakawa <johndoe@example.comjohndoe@example.com>  
- Update WeakAurasModelPaths from wow.tools  
- Switch to the packager's new multi toc feature  
- Don't reset Search filter for most aura changes  
    Fixes: #2996  
- Distinguish between Rated and Unrated PVP in Instance Size Type  
    Fixes: #2978  
- Update GCD if the duration changes  
    Might or might be the problem behind the linked issue. It's hard to tell  
    from the rather bad bug report.  
    Fixes: #2984  
- BT2: Show spell name to exact spell id field  
    Fixes: #2981  
- Update WeakAurasModelPaths from wow.tools  
- ensure a few "percentX" property doesn't return a boolean  
    fix type error when they are use in conditions  
- fix potential nil error in dbm & bw triggers  
    fixes #2982  
- Publish Classic to Wago Addons as well  
- Publish Retail to Wago Addons as well  
- Fix aura\_env being unavailable in some condition checks  
    Fixes: #2949  
- Fix Legendary ID mapping  
    Apparently Blizzard changed the bonus id of 3 legendaries  
    Fixes: #2973  
- fix nameFunc for "Cooldown Ready (Equipment Slot)" trigger  
    fixes #2976  
- set tocversion as an internal field for import diff  
- add DBT (DBM options) to .luacheckrc  
- DBM bars options table was moved  
- handle BigWigs\_PauseBar and BigWigs\_ResumeBar events  
- handle DBM\_TimerPause & DBM\_TimerResume callbacks  
    fixes #2951  
- add state.paused support for timed progress auras  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Update WeakAurasModelPaths from wow.tools  
- Fix WeakAuras.Pause to not simply collapse auras  
    But instead go via the states route, so that the states and regions are  
    in agreement.  
    Fixes: #2966  
- Update TOC for Patch 9.0.5  
- Fix creating Model Aura from Template for a Ability  
    We do have a list of templates that apply per template category, that is  
    e.g. "Show on Cooldown" or "Show Cooldown and Buff". These templates use  
    conditions and thus can't be used with all region types. They are thus  
    filtered.  
    For model auras we ended up without any template, leading to a error.  
    Fix that by including a fallback template that doesn't use conditions,  
    and use these if no other templates work.  
    Fixes the last issue mentioned in:  
    Fixes: #2956  
- Fix issue with infinite auras and multi tragging  
    Since their expirationTime is 0, we immediately removed them.  
    Fixes: #2961  
- fix combat log trigger's icon for classic  
- Fix Modernize for time format with non-dynamic decimal precision  
    Old behavior with _time\_dynamic = false was to show selected precision  
    for all values below 60. To maintain that, set _time\_dynamic\_threshold  
    to 60 instead of 0 which disables decimals altogether.  
    For time formats without decimals, _time\_precision = 0 is no longer a  
    valid precision value, but _time\_dynamic\_threshold = 0 achieves the same  
    result.  
- Fix new Auras with BuffTrigger2 trigger  
    If matchesShowOn is not set, that is showOnActive  
    Partially fixes: #2956  
- Trigger Templates Classic: Fix two errors in last round  
    Partially fixes: #2656  
- Don't clear region.states/region.state to early  
    Fixes: #2954  
- Text: Slightly simplify code  
- Fix ContainsPlaceHolder considering \n a placeholder  
    Actually,  
    Fixes: #2946  
- Fix Texts not being displayed  
- Fix Modernize to not modify data while iterating over it  
    Fixes: #2952  
- Fix nil errors in dynamic conditions  
    The first issue, was that for unit triggers we automatically create  
    the state, which could result in a state that isn't shown and is  
    otherwise empty being left in activeStates.  
    Also fix one missing Start/Stop Profile and a missing environment  
    activation.  
    And if the region is hiding, don't check the recheck time  
    Fixes: #2939  
- Make BuffTrigger 2 hide the per match checks if not applicable  
    That is if a trigger is set in this mode:  
    showOn: Always  
    showClones: false  
    Previously options for e.g. a remaining time, a stacks check and similar  
    would be shown.  
    They worked in a somewhat suprising way, since always gurantees that if  
    no state matches a empty state is shown.  
    It's probably better to not enable these options at all.  
- Weapon Enchant: Hide remaining time/stacks option if they don't work  
    Fixes: #2845  
- Don't pretend texts with \n contain placeholders  
    Instead use the static text path for these, which also hides the option  
    display. That means the static text code paths need to replace \n  
    though.  
    Fixes: #2946  
- Fix small issue in Conditions custom error description  
- Remove region.justCreated which is unused  
- Fix some errors in Templates on Classic  
    Fixes: #2750  
- Make Time Formats more flexible  
    By making the dynamic threshold configurable.  
    And by using Blizzard's time formatting functions, as proposed by  
    Elvador in #2173. This patch offers basically the same functionality,  
    though quite differently presented to the user.  
    There's now a top-level option to choose between:  
    * Built-in:            63:42   3:07    10    2.4  
    * Old Blizzard         2h      3m 7s   10s   2.4  
    * Modern Blizzard      1h 3m   3m 7s   10s   2.4  
    All formats support (and default to) increased precision below a  
    threshold. The default threshold remains at 3s.  
    The threshold setting is also the off-switch for the additional  
    precision. Setting it to 0, disables that behaviour. This isn't the most  
    obvious user interface, but creating a special control for it is too  
    much work and a additional checkbox destroys the layout.  
    Fixes: #2707  
- Fix target type check to compare against a string  
- Icon/AuraBar: Make thumbnail icon resilent against certain data  
    Namely a unknown spell with a empty string as a fallback icon.  
    In that case the empty string was used instead of the question mark  
    icon.  
    Fixes: #2932  
- Fixup misleading text  
    Mentioned by Nightwarden on discord  
- Fix remaining time check event to extra clones for nameplate trigger  
    By making the CAST\_REMAINING internal event a per unit event.  
    This is a limitation of the internal event system that doesn't work that  
    well with unit triggers.  
    This is soemthing that needs some thought and eventual clean up.  
    Fixes: #2921  
- Fix Crit Chance in Character Stats trigger  
    Now uses the same method as PaperDollFrame.lua  
    Fixes: #2925  
- Improve Talent Load Option  
    In "Advanced" mode you can now choose between:  
    * Talent Selected  
    * Talent Known  
    * Talent NOT Selected  
    * Talent Not Known  
    Fixes: #2780  
- Improve Talent trigger  
    By allowing to distinguish between Known and Selected talents  
- Add a "Alive" load option  
    Fixes: #2901  
- Add 'Mine' affilation to combat log flag prototype (#2923)  
    Also use UnitFlag affiliation constants instead of magic numbers  
    Fixes: #2920  
- Update WeakAurasModelPaths from wow.tools  
- delete update-modelpaths branch after closing PR  
- Fix the merged zone id load option  
    Nightwarden pointed out that there are duplicated is, and thus the  
    merging was actual a mistake.  
    Recover from that mistake by adopting a convention that group zone ids  
    must be prefixed with 'g'. Obviously that is a bit strange, translates  
    badly, and is a entirely new concept that we don't use anywhere else.  
    But, it keeps the train moving forward...  
- Improve layout around Item Load Option  
- Fix number load options with strings  
    Fixes: #2911  
- fix CancelClose  
- add rotation slider and mouse interaction for preview  
- add a searchbox to model picker  
- Update WeakAurasModelPaths from wow.tools  
- WeakAurasModelPaths update script from wow.tools  
- Add Duplicate conditions feature  
    Fixes: #2904  
- Merge zone id and zone group id load options  
    As Causese points out some dungeons don't have a group zone id, so  
    loading a aura for some subset of dungeons is impossible.  
    Merging them and matching against both the zone id and zone group id  
    works because the ids are in the same domain.  
    Fixes; #2770  
- Fix typo in Stop Motion description  
- Workaround UnitStagger returning nil  
    Fixes: #2902  
- Slight improvement in readable trigger function  
- Change trigger ui categorization  
    Instead of the rather unimportant Status/Event categories, distribute  
    generic triggers into a few categories:  
    * Spell  
    * Item  
    * Player/Unit  
    * Combat Log  
    * Other Events  
    * Other Addons  
    There are a few triggers where the category is a bit debatable, e.g.  
    where does Totem, Weapon Enchant and Swing Timer best fit.  
    The Player/Unit category can't be easily split into a Player and Unit  
    categories, because e.g. the Health trigger would then fit into both.  
    Since Event triggers are usually less powerful/useful then status  
    triggers, these triggers have a "Event" suffix in the Spell/Item  
    category.  
    Also while working on the triggers, remove some left-over code for  
    custom untriggers.  
    Fixes: #2820  
- Fix matching of strings which include --  
    Just using %q is not enough, as a -- even in a string might be  
    interpreted as a comment and thus lead to problems.  
    Fixes: #2891  
- docs: fix broken links to extensions  
- Cast trigger: add latency overlay (#2900)  
- master -> main  
- Create CODE\_OF\_CONDUCT.md  
- Fix oversight in 7a3d5c762 breaking remaining time check for  
    Clones with Combine per Unit.  
    That change was incomplete and thus nextCheck was always nil.  
    Fixes: #2883  
- Clamp tooltips to the screen  
    Apparently anchoring a frame to a restricted frames automatically sets  
    the clamp to screen property to false. Which is highly visible for  
    tooltips.  
    Fixes: #2846  
- fix regression in TestForLongString  
- Fix deleting triggers if multiple auras are selected  
    Broke with the introduction of the Confirm Delete trigger.  
    Fixes: #2866  
- Fix TestForLongString to properly escape texts  
    Using the pattern as a key was not a smart idea, but changing all  
    existing places where that key could be used would take quite a bit of  
    effort. So simply fix up the pattern in the TestForLongString function.  
    Fixes: #2865  
- Set default colour for Textures to full alpha  
- Use manual naming for instance types  
    And add a debug output if unknown instance types are found, so that we  
    hopefully do a better job of maintaining the list.  
- Prevent error for untimed crowd control  
    The player is crowd controlled while using certain portals, e.g. the  
    portals in Oribos between the upper and lower floor  
    Fixes: #2862  
- Add a raw instance type load/trigger option  
    This has a few pros:  
    * Automatically updates itself whenever Blizzard adds a new type of  
    content.  
    * Adds a Torgast load option  
    * Would have been potentially useful in the past for e.g. Warfronts or  
    Visions or Islands.  
    And a few cons:  
    * There are quite a bunch of legacy types in there, which are probably  
    no longer used and thus the list is long and ugly.  
    * The names are far from self-explanatory.  
    I added a magic system to disambiguate names, but we might need to  
    tweak this regularly or even overwrite what the api returns and I don't  
    even know where some of the ids are used.  
    Nevertheless this is probably useful enough.  
    Fixes: #2858  
- dummy commit to update enMx translation from curseforge  
- Fix various small issues in multi selection with format options  
    * Ensure that the header/end header are in the correct place  
    * Fix texts not properly adding options if the group is selected  
    Fixes: #2827  
- Fix off by one error in title  
    Probably causes by rivers changes to the trigger structure.  
    Fixes: #2856  
- Fix Bonus Id trigger Item Slot option with multiple items.  
    When multiple items with the same Bonus ID exist, the check was short  
    circuiting, resulting in not correctly checking that slot in some  
    scenarios. Now we only check that slot.  
- Fix Bonus Id trigger in Classic.  
- Expand [status - crowd controlled] trigger (#2773)  
    * Expand [status - crowd controlled]  to allow selecting specific control types  
- Bonus Id Trigger fixes and inverse option. (#2836)  
    * Fix default icon for Bonus Id trigger  
    * Properly fix nil itemBonusId error also fixing default aura behavior  
    * Add Inverse toggle to Bonus Id trigger.  
- Add filters and UnitAura options to TSU tooltips.  
    Allows TSU tooltips to optionally use filters via `unitBuffFilter` and  
    `unitDebuffFilter` state variables.  
    Adds an additional tooltip option for UnitAura with the same Index and  
    Filter options via `unitAuraIndex` and `unitAuraFilter` state variables.  
- Add additional forbidden tables.  
- remove "emphasize" option from "BigWigs Timer" trigger  
    https://github.com/BigWigsMods/BigWigs/commit/75c0c592a8d514cfcbd70489e63b9c00acb79aea replaced Emphasize by a Countdown option  
    BW authors added compatibility code but suggest us to remove the feature  
- Don't respond to dR if we haven't linked that aura in chat  
- Add talent table to data stub.  
    With the removal of old modernization data, the old format of talent  
    load data was throwing errors when imported.  
- Limit Group scaling to x10  
    Fixes: #2809  
- Move Subregion Validate to after Modernize  
    As modernize might actually create the sub regions if the auras are so  
    old that they are still using the old methods  
    Fixes: #2814  
- Fix first glow using the wrong size  
    Fixes: #2818  
- Conditions: If given strangely missing data, adjust the data  
    Fixes: #2808  
- Fix warning message on using blocked global functions/tables  
    Fixes: #2789  
- Actions: Loop Sound, make the upper limit a soft max  
    So that users can use any number they want for the loop time.  
    Fixes: #2795  
- Make aura\_env available in custom checks  
    Fixes: #2804  
- Only call SetBakdrop if we have a edge file  
    This can happen if the configured edge file is no longer registered  
    with SharedMedia  
    Fixes: #2809  
- sanity check modernize for data.subRegions (#2807)  
    fixes #2806  
- Nil-check Bonus Id trigger (#2799)  
- Update TOC for Classic Naxx Patch  
- add tab space setting (#2786)  
- Improve Bonus Id trigger. (#2781)  
    * Adds state variables and conditions for bonus id, item id, item name,  
    icon, and item slot.  
    * Adds toggle to use Legendary icon instead of item icon. Fallbacks to  
    item icon.  
    * Adds option to check for bonus id on specific slot.  
    * Moves Legendaries.lua from WeakAurasOptions to WeakAuras.  
- Make GCD trigger work on load  
    Fixes: #2785  
- Fix Spell Known not updating while Options are open  
    Fixes: #2778  
- Tmeplates: Fix talent load for Elemental Blast  
    It's the 3rd talent for enhance, but the 6th for elemental.  
    Fixes: #2768  
- Fix dynamic groups showing without visible children on login  
    Fixes: #2763  
- Fix mass delete and a few unbalanced suspend/resume  
    Fixes: #2746  
- Fix a few Classic issues  
    * Remove PvP Talent trigger  
    * Remove model templates that don't exist on classic  
    * Goblins weren't playable in Classic  
    See: #2750  
- Fix Talent/Spec trigger  
    The late addition of the "required" flag broke it. The way multiselect  
    and required interacts is suboptiomal, and something that needs to be  
    cleaned up eventually.  
    Fixes: #2751  
- Fix BarModels showing after port  
    Fixes: #2748  
- sync classic pkgmeta with main  
- Remove debug code  
- Models: Use more force in PreShowModels  
    If we already have a moedl, configure it with the right settings in  
    PreSHowModels  
    Fixes: #2722  
- Add a Class/Spec trigger  
    Fixes: #2170  
- Duplicate Aura: Optimize this for big dynamic groups  
    Prevent the script from running into a time out.  
    Though it's still not a cheap operation.  
    Fixes: #2731  
- Tweak Off-Screen Arrow  
    * Make it point to the actual center of the aura we are complaining  
    about  
    * Only show the aura if less than 30px are visible.  
    Fixes: #2732  
- Options Thumbnails: Use fallback icon if set  
    Fixes: #2734  
- Templates: Add Rupture Debuff to Sub Debuffs  
    Fixes: #2738  
- Format Options: Keep the expand/collapse state separate  
    Fixes: #2739  
- Information: Fix nil error with multi-selection  
    Fixes: #2740  
- Adding support for Plater personal resource bar anchoring (#2614)  
- Templates: Move Resources to proper section  
- BuffTrigger 2: Fix missing auras  
    Fixes: #2728  
- Icon/Aurabar: Fix modifyThumbnail icons  
    Fixes: #2721  
- Make property's names a bit consistent  
- Allow abbreviate cutting longer texts  
    Fixes: #2715  
- Templates: Add SL systems  
    * Covenant class ability  
    * Covenant signature ability  
    * Soul Binds  
    * Conduits  
    * Legendaries  
- TriggerTemplatesData: Add missing space  
- BT2: Add is boss debuff and cast by player character  
    Somewhat useful, as these are also used by the default unit frames.  
    Fixes: #2704  
- Add UnitAffectingCombat to Unit Characteristics trigger  
    Fixes: #2709  
- Fix Custom Variables validator breaking if a real error occurs  
    Fixes: #2708  
- Fix Editor for Custom Anchor on Group tab  
    Fixes: #2706  
- Add "Tooltip on Mouseover" support to Text  
- Update TOC for Patch 9.0.2  
- fix error when mouseovering Bonus ID load option on classic  
- Restore a 1px offset to Groups  
    But make it a compability option, enabled for existing groups. Disabled  
    for new auras.  
    Fixes: #2696  
- Fix text editor for trigger page from a multi-selection  
    Fixes: #2699  
- Add Spiritwalker's Grace to Elemental Templates  
- Fix typo in message  
- Fix default animation functions formatting  
    Remove whitespace at the start of the line and also indent by 4 spaces,  
    since that's what use for indentating custom code.  
    Fixes: #2698  
- Fix MoverSizer lua errors if the mover has no position  
    Fixes: #2685  
- Don't hide the Options window on import  
    Fixes: #2689  
- Fix Custom Variables Validation to ignore additionalProgress  
    Because that's a special value.  
    Fixes: #2690  
- Introduce "elapsedTime" as a conditionType  
    And modify a few triggers to make use of it:  
    * The buff trigger provides:  
      * apply time  
      * apply/refresh time  
      * stack gain time  
      * stack lost time  
    * Cooldown Progress (Spell) + Action Usable  
      * ready time  
      * charge gain time  
      * charge lost time  
    This feature will shine once animations are controllable via  
    conditions, as that should make it possible to show a animation for a  
    few seconds on any of those events.  
    This also works for firing actions, e.g. playing a sound, though it's  
    a bit akward. Though that's nothing new for actions in conditions, and  
    does mirror how remaining time checks work.  
    Also missing is any way to show a text for the time since the event.  
    Fixes: #1357  
    Fixes: #1447  
- Fix TexturePicker drop down  
    Reported on discord  
- Options: Show a arrow pointing to offscreen auras  
    The arrow only shows up if selecting a aura that is offscreen.  
    Fixes: #2218  
- BT2 Multi: Guard against a empty string for count check  
    Fixes: #2678  
- Fix anchoring of MoverSizer to Groups  
    Groups are special in that the main region is only a 2x2 squared frame,  
    thus we need to calculate the actual size and then attach the mover  
    sizer correctly.  
    Fixes: #2672  
- Add missing conversion code for IconSource  
    Fixes: #2673  
- Fix Importing from chat if Options were never opened  
    Fixes: #2675  
- Tweak Custom Variables validation  
    A empty string is not a error.  
- Add missing file  
- Add a Lock Positions button in the toolbar  
    Fixes: #2395  
- Improve Item Bonus Id checks  
    * Allow multiple comma separated entries  
    * Add a NOT load option.  
    The latter is rather niche, but at this point we might as well add it  
    and figure out how to improve the load page.  
    Fixes: #2665  
- Fix BarModels breaking if hidden at 0 width  
    Since if we hide the whole frame we won't get any SizeChanged callbacks  
- In the Item Bonus ID actually list legendaries for the current spec  
    Instead of always the first spec.  
    Fixes: #2667  
- Add a "None" choice to Covenants  
    Fixes: #2664  
- Validate Custom Variables  
    Fixes: #2656  
- Simplify AddCodeOption api  
    Pass some of the optional arguments in a options table  
- Don't send overlay glow event if weakauras is paused  
    Fixes: #2662  
- Fix Group's selfPoint  
    Fixes: #2658  
- Use the right states for dynamic conditions  
    In some cases we need to create fallback states. Fix Dynamic Conditions  
    to correctly use these states  
- Use browse icon in more places  
    That is to open the icon picker, texture picker or model picker  
- Allow selectiong Icon Source/Icon via Conditions  
    * Move Tooltip on Mouseover to Extra Options  
- Fix adding new aura without a time condition not unscheduling old check  
    If a aura that has a timed condition recheck, e.g. by having a random  
    remaining time check, and that condition is removed. Then the add  
    process needs to cancel all existing timers.  
    Reported on Discord.  
- Fix removing a condition check not calling modify  
    Fixes: #2603  
- Fix wrong argument in call to ClearAndUpdateOptions in AuraBar.lua  
- Don't error on trying to import a update  
    * That the Companion matched  
    * But the "groupyness" of the aura doesn't match  
    The Companion should not actually offer this as a update, there's a  
    ticket for that. But at least this prevents the error.  
    Fixes: #2637  
- Fix models not showing up in some cases  
    Fixes: #2653  
- Resize the WeakAuras window if it's bigger than the screen  
    Fixes: #2644  
- Make WA\_Utf8Sub resilent against trying to format numbers  
    Fixes: #2647  
- Fix errors in opening TextEditor for Custom Checks  
    Fixes: #2642  
- Fix importing icon auras before the Options were opened  
    The Icon's modifyThumbnail function wants to use OptionsPrivate.Private,  
    but that is only set if the options were opened.  
    So move GetNameAndIcon to WeakAuras for now.  
    Fixes: #2645  
- Add the Error Frame as a destination for messages  
    Fixes: #2639  
- Templates: Fix Slice and Dice  
    Fixes: #2640  
- Fix parent for custom anchoring  
    If a aura has a custom "Select Frame" anchoring, but the "Set Parent to  
    Anchor" options is not enabled, the parent should be set to the group.  
    Fixes: #2638  
- Update README.md  
- Formatting and cleanup  
- Change Discord server link  
- Classic: add support for MAINTANK and MAINASSIST filter (#2636)  
    Fixes: #2635  
- Create less PlayerModels  
    By only creating them if both the parent and the sub region are visible.  
    Fixes: #2543  
- Fix ModelPicker for BarModels and multi selection  
    Fixes: #2524  
- Fix TexturePicker for Ticks + multi select  
    Fixes: #2572  
- Conditions: Fix recheck time scheduling with Else if  
    Fixes: #2624  
- Don't try to load covenant stuff on classic  
- Add new feature indicator to item type equipped load condition  
- Add new feature indicator for charged combo points  
- Add new feature indicator to covenant load option  
- Add Covenant Load Option (#2615)  
    Co-authored-by: Infus <infus@squorn.de>  
- remove debug print  
- Fixes remaining time check for Weapon Enchant trigger  
    Fixes: #2618  
- Remove the capping of alpha while Options are open  
    After tinkering with it for a bit, it turns out that implemeting it  
    properly is to hard for such a minor feature.  
    If it is a feature at all, I have seen quite a bit of people that were  
    confussed by it.  
    Fixes: #2595  
- Cooldown Progress: Rename Stacks to Charges  
    As mentioned on: #2605  
- set default animation to "loop" instead of "progress  
- parse StopMotion texture settings from filename  
    implement #2356  
    format of filename has to be "name.x[1-9]+y[1-9]+f[1-9]+.(tga|blp)"  
    where x is number of rows, y number of columns, and f number of frames  
- Fix leaked global in Character Stats trigger  
- add spell activation overlays added with wow 8.1.5  
- fix nil error when using "Class Colors" addon  
    CUSTOM\_CLASS\_COLORS table does not have the method WrapTextInColorCode  
- Weapon Enchant trigger: Default to Question Mark icon  
    Fixes: #2604  
- Fix conditions listing too many variables  
    Fixes: #2605  
- Fix error in Spell Known trigger  
    The IsSpellKnown function doesn't like a 0 spell id  
    Fixes: #2601  
- Add One handed Axes to weapon types  
    And rewmove Glaives for Classic  
    Fixes: #2606  
- Fix bar model's alpha bein overwritten by PreShowModel  
    Fixes: #2600  
- Fix Spell Activation Overlay trigger  
    To have a exact spell id option, but by default match on any spell with  
    the same name.  
    Since this is more of a bug fix than a new feature, don't convert  
    existing auras to exact spell id, even though they currently behave in  
    that way.  
    Fixes: #2597  
- Rename a few anchor options  
    For a Progress Bar, "Bar" is unfortunately ambigious, because it's  
    unclear whether the icon is included or not.  
    Rename it to "Full Bar" or "Background" depending on what is meant.  
    Background is not a good name though, since it will lead to users  
    wondering whether a text anchored to the background is behind the  
    foreground.  
    Fixes: #2594  
- Bufftrigger 2: Fix total stack count  
    Fixes: #2591  
- Update bug\_report.md  
- better fix for omnicc error  
- Revert back to upstream LibSpellRange  
- Fix texture picker for ticks  
    But only in single selection.  
    Fixes: #2584  
- Fix error with old versions of OmniCC  
- Temp switch LibSpellRange to Infus fork  
- Hack barmodels with the same PreShowModels hack that Models have  
    As always models are absolutely mysterious. In this bug report a icon  
    has both a barmodel and a glow applied to it. If both are visible, on  
    reload the model won't show up. If the border is not visible then it  
    does. No idea how the glow affects the model.  
    The existing hack for models when applied to barmodels fixes the issue.  
    So apply it and say goodbye to any hope that barmodels could live with  
    less hacks.  
    Fixes: #2519  
- Fix missing localization  
- Add a hard limit to the position offsets  
    Apparently the game engine reacts very poorly to auras that are at  
    unreasonable positions. E.g. a texture with a position at -609054,  
    dropped my frame rate to 3 fps from 60.  
    Fixes: #2577  
- Dynamic Group: Correctly set data.selfPoint on changing to grid  
    Not just on changing the grid type.  
- Fix texture chooser for StopMotion textures  
    Fixes: #2576  
- Fix Tick color being not adjustable if set via a condition too  
    Fixes: #2563  
- Add a IsAuraActive(id) function  
    Because plenty of people want to write code that checks if other auras  
    are active.  
- Fix instance size/type trigger with multi selection  
    Fixes: #2571  
- Delete the aura before changing the uid  
    So that delete uses the right uid  
    Fixes: #2570  
- Fix DK Rune trigger  
    Show was meant to be a required setting if a specific rune is  
    selected.  
    Fixes: #2522  
- Fix HideCooldownText with OmniCC  
    By using the actual setter.  
    Fixes: #2523  
- Fix encounter id fetching code to not enable the Powers tab  
    Fixes: #2552  
- Fix dragging and multi selection misbehaving  
    Fixes: #2503  
- Add Shields to Item Type trigger  
    Shields aren't weapons, so only using weapon types didn't work.  
    Fixes: #2553  
- CI: Add luacheck annotations  
- Fix ticks not updating properly on size changes.  
- Fix regression in Weapon Enchant trigger for %s  
    Use correct name for stacks  
    Fixes: #2529  
- Fix timed conditions not firing for clones  
    Fixes: #2541  
- Fix typo in bug report text  
- Update "Found a Bug?" URL to include the issue template  
- Fix Weapon Enchant trigger  
    Fixes: #2533  
- Fix texture atlases on progress textures  
    Fixes: #2528  
- Update README.md  
- StopMotion: Move texture meta data to WeakAuras for now  
    That information needs to be available before teh WeakAurasStopMotion  
    addon loads, so it needs to be in WeakAuras for now.  
    I'll implement a better solution later.  
- Add support for "Charged Combo Points". As used by Kyrian Rogues  
    Hopefully this will become baseline post SL.  
- ConditionOptions: Fix nil error on using Name/Realm option  
- Add a "Bonus Id" trigger/load option  
    This is pratically only useful for legendaries, but those play a  
    significant role in Shadowlands  
- Add a Item Type load and trigger option  
    In Shadowlands some abilities are only usable with a certain item type  
    equipped, so create some simple means to check for that.  
    This also allows checking for a equipped fishing pole!  
- Conditions: Fix renaming auras  
    By moving some structures away from using ids to using uids.  
- Fix template icons vanishing sometimes  
- Fix Spell Cost overlay for Cast Trigger  
    Fixes: #2510  
- Update Actions  
- Fix Modernize for group\_role  
- Fix BarModels sometimes being incorrectly clipped  
- Refactor Delete/Rename code in Options  
    The Options have to do a bit more cleanup on renaming/delete. This  
    changes how this cleanup code is run.  
    The WeakAuras.Rename/Delete code now calls a callback to which the  
    options responds by doing its own cleanup.  
    This has two benefits:  
    a) This moves us closer to a world where individual systems can be  
    loosely coupled via a few callbacks, similarly to what I did for the  
    AuraWarnings system, which has a small interface of just two methods.  
    b) This moves us a tiny bit closer to Undo/Redo  
- Make Group Role a multi-selection  
    Similar to classes  
    Fixes: #2501  
- Fix small issue with multi-selection  
- Bufftrigger 2: Remove confussing text  
    Fixes: #2502  
- Add a dummy loaded table to WeakAuras  
    So that a certain aura doesn't throw a error.  
- Make Display/Trigger options pages a bit faster  
    This makes them around 2.5 times faster.  
    By introducing a small cache, that caches the sameness state of all  
    settings.  
    In the long term the trigger and display pages should be rewritten to  
    work similar to the custom options or conditions pages.  
- Options: Pause and Resume dynamic groups in more places  
- Fix Animations division by 0  
    Fixes: #2494  
- PvP Talent trigger: Fix error  
- Fix conditions not showing comboboxes for some conditionsFix conditions  
    not showing comboboxes for some conditions  
- Weapon Enchant trigger: Fix error on using a remaining time check  
- Templates: Races  
- Templates: Remove Gladiator's Medallion  
- Templates: DK  
- Templates: DH  
- Templates: Druid  
- Templates: Monk  
- Templates: Warlock  
- Templates: Mage  
- Templates: Shaman  
- Templates: Priest Update  
- Templates: Update Rogue  
- Add Hunter Templates  
- Add Paladin templates  
- Templates: Warrior  
- Templates: Make the sections a bit more visible  
- Templates: Remove items section  
    We never really maintained them and pratically no one ever asked for  
    missing items...  
- Character Stats also have to recheck on UNIT\_AURA events  
- Fix typo  
- Cast trigger condition typo  
- prevent potential nil error in ParseNameCheck  
- Swing Timer: add remaining time option fixes #2505  
- adjust nameSource when (re)moving children around  
    fixes #2473  
- Make GetData accessible again  
    There's little point in hiding it now, since we can't hide  
    WeakAurasSaved for shadowlands either.  
- Add a helper function IsAuraLoaded  
    Because a popular aura wants to check whether a aura is loaded or not.  
    Allow that for now, though this is likely going away next expansion  
- Fix Omnicc overwriting our draw edge configuration  
    Fixes: #2423  
- Show errors for OPTIONS event for newly created auras  
    Introduce a "Compability Settings" concept, which are basically flags  
    that turn on a certan legacy behaviour. In this case a flag for ignoring  
    errors in handling the OPTIONS event  
    For existing auras, that flag is active.  
    It can be toggled on the Information tab.  
    Fixes: #1482  
- Progress Bars: Default to no icon  
    I think this is the better default  
- Tweak trigger/conditions page by defaulting to collapsed if necessary  
    That with more than 1 trigger or 2 conditions, collapse them all.  
    Currently distinguishing the triggers while collapsed is impossible,  
    that is something to fix soon.  
    Also fix a few bugs around moving triggers/conditions around to keep the  
    collapsed state.  
    And move the Add trigger button to the bottom to mirror how the page  
    works for sub elements and conditions  
    Fixes: #2479  
    Fixes: #2399  
- Fix "Add to New Group" showing a error  
    Because the internal version is not set. I have no idea why the code  
    path for these is so distinct from the normal new aura code path, that's  
    something to clean up "later".  
- Fix UnitExists check for Immereus  
    Which according to Causese should also fix the same check for  
    Shriekwing.  
    On Immersus in the submerged phase:  
    * UnitExists("boss1") returns false  
    * UnitGUID("boss1") returns a guid  
    So we now check both.  
    Fixes: #2482  
- Fix Tips being shown on close/open with e.g. texteditor visible  
    Fixes: #2488  
- Fix FrameTick regression  
    Introduced in e010e9d8dbbd5 by forgetting to change the one  
    WeakAuras.FrameTick to FrameTick that matters.  
    Fixes: #2483  
- Adjust text of every frame update to include (High CPU usage)  
    A small hint to not use it.  
- Fix Borders not being duplicatable  
    Fixes: #2489  
- Make SetRegion public again  
    A very popular, but very bad aura hooks it.  
    So postpone it, because the aura is popular enough  
    that we'll probably get bombarded with requests.  
    The proper way to handle that is probably a deprecation warning with a  
    eventual removal in the next expansion.  
- Fix Alternate Power trigger  
    Fixes: #2484  
- Fix New Aura using old data  
    Mixin is not recursive so, it only works if the Mixins are just one  
    level deep.  
    Fixes: #2478  
- Update TENCH trigger for Shadowlands  
    Fixing a few minor problems  
    Fixes: #2456  
- Actions: Spelling  
- clean up actions  
- Remove dead code and simplify Resume  
- Models are available on classic now too.  
- Move UpdateFakeStatesFor to Private  
- Remove unused SetDynamicIconCache/GetDynamicIconCache  
- Move WeakAuras.frameLevels to Private  
- Move GetFrameLevel to local  
- Move SetFrameLevel to local  
- Move FixGroupChildrenOrderForGroup into Private  
- Remove unused WeakAuras.GetSpellTooltipText  
- Move UpdateMouseoverTooltip into local  
- Move CanShowStackInfo into legacy BuffTrigger  
    It's only used there, so it can be removed together with the Bufftrigger  
    code  
- Move CanShowNameInfo to legacy BuffTrigger  
    It's only used there and can be deleted with the legacy code  
- Move WeakAuras.CreateFallbackState into local  
- Move WeakAuras.GetTriggerSystem to local  
- move WeakAuras.dyngroup\_unitframe\_monitor to Private  
- Move EnsureClone to local  
- Move SetRegion to Private  
- Move LastUpgrade to local  
- Move RepairDatabase to local  
- Move UnloadAll into local  
- Move WeakAuras.FinishLoadUnload into Private  
- Move WeakAuras.(Un)LoadDisplays into Private  
- Move LoadEncounterInitScripts into Private  
- Move WeakAuras.CreateEncounterTable into local  
- Move WeakAuras.DestroyEncounterTable into local  
- Move WeakAuras.StoreBossGUIDs to local  
- Move ScanAll to local  
- move ValidateUiqueDataIds to private  
- Move SyncParentChildRelationships into Private  
- Move WeakAuras.UpdateCurrentInstanceType into Private  
- Move RegisterForLoadEvents to Private  
- Move CheckForPreviousEncounter to local  
- Move CreatePvPTalentCache into local  
- Move WeakAuras.CreateTalentCache to local  
- Move ConstructFunction into local  
- Move NeedToRepairDatabase to Private  
- Move IsDefinedByAddon to Private  
- Move ResolveCollisions to Private  
- Move Login to Private  
- Move WeakAuras.OpenArchive to Private  
- Move WeakAuras.addons to Private  
- Move WeakAuras.collisions to Private  
- Move ApplyToDataOrChildData to Private  
- Move LoginMessage to Private  
- Move spec\_types to Private  
- Move usage of transmitCache, which is never written  
- Move DataToString into Private  
- Move WeakAuras.MatchInfo into local  
- Move WeakAuras.ShowDisplayTooltip into Private  
- Move WeakAuras.Update into local  
- Move WeakAuras.diff to local  
- Move RefereshTooltipButtons into Private  
- Move InitializeEncounterAndZoneLists into Private  
- Move ProfileRenameAura into Private  
- Make WeakAuras.table\_to\_string local  
- Remove WeakAuras.profileData  
- Move Set/GetMigrationSnapshot to Private  
- Move RestoreHistory to Private  
- Add missing RemoveHistory call to Delete  
- Move GetHistory to local  
- Move WeakAuras.SetHistory to Private  
- Move WeakAuras.CleanHistory to Private  
- Move (Un)registerEveryFrameUpdate into Private  
- Move EveryFrameUpdateRename to Private  
- Move UnregisterAllEveryFrameUpdate to Private  
- Move various Cooldown tracking functions to Private  
- Move ActivateEvent to Private  
- Move EndEvent to Private  
- Move GetGlobalConditionState into Private  
- Move (Can)ConvertBuffTrigger2 to Private  
- Move function\_strings into Private  
- Move SerializeTable into Private  
- Move UpdatedTriggerState into Private  
- Move ParseNumber to Private  
- Move UIDtoID to Private  
- Move Start/StopProfileUID to Private  
- Move anim\_function\_strings into Private  
- Move ReplacePlaceHolders into Private  
- Move RunCustomTextFunc into Private  
- Move ContainsAnyPlaceHolders to Private  
- Move PerformActions into Private  
- Remove two empty lines  
- Move FrameTick to local  
- Move RegisterForFrameTick/UnregisterForFrameTick to local  
- Move ApplyFrameLevel into Private  
- Move CreateFormatters into Private  
- Move AnchorFrame into Private  
- Move TimerTick into local  
- Move HandleGlowAction into Private  
- Move HandleChatAction into Private  
- Move maxTimerDuration into Private  
- Move SquelchingActions into Private  
- Move Start/StopProfileAura into Private  
- Move PreShowModels into Private  
- Move StopProfileSystem into Private  
- Move StartProfileSystem to Private  
- Move HideTooltip into Private  
- Move ShowMouseoverTooltip into Private  
- Move ParseTextStr into Private  
- Move MoveCollapseDataDown into OptionsPrivate  
- Make collapsedOptions local  
- Remove unused WeakAuras.ShowCloneDialog  
- Move AddDisplayButton to OptionsPrivate  
- Remove WeakAuras.afterScanForLoads  
- Move Convert to Private  
- Move GetPickedDisplay to OptionsPrivate  
- Remove unused function GetSubOptions  
- Move UpdateOptions into OptionsPrivate  
- Remove strange code that interfers with Fake States  
- Move EnsureDisplayButton to local  
- Move WeakAuras.GetSortedOptionsLists to local  
- Move LayoutDisplayButtons to local  
- Move SetFakeStates to Private  
- Move WeakAura.Pause to Private  
- Move CollapseAllClones into Private  
- Remove WeakAuras.transmitCache  
    This table is never written and no one has complained, so just remove  
    it.  
- Move WeakAuras.ConstructOptions and load\_prototype to Private  
- Move IsCLEUSubEvent into Private  
- Move subRegionOptions into Private  
- Move subRegionTypes to Private  
- Move GetProperties into Private  
- Move GetGlobalConditions into private  
- Move GetTriggerConditions into Private  
- Move ContainsPlaceHolders into Private  
- Move event\_prototypes into Private  
- Move triggerTypes to Private  
- Move OpenTextEditor into OptionsPrivate  
- Move pauseOptionsProcessing into Private  
- Move EnsureOptions into OptionsPrivate  
- Move dynFrame into Private  
- Move AddTriggerMetaFunctions into OptionsPrivate  
- Move ResetCollapsed to OptionsPrivate  
- Move RemoveCollapsed to OptionsPrivate  
- Move InsertCollapsed to OptionsPrivate  
- Move MoveCollapseDataUp to OptionsPrivate  
- Move anim\_presets to Private  
- Actions: On Hide: Fix FrameChooser  
- Fix bug with moving Ticks up/down  
- Move GetAnchorsForData to Private  
- Move DuplicateSubRegion to OptionsPrivate  
- Move OpenModelPicker to OptionsPrivate  
- Move AddTextFormatOptions to OptionsPrivate  
- Move ReplaceLocalizedRaidMarkers to Private  
- Move GetAdditionalProperties to Private  
- Move ContainsCustomPlaceHolders to private  
- Move MoveSubRegion to OptionsPrivate  
- Move GetOverlayInfo to Private  
- Move commonOptions to OptionsPrivate  
- Remove code that hid the DBM/GTFO trigger if the addons were not enabled  
    Simpler code == Better code  
- Move most of Types.lua to the Private namespace  
- Get rid of WeakAuras.editor  
- Remove WeakAuras.debug  
    Can't remember ever activating that, and it doesn't print that much  
    information anyway.  
- Move ClearOptions into OptionsPrivate  
- Move CreateImportButtons into Private  
- Move options creater functions into OptionsPrivate  
- Move ImportFromString into OptionsPrivate  
- Move ModelPicker/ImportExport/TextEditor to OptionsPrivate  
- Move IconPicker to OptionsPrivate  
- Move TexturePicker to OptionsPrivate  
- Move Resume into Private  
- Move ReloadAll into Private  
- Remove even more tutorials code  
- Move ClearFakeStates into Private  
- Masque: Remove compability code for old Masque versions  
- Move WeakAuras.CreateFrame into OptionsPrivate  
- Move aceOptions into local variable  
- Move savedVars into OptionsPrivate  
- Move tempGroup into OptionsPrivate  
- Move loaded into Private  
- Move MoverSizer into OptionsPrivate  
- Move CancelAnimation into Private  
- Move StartFrameChooser/StopFrameChooser to OptionsPrivate  
- Move valueFromPath and valueToPath into OptionsPrivate  
- Move WeakAuras.CodeReview to OptionsPrivate  
- Move expanderAnchors and expanderButtons into OptionsPrivate  
- mouseFrame into OptionsPrivate  
- Move personalRessourceDisplayFrame into OptionsPrivate  
- Move FakeStatesFor into Private  
- Move SetCollapsed into OptionsPrivate  
- Move UpdateButtonsScroll into OptionsPrivate  
- Move MultipleDisplayTooltipDesc into OptionsPrivate  
- Remove unused UpdateCloneConfig  
- Move CanHaveClones to Private  
- Move GetTriggerDescription to Private  
- Move ExportToTable to OptionsPrivate  
- Move ExportToString to OptionsPrivate  
- Move ConvertDisplay into OptionsPrivate  
- Move SetDragging to OptionsPrivate  
- Move HandleRename into OptionsPrivate  
- Move DuplicateAura into OptionsPrivate  
- Move PickDisplayMultiple into OptionsPrivate  
- Move WeakAuras.Animate into Private  
- Move Ungroup into OptionsPrivate  
- Move PickAndEditDisplay into OptionsPrivate  
- Move ConfirmDelete into OptionsPrivate  
- Move ResetMoverSizer into OptionsPrivate  
- Move SetGrouping to OptionsPrivate  
- Move MultipleDisplayTooltipMenu into OptionsPrivate  
- Move IsPickedMultiple into OptionsPrivate  
- Move PickDisplayMultipleShift into OptionsPrivate  
- Move ClearPick(s) into OptionsPrivate  
- Move IsDisplayPicked to OptionsPrivate  
- Move ObfuscateName out of WeakAuras  
- Move WeakAuras.DropIndicator to PrivateOptions  
- Move ScanForLoads to private  
- Remove WeakAuras.DeepCopy  
    Replace it with CopyTable or Mixin  
- Add more functions to the block list  
- adds bleed icon (#2461)  
    adds bleed icon  
- Update Actions (#2457)  
- Fix custom variables with spaces and quotes in them  
    Fixes: #2400  
- Add ignoreSelf to group type unit triggers, e.g. Health/Power  
    Fixes: #2432  
- Add a simple formatter for strings  
    Currently only allows truncating a string.  
- SubText: Fix anchoring of anchors yellow background  
    Fixes: #2420  
- Tweak Magnetic Align button styling  
    Fixes: #2403  
- Fix link to custom check  
- use PRD for nameplates when options are open and no frame found  
- add .release to .gitignore  
- Fix a few typos  
    sometimes spell checkers find bugs  
- Temp: Don't use normal CI for beta tags  
- Update beta CI for beta tags  
- add player xp trigger (#2408)  
- Item Count trigger: make %n return name of item  
- add "Faction Reputation" trigger  
- Fix warning about overwriting _ in Cast Trigger  
    Fixes: #2405  
- Add SetTextureOrAtlas to the relevant functions in an Icon region  
- re-enable model region for classic (#2379)  
    # Conflicts:  
    #	WeakAuras/WeakAuras.toc  
    #	WeakAurasOptions/WeakAurasOptions.toc  
- BuffTrigger: Fix a nil error  
- Warn about accessing forbidden functions/objects via the AuraWarnings  
- Move AuraEnvironment helper methods to the Private namespace  
- Refactor legacy BuffTrigger warning  
    To a more general system. The only bit lost, is the jumping to the  
    trigger page.  
    This displays the new warnings on the information tab.  
- Add PrivateOptions to a few files  
- Add a PvP Talent selected trigger  
    Similar to the Talent Select trigger, just for pvp talents.  
    Fixes: #2345  
- Fix Else if Conditions if the second condition has no check  
    This can happen while configuring conditions  
    Fixes: #2390  
- strip keys from highlights section in changelog  
- Set actions fetch depth to 0 to grab all branches  
- Update "The Pencil" (#2346)  
    hoping to increase intuitiveness  
- DynamicGroup: Abort earlier if the user gives us the wrong kind of data  
- Add a method to get the active state for triggers  
    Because I'm nice.  
- Fix regression in aura\_env for animations  
    Turns out I should call the right function...  
    Fixes: #2372  
- clear all points on frameChooserBox first  
    could not repro this issue, but it's likely just an aura connected to a nameplate  
    Fixes #2348 (probably)  
- Fix clonePool (#2370)  
- Revert "temporarily disable spellcache building"  
- Fix the DropIndicator in the options  
- Fix indentation in WeakAurasDisplayButton  
- Dynamic Group: Make custom grow function a bit more resilent  
    Fixes: #2352  
- Condition's custom checks: Rename Events to Additional Events  
    This might make it sligthly clearer that it is a optional setting  
- Remove outdated comments  
- Add a "Else If" to Conditions  
    Which links a condition to the previous condition, so that it can only  
    be active if the previous one isn't.  
    Also add a "alwaystrue" option to the checks, which is useful in general  
    but especially for else if.  
    Fixes: #1304  
- Remove IsAnimating function  
    Every caller passed the wrong arguments, and thus the function always  
    returned false. Since that's apparently the case for a long time, just  
    remove it.  
- Remove id dependency from Core Animation code  
- Add a confirmation pop when deleting trigger  
- guard against div/0 (#2358)  
    * guard against div/0  
    we shouldn't have to do this...thanks blizz  
    fixes #2353  
- defend against silly user errors more  
    fixes #2352  
- Extract Conditions code  
- Add to Animations.lua  
- Move CorrectSpellName/CorrectItemName to where they are used  
- Move Animation related code to Animations.lua  
- Move Modernize code into its own file  
    It's very self-contained and having it in a separate file helps.  
- Remove Modernize code for ancient versions  
- Move a few more auxilary functions to Private  
- Replace our filterInput with the default blizzard search widget  
    Looks pratically the same, behaves slightly nicer and is far less code.  
- Add a bit of space around the toolbar  
- Add a Footer to the main window that contains several useful links  
    * Current links are:  
      * Get Help => Discord  
      * Documentation => Wiki  
      * Find Auras => wago.io  
      * Update Auras => weakauras.wtf  
      * Found a Bug? => github/issues/new  
    * There's currently no way to hide the footer, that's probably the  
    number one wish people will have. That needs figuring out how to show  
    the bar again. Maybe we need that settings page...  
- Remove more Tutorials code  
- Get rid of one set of borders on the right side.  
    Readd it for the new screen, as that one needs it.  
    This increases the width by 20px and height by 30px and imho looks a bit  
    nicer  
- Disable the Legacy Bufftrigger  
    It now does nothing, though the options code stays intact for now.  
- Move a few globals out of WeakAuras  
- Fix global conditions  
    Fixes: #2341  
- Move Private.IsLoginFinished() back to WeakAuras  
    Turns out a popular aura is using the function. Since it doesn't really  
    hurt, we can have that function in WeakAuras's namespace.  
    Fixes: #2343  
- fix GH actions tag specifier  
- fix pvp talents  
- Reorder tabs  
- Simplify PowerAuras path code  
- Add Information Tab to the Options  
    * To allow editing the url  
    * Better editing of description  
    * Remove URL/description editing from context menu, but leave rename  
      there. Removing Rename from the context menu would annoy to many  
      people.  
    * Url and description editing have slightly different semantics, see  
      the notes we display to users.  
    * Uses none of the shared common options code.  
- Consistenly use WeakAuras.prettyPrint  
- Remove no longer used code for tutorials  
- Introduce Private space for things we don't want to have exposed  
- Remove deprecated function calls  
    The other deprecation warnings on Globe are due to Classic having a  
    older API version.  
- Remove C\_LootJournal depencency of Item Sets trigger  
    Since apparently the API no longer exists in Shadowlands.  
    The trigger still works, though can't find the total number of items in  
    the set and the description can no longer lists the set ids.  
- Fix globe warnings  
- Tick improvements (#2313)  
    Co-authored-by: Infus <infus@squorn.de>  
- Fix default texture Wrap Mode  
    The old default texture mode was CLAMP, which is usually not what people  
    want, so do the following:  
    * Add the CLAMPTOBLACKADDITIVE to the list of texture wrap modes  
    * Add a texture wrap mode to Texture  
    * Change the default to CLAMPTOBLACKADDITIVE, which behaves saner  
      for both Texture and Progress Texture  
    Fixes: #2277  
- Custom Condition checks  
    Custom condition functions can check states to e.g. check the remaing  
    time between two different triggers.  
    The custom events must be built-in wow events.  
    Fixes: #477  
- Fix Condition options not always correctly updating  
- TexturePicker: Split up data and parentData  
    So that we can use it for ticks  
- Move Stopmotion region type into WeakAuras  
    Just the region type, not the actual textures. This makes maitenance  
    easier.  
- templates: priests spells update  
- templates: fix nil error when changing talents  
- templates: remove azurite stuff  
- Clean up a few warnings  
- Update GitHub Actions  
- Add new beta build script  
- Remove restart reminder message  
    In Shadowlands addons can update without a client restart  
- Don't push alpha tags  
- Fix TOC version  
- add fullCircle option  
    Closes #2053  
- ensure that edgeSize on borders is not zero  
    Because that causes a division by 0 error in the backdrop mixin  
- Fix Health trigger  
- missed one  
- better backdrop template fix  
- Sync TOC author infos  
- Renames: WowAce to CurseForge, Twitch to CurseForge  
- Update TOC and addon name for Shadowlands  
- Make BackdropTemplateMixin changes backward compatible  
- Icon: Include a glow sub element in the default setup  
- Icon: Add missing cooldown = false to defaults  
    Unfourtunately that missing cooldown false appears to prevent us from  
    changing the default easily.  
- Merge pull request #2289 from nullKomplex/IconStaticCD  
    Make CD Widget functional when using a static progress type on an icon aura.  
- Fix SetBackdrop calls in our code  
    Still two errors in AceGuiWidgets-SharedMedia  
- temporarily disable spellcache building  
    because something in it crashes shadowlands beta. Many (most?) people will port over their SV anyways,  
    so it's unlikely this will be a huge blocker tod isable  
- bump toc  
- drop "old" new feature indicators  
    surely an expansion change should warrant that  
- Fix anchoring to unit frames on group join  
    On joing a group the frame for a unit might not yet be available.  
    LibGetFrame informs us that a new association between unit and frame was  
    found.  
    In that case, we need to more than just reanchor a individual region, we  
    need to reevaluate the position for all children.  
    Calling DoPositionChildren is a pretty big hammer, but this works for  
    now.  
    Fixes: #2480  
- Use the right anchorPoint  
    In specific circumstances, the anchorPoint is a hardcoded to "CENTER" in  
    the Options. We should do the same in the actual code applying them.  
    Fixes: #2477  
- Fix getting the width and height of text regions for Group layouts  
    Not Dynamic Groups, but normal groups.  
    Fixes: #2474  
- Fix MoverSizer trying to attach to restricted regions  
    This isn't a ideal fix, in that it simply hides the mover sizer, but  
    it's good enough to fix the issue.  
    Fixes: #2447  
- Sanitize additional progress values somewhat  
    By limiting them to -10, +11.  
    Fixes: #2469  
- Update issue rules  
- Try yet another action  
- Use my fork of the GitHub Action  
- Switch to different action  
- Update issues.yml  
- Create issues.yml  
- Update issuecomplete.yml  
- Create issuecomplete.yml  
- Add support for Custom Class Colors  
    Needs https://www.curseforge.com/wow/addons/classcolors or similar to change colors.  
- Ignore .DS\_Store  
- Fix unit model auras on classic  
    Fixes: #2436  
- Fix overlays with negative min value  
    Fixes: #2412  
- Fix moving/deleting sub elements not adjusting conditions correctly  
    First adjust the conditions, then call WeakAuras.Add  
    Fixes: #2413  
- Fix regression in the Range Trigger  
    Allowing the setting of various non sensical relation operators.  
    This was accidentally introduced in 3b1a2506d335a91df798965739fb63fd1e2b9e5d  
    Fixes: #2417  
- Add missing calls to WeakAuras.Add  
    Fixes: #2404  
- Fix updating of group auras  
    Seems to have broken at some point.  
    Fixes: #2391  
- Fix %c in conditions  
    Fixes: #2389  
- Fix cast bars not having fake timers  
    Fixes: # 2382  
- Fix setting of timed duration in custom trigger  
    Fixes: #2383  
- Options: GetAll  
    On trying to find the common value in a multi-selection, try to ignore  
    disabled elements.  
    That is if there's if the option is enabled for at least one child,  
    return the common value of all enabled children.  
    Fixes: #2361  
- Update bug\_report.md  
- re-enable model region for classic (#2379)  
- Fix trigger options not appearing at all if the type is nil  
    Fixes: #2378  
- Fix Conditions for Multi-Selection  
    Fixes: #2366  
- Fix regression in progress bars  
    Fixes: #2363, #2359  
- Fix AdditionalProgress when not a table pt. 2  
- Fix error if state contains a non-table value for additionalProgress  
    Fixes: #2333  
- fix MoverSizer alignYFrom  
- Remove left over code that would taint max  
    Might be the fix for:  
    Fixes: #2329  
- SubText: Fix a few issues with the text offset  
    Ups  
- Fix wrong test for type of pickedDisplay  
- Add xOffset, yOffset to SubText properties  
    Fixes: #2324  
- Fix min/max progress settings for overlays and ticks  
    There are too many combinations to test...  
    Fixes: #2320  
- Fix Expanding trigger functions if multiple auras are selected  
    I recently refactored how options' functions work, turns out that was  
    lead to lots of small problems and a set of different work-arounds.  
    This is the latest in that series.  
    Fixes: #2312  
- Fix fetching of ownRealm.  
    Turns out the game sometimes doesn't know which realm the player is  
    from.  
    Fixes: #2316  
- Fix anchoring of dynamic groups  
    Fixes: #2317  
- Fix Apply Template  
    TO correctly replace triggers, and to show the result.  
- Fix more regressions in the Options  
    * Setting of Dynamic Duration and Duration  
    * Setting text via the expanded editor  
    * Removing overlays  
- CLEU: Fix trigger settings  
- BuffTrigger2: useUnitName Fix Options size  
    Fixes: #2292  
- Fix setting of trigger types on the non-first trigger  
    Fixes: #2288  
- Fix if moving a aura into a group with the new options visible  
    Fixes: #2287  
- Combat Log: Fixes suffix event  
    Fixes: #2286  
- Options Refactoring  
    Improve the Options code in various ways.  
    * Split up the Options code into files per tab of the Options.  
    * Cleanly separate the special cases of Condition Options and Custom  
      Options from the rest.  
    * Make the interdependencies between the other tabs much easier to  
      understand by extracting the common code to COmmonOptions.lua  
    * Fix the various methods that are there to update the Options, that is  
      ReloadOptions, ReloadOptions2 etc.  
      Replace them with two methods:  
      ClearAndUpdateOptions: which is the right method to call if the change  
      affects the options from a setter called by AceOptions  
      ClearnAndUpdate + FillOptions: which handles the case that the options  
      need to be refilled too.  
      Further refactorings in this area are certainly possible, but this  
      should be a much better base to do them.  
    Fixes: #2246  
    Fixes: #988  
- Fix Abbreviate's slider allowing half-chars  
- Fix Has Vehicle UI Load options  
    Fixes: #2281  
- Text Format Options: Make more resilent  
    Fixes: #2280  
- Fix Big Number formatting options  
    Add a space so that the alignment is correct  
    Fixes: #2274  
- Set the wrap mode on all the textures in the TexturePicker window so they don't repeat at the edges  
- Add LibSerialize (#2235)  
- Make localization easier  
- Rename Blacklist features  
- Fix WeakAuras.WA\_Utf8Sub() if the size is equal to the string length  
    Fixes: #2270  
- Add more basic shape textures  
    Provided by asaka-wa  
    Fixes: #2258  
- Fix %t with "none" formatter  
    Fixes: #2267  
- fix division per 0 in threat trigger  
- Add "Exact Spell Match" option to "Queued Action" trigger, fixes #2264  
- update build.yml for 1.13.5  
- Use threat value and calculted total threat as value & total (#2262)  
    Store Aggro & Status for use in conditions fixes #2261  
    Set canHaveDuration fixes #2257  
- BuffTrigger2: Fix "Combine matches per Unit" regression  
    Fixes: #2255  
- BuffTrigger 2: Don't use a time comparison  
    In CleanUpOutdateMatchData, use the index instead of a time to  
    figure out which match data is outdated and can be removed.  
    In UpdateTriggerState, remember the cloneIds that are valid and remove  
    all other clones.  
    This is the only potential explanation that I have for showing expired  
    buffs.  
    Fixes: #2249  
- Fix %i formatting  
    Fixes: #2251  
- Add a AFK flag to Status Conditions  
    Easy to do and frankly more useful than some of the other cases  
    in Status/Conditions  
    Fixes: #2250  
- Fix Cancel in ModelPicker  
- Update TOC for WoW 1.13.5  
- Fix recent changes to ticks.  
- Update bug\_report.md  
- Classic: No lua error on importing a model aura  
    Fixes: #2241  
- Aurabar: Add a Icon Visible property  
    Fixes: #2240  
- Fix the IconPicker resizing  
    Fixes: #2234  
- Remove left-over debug code  
- Add unitIsVisible filtering to Bufftriggers  
    Fixes: #2220  
- Don't build the spellCache on loaded the WeakAurasOptions  
    Build it on opening the options, which is going to be sufficient in  
    almost every case.  
- BuffTrigger2: Add Unit Name filtering  
    This basically implements the group member names via a filter option.  
    Instead of tracking the buff on a specific named player, track it on all  
    group members with that name.  
    This is not a perfectly ideal ui, but fits very well into the other  
    options.  
    Fixes: #1756  
- Add advanced Name/Realm filtering to Health/Power/Cast/Charcateristics  
    That is allow multiple matching names/realms similar to the load option.  
    Don't offer blacklisting names/realms for now, as that seems more niche  
    to me and the only reason load has it, is because the old system allowed  
    it.  
    This breaks backwards compability in a minor way.  
    The old conditions allowed for checking if the unit name matched a lua  
    pattern, or via a contains check. That's no longer supported, instead  
    it's always a full name check.  
    Since it was only supported via conditions and not in the trigger  
    settings, I consider this more of a bug fix.  
- Make the name/realm option more flexible  
    By allowing multiple entries  
    Fixes: #2202  
- IconPicker: Add icons from achivements as matches  
    Fixes: #2215  
- Update: Make matching a bit saner  
    By checking that either both the old and new aura have children, or both  
    don't have children.  
- Add text formatting options  
    For each text replacement, we generate new options.  
    That works in text options, actions/chat, conditions/chat, and due to  
    our options code is slightly different in each place.  
    The global %p/%t precision settings are now gone. Those settings are  
    migrated to every place that used the right format.  
    One small backwards incompatible change is that custom text functions  
    receive a preformatted progress/duration string, which depended on the  
    global setting. This is now always formatted with one decimal, since the  
    global setting is gone.  
    This adds as new text format options:  
    * Precision/Round options for any text replacment  
    * AbbreviateNumbers  
    * AbbreviateLargeNumbers  
    * Class Colored Unit Name  
    * Class Colored GUID  
    * GCD based time  
    Fixes: #1618  
- Threat Situation trigger rework and enable it for WoW 1.13.5 (#2228)  
    Co-authored-by: Infus <infus@squorn.de>  
- Fix weapon enchant pattern  
- Make WoWAce Translations happier (#2237)  
- Tick SubRegion (#1923)  
    Add a tick sub region for adding tick marks to progress bars.  
    Currently only one tick per subregion with minimal visual options, that is size + color. But no texture.  
    Position settings are: "At Value", "At Percent", "At missing value", "Offset from Progress".  
    Co-authored-by: Infus <infus@squorn.de>  
- Add missing CLEU subevent prefix, fixes #2224  
- Update README.md  
- Revert even more spell checker changes  
    Fixes: #2229  
- Fix incorrect subevent registration  
    Fixes: #2222  
- Only allow nameplate units for attaching nameplates  
    This is much saner than trying to fix what only accidentally sometimes  
    does the right thing.  
    Fixes: #2207  
- Add HasVehicleActionBar to the "Vehicle UI" load option  
    Seems like a oversight.  
    Fixes: #2209  
- on import, fix handling of aura's tocversion  
- remove ability to send messages to channels (which is protected) fixes #2200  
- one more  
- revert a few breaking spelling changes  
- run spellchecker  
- fix nil error  
    fixes #2198  
- BT2: Fix smart groups by more correctly checking the unit ids  
    Instead of checking :sub(1,4) == "party", use the hash tables we have,  
    since those do not return true for partypet1  
    Fixes: #2193  
- Fix tooltip information not being cleared if aura is missing  
    Fixes: #2194  
- Rename "Filter by Hostility" to "Nameplate Type"  
    Because that's the name I've used in other places and it's more correct,  
    though a bit more obscure.  
    The intention of that feature is to match the blizzard distinction  
    between "friendly" and "hostile" nameplates.  
    Reported on Discord  
- Fix boss5 unit  
    Apparently there are now 5 boss units. Use the blizzard constant to make  
    the code a bit safer for further changes.  
    Fixes: #2185  
- Revert "Don't check for state.show in ReplacePlaceHolders"  
    Since this breaks text replacements,  
    If a state is set to show = false, it needs to be ignored for text  
    replacements, as otherwise stale information could be shown.  
    But, there's one important exemption. For auras that send a chat message  
    in their OnHide code, we still want to use the state information.  
    So, introduce a way for the ReplacePlaceHolders to know about this  
    special case. This is a bit hacky but unfortunately what users would  
    expect.  
    Fixes: #2186  
- Fix tsu variables with syntax errors breaking the trigger page  
    Fixes: #2192  
- Fix models on progress bars  
    Fixes: #2187  
- Add snippets (#2176)  
- Remove unused slash command code.  
- Fix Profiling pprint command.  
- templates: add Show on Ready  
    Also add condition isNotUsableBlue for basic Show on cooldown & Show on Ready  
    partially fixes #797  
- Fix Alternate Power staying around after leaving vision  
    The basic problem would be easily solved by adding PLAYER\_ENTERING\_WORLD  
    to the alternate power trigger.  
    But, in the recent unit trigger function work I naively assumed that  
    unit based triggers only want to react to unit specific events, which  
    turns out to be not true.  
    This needs a bigger refactoring, as a non unit event needs to be  
    distributed to all potential states.  
    For now, simply handle PLAYER\_ENTERING\_WORLD by sending a  
    UNIT\_CHANGE\_unit event per unit.  
    Fixes: #2171  
- Unit Characteristics: Add UnitClassification  
    This is somewhat useful for figuring units with a silver/golden dragon.  
    Fixes: #2168  
- Text: Add shadow options  
    Also improve the settings to look closer to the SubText  
    Generalizing the SubText and Text to have the same base looked somewhat  
    possible, but not that easy as regions and subregions do have a bit of  
    different environment. Thus don't do that.  
    Fixes: #2100  
- Text: Remove old workaround for SetText  
    This is afaik fixed now.  
- refactor anchor & glow to unitframe monitoring (#2165)  
- fix default options not loaded for WeakAuras addon fixes #2177 (#2179)  
- Fix anchor (#2175)  
- Add a way to overwrite default font and font size (#2169)  
- Fix the order in SubRegionOptions  
    No reason to use floating point values here  
- Fix UnitIsUnit check for Unit Characteristics  
    This is messy. The design of the unit triggers is, that they have one  
    state for each unit id that is relevant, and that they are only  
    interested in events that affect that unit. And thus events are  
    forwarded to the state that corresponds to the unit.  
    Unfortunately, the UnitIsUnit check breaks that. With that, a e.g. focus  
    unit with a UnitIsUnit check for target is interested in  
    UNIT\_CHANGED\_target events.  
    Fix this by:  
    a) Removing the UnitIsUnit check for group triggers. This is too much  
    work to fix, it would need to forward that event to each state instead  
    of just one state.  
    b) Hardcode the unit we pass into the trigger function for non group  
    triggers.  
    The UnitIsUnit check really doesn't fit into the design.  
    Fixes: #2152  
- Fix specific unit for unit type triggers  
    After some testing reveals that RegisterUnitEvent with e.g .  
    targettarget "works" in a limited way. Unfortunately we did  
    accidentally worked in that limited way before the unit trigger  
    rewrite.  
    Specifally, RegisterUnitEvevent for a non base unitid, e.g. targettarget  
    will in general not deliver events. Except if the targettarget unit is  
    known under a base unit id, then events will be delivered. E.g. if  
    targettarget is a raid member or a nameplate. Those events will have the  
    first argument set to the base unit id that provides the data.  
    Thus: Register even non base unitids, and on getting events deliver them  
    with the unit id that we registered, instead of the unit id of the  
    event.  
    Fixes: #2148  
- Conditions External Glow: Fix frame chooser  
    Fixes: #2157  
- Fix tracking of buffs on bosses  
    Fixes: #2161  
- Fix some events being handled even while WeakAuras is paused  
    Fixes: #2156  
- Update wiki links to new Custom Code Blocks page (#2162)  
- DG anchored to Unit Frames: fix #2051  
    - anchor to hidden frame when can't find a unitframe  
    - handle new LibGetFrame Callback: FRAME\_UNIT\_REMOVED  
- Add new feature strings to various places  
- Set FrameLevel again after setting frame strata  
    Presumably that's needed, though I couldn't reproduce:  
    Fixes: #2105  
- Load: Add support for multi zone names  
    Fixes: #2144  
- Fix spell name and spell id conditions for Cast Trigger  
    Patch by HopeAsd  
    Fixes: #2149  
- Add Attack Power to the Character Stats  
    Fixes: #2143  
- Custom Trigger: Add fake events for UNIT:unit  
    Fixes: #2131  
- Add Dead/Ghost and Disconnected filter to various triggers  
    * Bufftrigger 2  
    * Health  
    * Power  
    * Alternate Power  
    * Unit Characteristics  
    Fixes: #2043  
- BT2: Add a hostility check for nameplates  
    Also fix spelling of GetPlayerReaction  
    And fix the implementation to work more accurately.  
    Fixes: #883  
- Enable the ignoreSelf option for nameplates  
    That is for:  
    * BuffTrigger 2  
    * Health  
    * Power  
    * Unit Characteristics  
    * Alternate Power  
    * Cast  
    Fixes: #2140  
- disable trigger "Crowd Controlled" for classic  
    fixes #2145  
- Profiling Improvements  
    * Add largest MS spike per aura or system  
    * Clean up profiling report window  
    * Add ability to profile next combat or boss enounter  
    * Clean up and increase functionality of Real Time Profiling Window  
    * Miscellanous profiling tweaks and improvments  
    * Make report window read-only  
    * Make it draggable via the title only  
    * Use actual UIParent object  
- Fix inconsequential typo.  
- BT2 Fix Multi by adjusting it to recent changes (#2139)  
    Fixes: #2136  
- Clean up match data if a unit ceases to exists  
    So that if it appears anew we gather all new data.  
    Fixes: #2133  
- Fix nameplates auras sometimes not being applied if in a raid group  
    Fixes: #2133  
- Readd %s to the Power trigger  
    Because the old trigger had that.  
    Fixes: #2127  
- BT2: Rewrite how group triggers apply to units  
    This makes all group triggers work the same way, thus removing the  
    special casing for raid/party/smart group triggers.  
    And prepares the group triggers for even more filter options.  
    Fixes: #2118  
- Fix Cooldown handling for users with abnormal uptime  
    By only apply the profession cooldown fix in a more controlled way.  
    Fixes: #2122  
- Add a "On Taxi" load option for classic  
    Fixes: #2129  
- Triggered by the space (#2123)  
    * Name Plate > Nameplate  
    * Name Plate > Nameplate  
    * Name Plate > Nameplate  
- Add missing migration for action's glow\_type  
    fixes #2120  
- Fix Health/Power triggers having not duration for animations  
    Fixes: #2111  
- aura trigger: fix error with empty specific unit  
- classic: fix ZG not matched for 20 man raid load condition  
- classic: remove boss & arena unit from multi, bufftrigger2 and cast trigers  
- Pet trigger: fix defensive mode on retail  
    pet's action button was renamed to PET\_MODE\_DEFENSIVEASSIST  
- Workaround China's overeager profanity filter  
    In its infinite wisdom the chinese profanity filter is:  
    * force enabled for all of china  
    * contains a realm name  
    Workaround this by obsfuscating the realm name if on a chinese server,  
    by adding dots inbetween each unicode code point.  
    And being able to parse that.  
    This makes it impossible to share links from new WeakAuras versions to  
    old versions.  
    Fixes: #2090  
- Fix Models on Icons  
    I can't explain why this helps nor how I even figured this out. But it  
    works for now.  
    Fixes: #2075  
- Classic: Fix SAY/YELL not being prevented outside of instances  
    Fixes: #2092  
- Glow External Element Conditions: Fix multi selection  
- stance trigger: fix multi and simplify the code  
    GetShapeshiftForm() seems to be working for classic now  
- update classic toc interface version to 11304 where it was missing  
- remove previous glow before applying a new one  
- improve flow of glow external element conditions & actions  
- Fix pencil descriptions not layouting correctly  
- Fix Profession Cooldowns if they are on cooldown before login  
    Apparently wow's GetSpellCooldown wraps negative numbers around instead  
    of properly returning them. Such, if we detect a abnormal high start  
    time, wrap it back.  
    Fixes: #2078  
- BuffTrigger: Fix bug in filtering scan functions  
- Fix a few more instances of missing nil checks,  
    Where the Bufftrigger code assumes that everythin has stacks.  
    Fixes: #2049  
- Wrap calls to customTestFunctions defined in conditionTest into xpcall  
    Fixes: #2088  
- Universal animation easing (#2087)  
    * Revert "Eased translate animations (#2080)"  
    * Adds a more universal method of easing animation.  
- Add missing file  
- Tweak Pencil Options to make the whole line clickable  
    That feels a lot nicer  
- Add Text's Automatic Width and Word Warp for Subtext  
- [WIP] Auto re-anchor unitframes & slightly different anchors for nameplates addons (#2070)  
    * Monitor aura anchored to unitframes for changes using LibGetFrame's FRAME\_GUID\_UPDATE callback  
    * use WeakAuras.GetUnitNameplate for all anchors to nameplates  
- Eased translate animations (#2080)  
    Adds eased slide animations  
- Allow WA Updates from chat links. (#2085)  
    * Allow WA Updates from chat links.  
- Added option to supply pure text tooltips (#2076)  
    Co-authored-by: Jens N <jens.n@godlike.biz>  
- BuffTrigger2: Fix small issues  
    Fixes: #2081  
- Fix Model on AuraBars  
    Apparently it works better if the parent is a actual frame and not just  
    a texture.  
    Partialy fixes: #2075  
- Model: Fix bug where a released model was not properly released  
- Fix typo  
- Fix totalStacks calculation for multi bufftriggers  
    Multi triggers might not provide a stack value.  
    Fixes: #2049  
- BuffTrigger2: Remove unused strings  
    Those were planned extensions for the buff trigger that were never  
    implemented.  
- Prevent auras from being hidden while the options are open  
    In a much more fail-safe way.  
    Fixes: #2068  
- Fix ScheduleCastCheck for Cast Trigger in a unlikely event  
    If two remaining time checks would schedule for the same instant, then  
    only the recheck for one unit would fire  
- Fix remaing time check of Weapon Enchant trigger  
    Fixes: #2071  
- Fix custom text from unrelated aura showing up in some cases  
    Clear the custom text stored value in SubText:modify  
    Fixes: #2073  
- Implement blacklisting for BuffTrigger2  
- Remove a bit of code duplication  
- Bufftrigger2: Limit the amount of options created  
    By checking the children how many options we need  
- more fixes to repair  
- guard against errors in migration  
- ensure that id is correct when installing migration  
- Add GetData method  
    to fix a dumb bug with restoring from migration snapshots  
- fix migration  
- data migration to set actions's glows to "FRAMESELECTOR"  
- Supercharge glow actions / conditions (#2032)  
    * Actions: add unitframe/nameplate glow and more glow options  
- Fix wrongly named options  
    Fixes: #2052  
- Fix localized strings  
    Fixes: #2055  
- Don't check for state.show in ReplacePlaceHolders  
    As that prevents text replacement in the OnHide actions. No idea why I  
    added that check in the text replacement.  
    Fixes: #2047  
- localize strings  
- Re-Add Encounter Id(s) load condition and full list in tooltip  
- Make OnHide/OnSHow work around opening/closing options  
    A aura now receives a OnHide if the Options open while it's visible, and  
    a OnShow afterwards if it it is activate after the Options close.  
    While the Options are open no actions are run.  
    Fixes: #1342  
- BT2: Add a totalStacks text replacement  
- fix typo in ConstructTest  
- Combat Log trigger: fix srcUnit and dstUnit conditions  
- remove LibTotemInfo (totem api restored with 1.13.4)  
- bump toc version for classic to 11304  
- BT2: Add support for filtering by class  
    * Rewrite how we calculate max count for groups. Count it per  
    triggerInfo on updating to which group units a triggerInfo applies.  
    This is much easier than precalculating every combination of  
    class/role/group type.  
    * The options code for the buff trigger is different from the generic  
    trigger, it's not trivial to have the same one+multiple selection  
    widget that the generic trigger has. Thus simply use a multi selection.  
    This implements another part of: #1756  
- SubText: Fix anchor collapsed description  
    Reported on Discord  
- Fix dynamic group limit option slightly diffrently  
    Keep track of which childs have not been positioned, and hide those.  
    Fixes: #2024  
- AuthorOptions: Fix Move out of group  
    The parent points to a optionData, not directly to the options  
    Fixes: #2031  
- CLEU: Add the isOffHand check for _MISSED  
    And remove the "amount" check, as it has never worked and I don't even  
    know what it is supposed to mean for misses.  
    Fixes: #2033  
- Classic: Combat Log trigger: re-add spellId  
    compare the name for the spell id  
- Fix dynamic group limit option  
    This was broken by the introduction of the per frame anchor code.  
    Previously the iteration was over all children and for each child check  
    the position returned by the grow function. A missing position, thus  
    meant that the child should be hidden.  
    The iteration in DoPositionChildrenPerFrame is now over the positions  
    for a specific frame and thus a missing child is never hidden.  
    The easiest way to fix it, is to change the interface between grow functions and  
    dynamic group slightly. The grow function should now explicitly assign a  
    falsey value to show for children beyond the limit.  
    Since this is only a edge case, that no one has found in months the api  
    change is probably the best course  
    Fixes: #2024  
- BuffTrigger2: Add "party", "raid" to the existing group support  
- Allow separators to force a "page break" in custom options  
- Health & Power triggers: fix division per 0  
- Fix Unit status triggers:  
    * don't make clones for single unit type fixes  
    * fix specific unit  
    * fix souceName and destName not being disabled for inverse  
    * fix alternate power showing up  
    Fixes: #2015 #2016 #2017 #2020  
- Update ForAllIndentsAndPurposes  
- fix auras anchored to an other aura  
- Fix deleting sub texts with conditions that don't have a property set  
- Rework Unit Type Triggers  
    * Health, Power, Alternate Power, Unit Characteristics, Cast  
    * All of them can clone now for  
      * Smart Group  
      * Party  
      * Raid  
      * Boss  
      * Arena  
      * Nameplate  
    * Nameplate type filter to filter for friendly/hostile nameplates  
    * Class type filter  
    * Role filter  
    Fixes: #1982  
    Fixes: #1972  
- BT2: Hide Filter by Group Role on classic  
- Add a shaking entry animation  
    If you want to really put emphasis on something. And a bounce just won't  
    work.  
    Inspired by #2004, though implemented withouzt any randomness and not  
    quite as eccentric.  
    Fixes: #2004  
- Fix times showing up on reused icons  
    We need to clear the saved values, so that inversing a cooldown does not  
    reset them.  
    Fixes: #2001  
- Blacklist two M+ affixes that were never used  
- Icon: Hide the cooldown widget in modify  
    It'll be shown again in SetTime() if needed. Since we are potentially  
    recycling a icon region, which previously had a time set on it.  
- Icon Cooldown: Disable the bling  
    We aren't showing it anyway.  
    Fixes: #1998  
- Fix bling showing on updating timers  
    Setting a expired time shows the bling. This affects auras that set a  
    expirationTime in the past and set changed to true.  
    Fixes: #1998  
- Templates: Add Chaos Strike  
    Fixes: #1992  
- Simplify force\_events a bit  
    By getting rid of the table option, which wasn't used anymore.  
- BarModel: Fix interaction between parent alpha and model alpha  
    Apparently setting a alpha level on the region automatically affects  
    the PlayerModel. Fix that by resetting the model alpha in response  
    to a parent alpha change.  
    Fixes: #1995  
- DynamicGroups: Fix text placement not adjusting to text dimensions  
    Texts are special in that they don't have a hardcoded size but instead  
    dynamicyally adjust their size based on contents.  
    And dynamic groups have supported that special case by using  
    region.width instead of data.width.  
    Thus the code in dynamic groups was e.g. for width  
    'data.width or region.width'.  
    That has the nice property of not hardcoding the specialness.  
    But if the user converts a existing region to a text, it has a width  
    setting in data.  
    Thus make the dynamic group aware that texts are special. Make this a  
    bit nicer by deciding what to use in exactly one place though.  
    Fixes: #1999  
- Fix Character Stats trigger MoveSpeed  
    Turns out there's no event for when the move speed changes and thus we  
    shouldn't have added it. But it's too late for that now, so fix it by:  
    * Letting the user opt into a "contionous update"  
    * Which checks every frame for move speed updates.  
    Fixes: #1989  
- Fix Zone load option  
    Apparently there are no events if the mirco zone changesin Ny'alotha,  
    and thus the only way to detect a zone change is by repeately checking.  
    Thus every 0.5s, we now check the zone id for any changes.  
    Fixes: #1974  
- fix anchorPoint name with new anchors option  
- re-anchor on expand if aura was already shown  
- disable unitframe & nameplate anchor options from group & dynamicgroup  
- call AnchorFrame only on Expand for anchors that require data from clone  
- add nameplate and unitframe anchors for auras  
- Restore print profile binding text  
- Fix classic pkgmeta  
- clear authormode on any child imports too  
- stop swing timer when a cast is started fixes #2005 (#2006)  
- Show realtime visual graph of profiling (#1949)  
    * Show realtime visual graph of profiling  
    * add time% spent in weakauras  
    * add profiling frame to WeakAuras.frames  
    moved WeakAuras.frames declaration to Init.lua  
    * simplify stop code  
    * fix nil error  
    * use upvalue  
    * tiny frames reorganization  
    * refactored a bit  
    * use smoothed progress  
    * added some buttons  
    changed binding to toggle the window  
    * add minimize button  
    * tweeks  
    * removed start/stop/report keybinds  
    * changed minimap right click button  
    * increase report window title width  
    * update keybinds  
    * improved time in WA  
    * readded profiling print key binding  
    * darker bars and add margins  
- Make Cooldown Progress (Equipment slot) able to use Mainhand and Offhand on retail.  
- compare value to value, not table containing value  
- add lastest mythic\_plus\_affixes (should be almost future proof)  
- classic: WeakAurasTemplates was not moved to correct folder  
- BuffTrigger2: Fix ghost states  
    Fixes: #1486  
- Fix Masque integration with clones and zoom/keep aspect ratio  
    We fixup the texcoords that masque sets if zoom or aspect ratio is  
    enabled. (WHich is a bit questionable, but well it's there.)  
    We used to call ReSkin on the msq group, which would change the skin for  
    all clones and thus remove our fixup. (And would be qudratic)  
    Instead just tell masque to reskin one button, so that we can then fix  
    it.  
    Fixes: #1969  
- Adjust conditions on moving/deleting/duplicating conditions  
    Fixes: #1965  
- Fix multiple display of encounter ids  
- add 'reset entry' button to arrays in user mode  
    Fixes #1928  
- classic: fix event for character points changed  
- AuraBar: Fix modify not modyfying the layout  
    Reset the orientation flag in modify, so that we always set the new  
    layout.  
    Fixes: #1986  
- Trapez -> Trapezoid  
- Add Trapeze To Shapes (#1947)  
    * Add Trapeze To Shapes  
    * Fixed Alpha on Trapeze  
- Add raid mark textures (#1961)  
    * Add raid mark textures  
    * Added global strings for texture names.   
    https://www.townlong-yak.com/framexml/beta/GlobalStrings.lua#12062  
    * Global string for heading added.   
    https://www.townlong-yak.com/framexml/beta/GlobalStrings.lua#1387  
- cache deflated strings  
- force enable WeakAurasArchive  
- Glow: Fix inconsistenies in the naming of the "Custom Color" property.  
    Always use the "Custom Color" as the name, instead of naming it Color  
    in same cases.  
    Fixes: #1951  
- Prevent error on MoverResizer:SetToRegion on nameplated regions  
    This just prevents the error from showing. The error is due to trying to  
    call GetPoint on nameplated attached frame.  
    The actual bug that auras should not be attached to nameplates while the  
    options are open is tracked by #1896  
    Fixes: #1950  
- AuraBar: Fix orientation conditions  
    region:Scale was reseting the orientation to what is set in data,  
    because a negative scale flips the progress bar around.  
    Thus introduce a effectiveOrientation.  
    Reported on discord  
- Add support for hyperlinks in the tooltip  
    If state.link is set use for the tooltip.  
    Fixes: #1952  
- Fix HasTarget condition on switching continents  
    Fixes: #1954  
- fix group type change  
- swallow stacksfunc errors  
    somehow this particular function wasn't being called in protected mode  
    presumably just an oversight.  
    Fixes #1942  
- Enable Vulperas now.  
    Apparently they are playable now.  
- BarModel: Try more force  
    PlayerModel frames continue to be a mess which don't work reliable.  
    So just set the Model again just after SetVisible.  
    Why that helps I have no idea. Why that is not needed for normal models,  
    which I don't know.  
    ¯\_(ツ)_/¯  
    Fixes: #1925  
- Tweak models again  
    Fixes: #1935  
- Fix zone, zoneGroup and ecounter tooltip in load options  
    Apparently the API is still stateful and tied to whatever is open in the  
    encounter journal. E.g. if the dungeon tab is open EJ\_GetEncounterInfoByIndex  
    does not return any data for raids.  
    Circumvent that, by simply iterating the encounters/dungeonds before the  
    encounter jounal is loaded. That is, just after login.  
    Fixes: #1930  
- Initialize aura\_environment a bit before evaluating custom variables  
    Specifally the custom config should be in aura\_env.config, but  
    init should not be run for the custom variables.  
    Do that by introducing a "partly" initialized state, in which basically  
    only aura\_env.config is set.  
    Fixes: #1920  
- Fix simple add case not showing the right state  
    In the complex case, we recreate all states, whereas in the simple state  
    we keep the states as is.  
    But, the call to SetRegion calls modify, which might reset the aura to a  
    base state, so we need to reapply the state.  
    Fixes: #1922  
- Enable the BarModel for Icons too  
    It's now akwardly named.  
    But apart from the "Clip by progress" mode, everything works in the same  
    way.  
    Fixes: #1914  
- lower frequency of ITEM\_COUNT\_UPDATE for Item Count trigger fixes #1933  
- remove babelfish requirement  
    since it's automatic now  
- add ComposeSorts and CompareRegionData helpers (#1907)  
- rewrite Set to not be broken  
    we need data to be non nil and id to be a string in order to archive the data  
    Also, go ahead and use mixin in a few places for slightly shorter code  
    fixes #1918  
- add archive addon + archivist embed  
- fix Alternate Power trigger not active without a first UNIT\_POWER\_FREQUENT event  
- Fix the wrong init function being run  
    Fixes: #1904  
- Use Encounter Journal as a source of the encounter\_ids  
    This ensures that we don't have to maintain this by hand.  
    The only substantial draw back is that this misses the alternate  
    encounter ids for Battle for Daza'alor.  
    That is acceptable.  
    Fixes: #1900  
- Fix the Custom Code Editor for Conditions  
    I somehow missed that I didn't add a url for it.  
    Fixes: #1905  
- Interpret a missing glowType as a standard buttonOverlay  
    Fixes: #1909  
    Fixes: #1908  
- Fix %cost not always being interpreted as %cost and a infinite loop  
    Because if state.cost is nil, it's no longer considered.  
    Thus set it to the empty string.  
    The infinite loop was in parsing %{cost}  
    Fixes: #1902  
- Prevent the next French revolution  
- Use LibClassicSpellActionCount-1.0 to get number of reagents for spells fixes #1849  
- Change default text region custom text update value to match updated subregions texts.  
- Custom Options Author Names Tweaks (#1868)  
    * Fix noninteractive Custom Options fallback author name WeakAuras#1847  
    * Use Custom Options and SubOptions fallback name when name is  
    blank  
    * Match default Custom Options naming scheme with fallback naming scheme  
    * Fix multiline edit box prefixes  
    * Revert "Use Custom Options and SubOptions fallback name when name is"  
    * Revert "Match default Custom Options naming scheme with fallback naming scheme"  
    * Remove fallback name  
- Fix SetMoverSizer trying to set to a nil region  
    Fixes: #1897  
- Bump TOCs for Patch 8.3.0  
- Revert "Remove a call to ActivateChild that is not needed"  
    Turns out it is needed.  
    Fixes: #1893  
- Fix Expand/Collapse and filtering of DisplayButtons  
    Fixes: #1891  
- Fix glow attachment for bars  
- Fix MoverSizer breakage  
    Updating the states while the MoverSizer is resizing breaks the  
    MoverSizer. Because we hide the fake states which hides the region,  
    which aborts the resizing. Fix this by making the WeakAuras.Add from the  
    MoverSizer special. They don't need to do any of the state updating as  
    these cannot have changed from the MoverSízer  
    Fixes: #1884  
- Fix various issues around the visibility of option buttons  
    Not just the reported invisbility after a convert, but a few more in the  
    expand/collapse handling.  
    Fixes: #1884  
- Fix nil error on deleting a trigger  
    This is unfortunate. In pAdd we want to do the following danace:  
    - Collapse all clones  
    - Add the new data to db.displays  
    - Show new clones based on the now set data  
    Unfortunately, even before pAdd sets the data in db.displays,  
    db.display, db.displays already contains the new data as we share the  
    same data table everywhere.  
    And that leads to a error in collapse, which expects there to be a  
    db.displays[id].triggers[triggernum] for a trigger that was just  
    deleted.  
    The right fix would be to make sure that db.displays can only be  
    modified via pAdd, but that's infeasiable.  
    Fixes: #1886  
- Remove the import button  
- remember update preferences for each aura  
    Closes #1149  
- Fix a error if the state doesn't contain a id  
- BuffTrigger2: Use UNIT\_AURA event for multi target tracking  
    In the case that we get a UNIT\_AURA event for a guid that we have a  
    match, try augmenting the information.  
    Somewhat suprisingly this turned out to be trivial, as it's the same as  
    finding a new unit id for a guid.  
    Fixes: #916  
- Fix Thumbnail not being parented to import tooltip  
    Fixes: #1880  
- Fix error on deleting triggers  
    Ensure that we first tear down the states before setting the data.  
    Fixes: #1879  
- Ensure that aura\_env.states always contains a entry per trigger  
    Though the fallback is simply a empty table  
- Fix regression in glow not being visible  
    Fixes: #1878  
- Fix Action Button Glow to look like 2.15.5  
    Depending on the glow type, we actually want to use a base to attach the  
    glow. For the Action Button Glow we use the whole region as we did for  
    all glows in 2.15.5 and until 757ba82b43.  
    That had the issue that the pixel and auto cast shine glows would be  
    misplaced with masque skins, as they need to use the icon and not the  
    whole region as the anchor. So we keep that behaviour for the other two  
    glows.  
    Fixes: #1872  
- Add a Name condition to Generic Triggers that provide a name info  
    Also ensure that we update the available conditions on adding a custom  
    duration/stacks or name function.  
    Fixes: #1875  
- Add a Object Type Flag Check to the Combat Log Trigger  
    Step by step, we allow checking every flag...  
    Fixes: #1874  
- Add a nil check to AddUnitChangeInternalEvents  
    Apparently this can happen from a error trace. But I can't reproduce it,  
    so no idea whether that actually fixes the problem.  
    Asking the reporter has been futile, they won't provide any additional  
    information.  
    Fixes: #1873  
- Fix various issues around fake states  
    * Showing a extra state if selecting the aura instead of a parent group  
    * Showing states with show = false  
    As reported on Discord by nullkomplex  
- Remove code that is no longer needed  
- Fix glow Release  
    We need to actually remove the Glow from the region on Release, since  
    otherwise UpdateSize will be called on Size changes of a reused parent.  
- Fix glow Modernize  
    Apparently the old code didn't entirely agree on what the actual  
    property was named...  
    This doesn't recover from a botched Modernize, which would be possible  
    but complicated. Since this only affects alpha users, I think that's  
    okay.  
    Fixes: #1872  
- Add a magnetic alignment toolbar button and better Icons  
    Icons provided by Exality on Discord.  
    Fixes: #1344  
- add nameFunc to trigger "Spell Known" fixes #1871  
- add Ny'alotha, the Waking City encounter ids  
- Add Relative Offset Property Change (#1866)  
    This replaces absolute positioning.  
- Classic totem (#1863)  
    * classic: use LibTotemInfo for totem trigger  
    * Revert "remove totem triggers of classic templates"  
    Co-authored-by: Benjamin Staneck <staneck@gmail.com>  
- Re-add Range Check to Classic. (#1839)  
    * Re-add Range Check to Classic.  
    * Add dynamic description list of ranges available  
    * Removed Player unit from Range Check  
    * Removed ranges of ranges. Small tweaks to Cache Updater and Desription  
    * Oops  
    * Merge descriptions  
- reposition children of dynamic group on unitframes on GETFRAME\_REFRES… (#1864)  
    reposition children of dynamic group on unitframes on GETFRAME\_REFRESH callback  
- Fix various small issues with Bar glows  
    Thanks to Causese for testing.  
    The fixes are:  
    * Use a more robust approach to react to size changes  
    * If the size is too small, hide the glow.  
    Fixes: #1857  
- Warn about untrackable units in BuffTrigger2  
    Fixes: #1711  
- Warn against too long up times if that prevents scheduling timers  
    Fixers: #1861  
- Model: Don't call SetCamera  
    It seems to break some cases as reported on discord  
- Rewrite Model regions and thumbnail handling  
    Apparently wow can't handle as many model regions as it used to be, and  
    this causes crashes for users on opening their options.  
    Thus optimize how many model frames we create by:  
    * Only creating thumbnails on demand and reusing them per region type  
      Thus instead of creating one model frame per model aura, we only  
      create one per visible model in the options left side.  
    * Using a pool to share the model frames between all model regions  
      Thus instead of having a model frame per region, there's now only one  
      per visible region  
    This together drasticaly reduces how many resources lots of model  
    regions take.  
    This probably breaks a few things, since it's rather drastic change.  
    Fixes: #1819  
- also bump workflow target version  
- toc bump  
- Fix BarModel alpha not working in some cases  
    With the time tested method of poking to see whether randomly redoing  
    things makes it work.  
    In this case, we set the alpha on the parent frame again, after reseting  
    the model in PreShow.  
    Fixes: #1817  
- Point users to twitch support  
    Because this might help them debug this long standing issue.  
    Fixes: #1831  
- Make the title width scale with the length of the version string  
    Fixes: #1837  
- Glow.lua: Don't load old Masque versions  
    Basically do the same version check as Icon.lua, except for the message.  
- Fix FrameStrata for dynamic groups  
    The frame strata for normal auras is done in AnchorFrame, which is not  
    used by dynamicsgroups.  
    Fixes: #1833  
- remove totem triggers of classic templates  
- disable Totem trigger for classic  
- Add "Queued Action" trigger for classic fixes #1628  
- fix typo  
- remove the "Delete" option for groups fixes #1841  
- fix pet\_behavior\_types for classic  
- templates: fix glow  
- Power trigger: update spell cost on UNIT\_SPELLCAST\_SUCCEEDED  
    fixes #1822  
- Classic templates  
- Fix classic check  
    Ref: https://github.com/WeakAuras/WeakAuras2/commit/2e3b1001f5c653b5966fde159a2bfc190949e95f#r36145115  
- Update Issue Template  
- Rename button widget and add GameFontNormal to luacheckrc  
- Fix anchoring of borders/glows on masque skins  
    At least as good as it'll get. So no support for round skins, and  
    skins with big borders.  
- Fix error for condition in options  
- Replace localized raid markers in text with locale-independant strings  
    Fixes: #1404  
- Fix toolbar/search box visible  
    By centrailizing the hide/show code  
- Also use ReplaceRaidMarkerSymbols in Text  
- squash into toolbar  
- Add Raid Markers support to SubText  
    * With the {rt1}-{rt8}  
    WoW automatically replaces those symbols in chat messages, thus in a way  
    this makes it more consistent.  
    And since we effectively support it for chat messages already, we should  
    use the same syntax.  
    This is part one for #1494  
    Part 2 will automatically convert localized input into rt1-rt8  
- Fix WeakAuras.difficulty\_info to have a entry for normal  
- Add more Options to Status/Conditions  
    * Added InGroup  
    * Added Instance Size  
    * Added Instance Type  
    It's kinda starting to mirrow the load options  
    Fixes: #922  
- Add a "toolbar" to the WeakAuras window  
    Currently only contains New/Import.  
    Fixes: #1652  
- Add a total duration check to bufftrigger2  
    Implements one wish from: #1756  
- Add a "hostility" check to the CLEU trigger  
    Fixes: #1810  
- Fix Truncating Fonts after game launch  
    WoW's layout system is strange.  
    Fixes: #1778  
- Add a exact spell id option to the spell known load option  
    The existing behaviour checks for the exact spell id, even though  
    the spell name is shown. Thus the full backwards compatible change would  
    be to add a Modernize for it, but this feels more like a bug fix.  
    Fixes: #1802  
- fix nil error in "Charges Changed (Spell)" trigger (#1828)  
    fixes #1827  
- Use proper callbacks for classic libraries (#1821)  
    * Follow new recommendations of LibClassicDurations for registering events  
    * don't register LibClassicCasterino callbacks in the lib's namespace  
- Classic: Use LibClassicDurations's UnitAuraDirect instead of Un… (#1816)  
    * Use LibClassicDurations's UnitAuraDirect instead of UnitAura  
    fixes #1809  
    * use LCD.UnitAuraDirect  
- Fix %p in Aura Preview sometimes going missing  
    Fixes: #1797  
- Fix overlays not being updated in some edge cases  
    Fixes: #1803  
- Readd a gcd check for Item Cooldowns  
    On classic, wands can cause gcds with > 1.5s with slow wands. But it  
    seems that on classic the item cd and gcd cd seem to always be aligned  
    in those cases. Thus radding the ~= gcdDuration fixes the issue.  
    Fixes: #1764  
- Set Max/Min Progress: Add a relative mode to it  
    I really should clean up the code that deals with min/max progress, it's  
    getting convulted and it's more or less duplicated.  
    Fixes: #1775  
- Totem: Add a pattern match trigger option  
    The trigger name also supports spell ids, thus upgrading it to a  
    pattern match is non trivial. So instead add a separate pattern match  
    option.  
    Fixes: #1788  
- Add WIKI links to TextEditor  
    Fixes: 1616  
- Remove a call to ActivateChild that is not needed  
    Expand already calls ActivateChild  
- Glow  
    Fixes: #1519  
    Fixes: #970  
- Fix border anchoring  
- Remove unused UpdateAnchor from various sub elements  
- fix stance trigger when form checkbox is not selected  
    fixes #1805  
- Fix feature request template  
- adjust repair tool buttons  
- ignore desktop.ini  
    the workaround to keep symlinks from being mercilessly deleted by the battlenet app adds files like this  
- add control for hiding reorder entry controls  
- add array entry naming feature  
- Fix weapon enchant shortened name  
    Fix #1787  
- drop branch name from PR artifacts  
    until https://github.com/actions/upload-artifact/issues/22 gets fixed  
- swing timer: fix nil error if no offhand equiped  
- update "Cooldown Progress (Equipment Slot)" for handling amno  
    fixes #1762  
    refresh on UNIT\_INVENTORY\_CHANGED  
    add a stacksFunc  
- cast trigger: don't hide cast bar on UNIT\_SPELLCAST\_FAILED  
    fixes #1766  
- Add VEHICLE\_UPDATE to zone load options  
    In a recent commit I optimized our load handling, so that which auras  
    load state is checked depens on which load options they have.  
    Unfortunately the Ashenvane -> Orgonzoa Teleport does not send any  
    zone related event. Previously this worked via the VEHICLE\_UPDATE  
    event.  
    So as a workaround add that event to the zone related load options.  
    Fixes: #1695  
- Observer new restrictions on Chat Messages introduced in 8.2.5  
    * Point them out in the settings  
    * Be silent on not sending a message  
    These restrictions don't appear to affect Classic.  
    Fixes: #1733  
- BuffTrigger 2: Fix matchCountPerUnit for "Combine Units"  
    Fixes: #1750  
- Swing Timer trigger: handle change of attack speed  
    fixes #1759  
- fix type error in CheckCombatLogFlags when showing fake state  
    fixes #1751  
- use ScanUnitEvents callback for libclassiccasterino  
    fixes #1752  
- Classic: cast trigger fix events registration  
    fixes #1752  
    - most LibClassicCasterino callbacks were ignored by ScanEvents because the events were not added the result table of the "events" function  
    - UNIT\_SPELLCAST\_FAILED was not handled by the cast trigger at all  
- change packaging to now push the wowi version to the same project  
    wowi now supports classic and retail files on the same project  
- fix github actions link (#1749)  
- Check if cooldown is ready after SPELLS\_CHANGED fix #1745  
- Item Cooldowns: Don't compare against actual gcd duration  
    Instad if the duration is less than 1.5, assume it's due to the gcd.  
    Apparently the gcd and item cooldowns are sometimes not exactly aligned.  
    But there shouldn't be any trinket with a duration less than 1.5s  
    anyway.  
    Fixes: #1793  
- Options: Layout buttons on unminimize  
    Fixes; #1744  
- Fix TimerTick running after a aura is hidden  
    Fixes: #1727  
- Fix LoadFunction  
    Fixes: #1730  
- Make WA\_GetUnitBuff work on 8.2.5  
    Fixes: #1734  
- Fix description of "Specific Unit"  
    We in general don't support names for these  
    Fixes: #1736  
- fix nil error in Action Usable spellInRange condition round 2  
- power trigger: invert table use for power types with classic's one  
    this fix "stagger" not shown on retail  
- fix "select" conditions with function for values  
     fixes #1728  
- switch all github links in pkgmetas to https format  
    makes them clickable in the editor. also fix indentation on those files  
- add discord notifications for build failures  
- Update TOC for Patch 8.25  
- fix nil error in UnloadAll #1723  
- fix ranged swing timer on retail  
- Fix error in UnloadAll (#1722)  
    Fixes: #1721  
- Fix conditions not untriggering in certain conditions  
    The bug was a aura with:  
    * a desaturate condition if spell on cd  
    * a fade out animation  
    On closing the options.  
    In that case, the desaturate condition is now active in the options due  
    to the fake progress we display.  
    On closing the options, we first  
    - collapse all regions. Since the aura has a finish animation, the  
    conditions aren't unapplied immediately, but on finishing the animation.  
    - and then unload the aura  
    - then load the aura, which clears the table that stores which  
    conditions are currently active.  
    Thus, the currently active table and the actual state didn't agree  
    anymore.  
    Fix that by canceling the finish animations on unloading.  
    Fixes: #1720  
- Fix Modernize for auras that don't have a set anchor for text  
    Fixes: #1715  
- BuffTrigger2: Fix maxUnitCount if there are no matches  
    Fixes: #1705  
- Author Options: Fix multiline option author  
    Fixes: #1708  
- Fix ContainsPlaceHolder to consider \n a placeholder  
    Fixes: #1719  
- Fix Spec Role load option.  
    Fixes: #1716  
- fix potential error with text subregion with nil text\_justify (#1710)  
- disable Health trigger overlays in Classic  
- Fix lua error on wrong input into variables (#1701)  
    Fixes: #1700  
- Fix Icon.lua using L before it's defined  
- Use new staticId api from Masque  
    Fixes: #1217  
- Add a default property for Sub Elements Conditions  
    Fixes: #1679  
- Fix Paste Condition Options  
    By using the new ReloadOptions2  
    Fixes: #1696  
- Fix Cooldown ready tracking  
    Fixes: #1691  
- Bufftrigger 2: Fix matching against tooltip on initial scan  
    If we already have the aura data and are matching against a new  
    scanFunc, we need to fetch the tooltip info before running scanFunc  
    Fixes: #1685  
- Model: Fix regression in "unit" mode  
    Fixes: #1683  
- fix nil error in Action Usable spellInRange condition #1697 (#1698)  
- Update ISSUE\_TEMPLATE.md  
- guard against inf/nan in %t text replacement  
    Fixes an issue reported via discord  
- fix packaging for retail  
- enable uploading again  
- use GitHub Actions v2 instead of TravisCI (#1646)  
    * use GitHub Actions v2 instead of TravisCI  
    * notify on failure  
    * disable deploy for testing  
    * cause a failure  
    * blah  
    * maybe  
    * yes ok  
    * really now though  
    * alright, works but disable until there's a DiscordHooks GitHub Actions version  
    * use head instead of base ref for the name of the artifacts zip  
- fix nil error when clicking minimize button #1677  
- Add Experimental Repair Tool (#1648)  
    * whitespace  
    * Add experimental repair tool  
    * tweaks  
    * don't update lastUpgrade on database repair  
    * default to longer width cancel text  
    because Static Popup dialogs don't seem to have a reflow procedure  
    Or rather, the one which exists doesn't take into account the current text on the buttons  
    * pass takeSnapshots bool through Add instead of setting a flag  
- semicolon police  
- don't hide font and font size in the pencil  
    These options are used way too often to hide them, might revisit when `Defaults` lands.  
- don't package modelpaths for WeakAuras classic  
    since we don't support models currently in classic WA  
- Fix typo  
- fix "set parent to anchor" option for custom anchors  
    fixes #1651  
- use min/max/etc for range slider  
    fixes #1662  
- fix error when importing power trigger for stagger on classic (#1664)  
    fixes #1663  
- fix inverse cast trigger force events  
    solve issue when closing options or with load condition in combat  
- force\_events can be a table  
- fix cast trigger events for classic  
- Improve Weapon Enchant Trigger (#1649)  
    * Improve weapon enchant trigger  
    * Fix luacheck warning  
    * Fix weapon enchant not triggering/untriggering properly  
    * Add data migration for weapon enchant trigger  
    * Add shortenedName and enchantID to weapon enchant trigger  
    * Fix weapon enchant trigger shortenedName possibly nil  
    * Remove leftover debug print  
    * Fix comparing enchant ID and add a description  
    * Change weapon enchant tooltip  
    Co-Authored-By: Benjamin Staneck <Stanzilla@users.noreply.github.com>  
- don't load environment of children for custom anchor function (#1626)  
    * don't load environment of children for custom anchor function  
    fix #1622  
    * Also reinitialize the environment if the skipChildren was different  
    * defer groups anchoring with curstom function if login is not finished  
    * Revert "Also reinitialize the environment if the skipChildren was different"  
    * Revert "don't load environment of children for custom anchor function"  
- disable autocast shine for classic fix #1624  
- Use Square\_FullWhite.tga as default for borders  
- Add PVP Talents  
    Fixes: 1527  
- Add Position/Facing/Transform settings to BarModel  
    These are needed, and both apis are needed.  
- Fix errors on entering a path  
    Paths aren't supported, but we shouldn't show a error  
- Disable BarModel for classic  
- BuffTriger2: Fix nameplate group unit somewhat  
    This helps with #1486, but seems to not entirely fix it  
- now that sticky.duration is gone, we can optimize this code path a bit (#1653)  
- Add a text\_justify option to SubText  
    I initially didn't add it, because it's only useful with line breaks.  
    Turn out it only took a few days for a feature request.  
    Fixes: #1639  
- Make SetDurationInfo hack work for stacks  
    Even if it's only called on trigger update. That hack is sadly to widely  
    used to just break it, and we argueably don't have a feature that can  
    replace it.  
    Fixes: #1635  
- Fix regression in Model animation  
    In the big text rewrite I replace a OnUpdate handler with FrameTick. But  
    since the FrameTick wasn't on the region, it was never called. Thus  
    revert that particular piece of code.  
    Fixes: #1641  
- Model for AuraBar sub element  
    * Can be in front or behind the foreground texture  
    * Can be clipped by the progress  
    There are no options for SetTransform/SetPosition, which limits which  
    models are usable, but the apis are strange, so that's for another  
    patch.  
    The ModelPicker changes are not ideal, the ModelPicker is a bit to  
    married to the Model. Though both issues can be solved if there's a need  
    for finer control.  
    Fixes: #407  
- Add some headers to the sub elements section  
- fix WA\_GetUnitAura for classic  
- fix nil error in stance trigger  
- fix WeakAuras.GetProperties with unknown region type  
    fixes #1643  
- classic: WA\_GetUnitAura return duration & expirationTime from LibClassicDurations  
- fix a bug with combat log trigger arguments fix #1638  
- classic: fix register unknown event in bufftrigger1  
- Fix regression Talent Selected Trigger  
    Fixes: #1631  
- Fix wrong duration for oh enchantment  
- add back the missing true(th)  
- remove last remnants of sticky duration, see our [wiki](https://github.com/WeakAuras/WeakAuras2/wiki/Deprecations) on what to use instead  
- Update .luacheckrc  
- fix options for unsuported regions  
- fix import of unsupported region  
- add region.Update for "fallback" regionType  
- Pause dynamic groups in setAll  
    This has a dramatic effect on how long seting properties in a big  
    dynamic group has. From script took to long to ~1s.  
    1s is still not good, but at least bearable.  
    Fixes: #821  
- Text: Run custom text function in Update  
    Same as for subtexts.  
    Fixes: #1609  
- Fix sorting of DynamicGroups  
    With the text rewrite the call and parameters of ApplyStateToRegion  
    didn't match anymore.  
    Fixes: #1621  
- bossmod triggers: fix arithmetic error if state.extend is nil  
    fix #1625  
- update opdeps for LibClassicCasterino  
- don't watch rune cooldowns on classic  
- BuffTrigger: Don't use the spellcache for creating fallback states  
    As these can also happen in some certain circumstances.  
    Fixes: #1607  
    Fixes: #1614  
- bump internalVersion for stance/form migration fix  
- Fix drawLayer calculation  
    The callers and the function disagreed on how many arguments to pass.  
    Fixes: #1604  
- dynamic group custom sort: improve error message when custom grow function return bad data  
     fix #1598  
- Fix conversion not stopping custom text updates  
    Conversion is such a source of bugs.  
    Fixes: #1601  
- Fix conversion of Form/Stance/Trigger in a edge case  
    Fixes: #1600  
- fix migration  
    As otherwise, 1st text of every icon will always be enabled.  
    Reported a few times on discord  
- Revert "temp fix our locale submissions"  
- set moversizer strata just above region strata  
- transmission: use old method for getting bnetfriend data on 8.2 and classic  
- Treat font tooltips in a special way  
    Don't mention the full path, but only the key. This also makes wow not  
    be utterly confussed on the size of the tooltip.  
    Fixes: #1560  
- Show all text replacments in tooltip  
    Fixes: #1443  
- Don't use deprecated functions  
    Fixes: #1572  
- Fix anchor frame for regions inside a dynamic group  
    If SetAnchorToParent is not set, then self:GetParent() won't return the  
    right frame.  
    I would prefer if the auras in a dynamic group were actually anchored to  
    the dynamic group instead of to the same frame as the dynamic group, but  
    that's a bigger change.  
    Fixes: #1577  
- Fix importing leading to fake timers being reapplied repeately  
    Because importing calls ShowOptions, and SetFakeStates didn't check  
    if it alrady was already called.  
    Fixes: #1581  
- Hide CLEU\_CUSTOM event from custom triggers  
    We internally need to distinguish between custom events, and our CLEU  
    trigger, but that should be invisible to the user  
    Fixes: #1582  
- Fix combined editing in corner cases  
    By assuming that if a path doesn't exist, the whole setting does not  
    matter  
    Fixes: #1584  
- AuraBar: Include Icon in foreground frame level  
- Optimize various calls to ScanForLoads  
    This just optimizes them to do drastically less work.  
    Though some of them are very likely not needed at all, this does not fix  
    those places.  
    This mostly fixes, by making the call not expensive:  
    Fixes: #1185  
- Border subregion: set default anchor to "bar" for aurabar  
- Rewrite Border as a sub element (#1588)  
    * add border subregion  
    * Don't allow creation of more than one border subregion  
    * migrate aurabar border  
    * remove border inset property  
    * fix nil error  
    * rename SubBorder.lua to Border.lua  
    * revert limit creation of one border max  
    * add anchor options for aurabar  
    * Subregions: Show index per subregion type  
    * show index per subregion type for conditions  
    * fix error when selecting a group  
    * keep aurabar backdrop data  
    * move common subregion functions in SubRegionCommon.lua  
    * Add a "Foreground" to the sub elements lists to control framelevels  
    * Fix conversion to ProgressBar/Icon adding/removing aurabar\_bar  
    * remove comment  
- increase moversizer strata  
     fix issue with moversizer not clickable when region strata >= "HIGH"  
- babelfish: generate file list instead of using hardcoded  
- fix typo in  WA\_ClassColorName  
- disable templates for classic  
- don't show error message for unknown spells  
- default to height of 1 (#1585)  
    sometimes options might be merged with differing heights.  
    So resolve this by using 1 as the default height  
- also return empty string if user gives us a junk unit id  
- also don't make WA\_ClassColorName not do what it's supposed to  
- label various custom codes  
    so that the error generated is slightly more readable  
- robust-ify WA\_ClassColor name  
    so that users don't have to do a million error checks before using it  
- move *new* glow feature indicators into subtree  
    Otherwise these'd be considered part of a different tree of options.  
    That would be confusing.  
- remove stale feature indicators  
    All of these are at least 4 months old, and were released in mid April 2019.  
- classic: use LibClassicCasterino for cast trigger  
- classic combo points: fix division per 0 for class with no combo points  
- allow string custom option to give a multiline edit box  
    Fixes #1566  
- Revert "fix import error with escape from < and >"  
- changelog-script: double quote for safety  
- support environment files in the translation script and add it to gitignore  
    also force http1 (-0) in curl until CurseForge fixes their server  
- temp fix our locale submissions  
    REVERT THIS WHEN CURSEFORGE FIXES THEIR SERVER  
- ensure that consistency checks are done on children of auras which thought they were a child  
- grab installed uid after running Add()  
    as Add() may change the uid to ensure uniqueness  
    Fixes #1555  
- enhance parent-child validation  
    Once upon a time, there was an addon called SpeedrunSplits.  
    It was a good addon, used by many, in oldschool WoW.  
    Then, Blizzard decided to make oldschool WoW new again, and a lot of people were very happy.  
    The author of SpeedrunSplits decided to make his addon available for Classic WoW, and again, a lot of people were very happy.  
    But then, it was discovered that SpeedrunSplits broke the WeakAuras database accidentally, and a lot of people were very sad.  
    So, we the developers of WeakAuras will make the database more robust against what broke,  
    And hopefully people will be happy again.  
    ...More seriously, the bug here was that SpeedrunSplits was replacing the tContains function with another  
    which had incompatible behavior, thus confusing SyncParentChildRelationships into thinking that groups  
    were corrupted. This issue has been fixed in SpeedrunSplits beta 2.4 and later, but the damage to the database remains.  
    So, improve SyncParentChildRelationships to detect the damage and repair it.  
    Also incidentally remove the vulnerability in the first place.  
- fix my shit and disable "Garrote - silence" debuff for classic  
- Add some rogue buff/debuff/ability for classic  
    Add some rogue buff/debuff/ability for classic (except poison)  
- Ignore classic section when copying Spells into classic section  
    Ignore classic section when copying Spells into classic section  
- disable some rogue buff/debuff for WoW classic  
- Add UNIT\_FLAGS to vehicle events  
    Fixes: #1550  
- fix non-retail packager replacement  
- DynamicGroup: Anchor normal controlPoints to region again  
    But still apply the group's x and y offset in other cases.  
    Fixes: #1520  
- Add a item equipped load option  
    Because people keep on looking for it there and due to optimizing the  
    loading system, this can be done cheaply now  
    Fixes: #1530  
- Optimize load event handling  
    By storing which auras react to which events  
- Sub elements: Adjust frame levels  
    To be more similar to what was before. It appears the +5 that was there  
    is not needed.  
    Fixes: #1531  
- Increase compability with auras that attached to nameplates via code  
    That was not supported, but in this case the change is relatively small.  
    Fixes: #1528  
- BuffTrigger 2: Fix triggers not activating/deactivating in the same moment  
    That is if we have two buff triggers, then both need to first adjust  
    their state, before we evaluate whether the combination of the triggers  
    is active.  
    Fixes: #1506  
- shut down WeakAuras if it was installed on a target it was not packaged for  
    and also show a message to the user that they did the wrong thing  
- fix load condition error on classic  
- fix libcustomglow repo path  
- CLEU: fix ignored parameter on classic for SPELL/RANGE/DAMAGE prefix  
- CLEU trigger: disable spellId field for classic #1540  
- war stomp reset melee swing timer  
- Add history collection  
    History is a uid-indexed table containing historical information about displays:  
      source: string indicating where this data came from. Possible values:  
        "user": aura was created by the user via the WeakAuras interface  
        "import": aura was imported via WeakAuras.Import (i.e. pasted string or addon channel transmission)  
        "addon": aura was imported via WeakAuras.RegisterDisplay (i.e. an addon requested the addition)  
      data: snapshot of data as it was at last import, or nil if source == "user", and the user has not chosen to save their changes to history  
      addon: if source == "addon", then this string indicates which addon supplied the last import  
      skippedVersions: record of versions that the user has indicated they don't wish to see update notifications for  
      allowUpdates: if false, then WeakAuras will ignore any addon-sourced update requests  
      lastUpdate: UNIX timestamp of the last time the user completed an import for this display  
    Additionally, enforce UID uniqueness for all auras in display. In the future this will be naturally enforced, once all systems have been migrated.  
    But for now, check on every addon load to ensure that the database is sane  
- Cooldown Spell trigger: guard against nil error when copying aura from retail to classic (#1539)  
- classic: removed "Spell Activation Overlay" trigger  
- Cast trigger: only unit=player for classic for now  
    Remove support for LibClassicCast  
    > CLEU don't give spellid anymore, so can't give accurate cast duration  
    > And maintainer of LibClassicCast is not doing any update for a while  
- classic: improve support for libClassicDurations  
- fix import error with escape from < and >  
- fix a typo  
- fix typo in stance trigger  
- default value for 2 columns widget  
- fix stance trigger on retail  
- fix potential issue with UnitFullName returning nil value for realm  
- fix specId load condition  
- add missing LibGetFrame to .pkgmeta-classic  
- rename icon pencil text  
- colorize extra options string for triggers  
- capitalize a few strings and call it extra options for glow as well  
- fix a typo  
- No Texture Tweaks  
- Icon: tweak icon extra options  
- Icon extra settings: show "None" if nothing changed  
- AuraBar: move color settings before icon settings  
- SubRegions: Add Sub Regions => Add Extra Elements  
- SubText: 1. Text => Text 1  
- SubText: Visible => Show Text  
- glow condition: visibility => show glow  
- fix glow identwidth  
- fix subtext indentwidth  
- Allow usage of multi units (nameplate, boss, arena, group) by custom and generic triggers  
     - exemple of event for a TSU: UNIT\_SPELLCAST\_START:nameplate  
- Cast trigger: fix events for nameplates  
- make profiling data accessible from 3rd party  
- add pencil options for icons  
- add ability to set own group icon  
- improve border options layout  
- add ending header line between 2 collapsible groups fix #1465  
    moved and renamed some icon display options  
- Add anchoring to nameplates and unitframes or custom for dynamic groups  
    - require state property unit  
    - new dependency LibGetFrame accesible from WeakAuras.GetUnitFrame  
    - custom function take 2 parameters: frames and activeRegions  
      it return a table [frame or ""][regionData] = { x, y, show }  
      where if frame == "" it anchor to the dynamic group region  
    Add custom anchor options for aura/group, custom function return a frame  
- Use same border options for dynamic group as normal groups  
    Cleaner default border / backdrop settings  
- fix SetItemRef taint  
- remove obsolete migration  
- provide a more informative message when the login thread fails  
    we may also pop up a debug console for the user to copy and paste into the issue  
- merge migrations into one block  
    these were merged incorrectly, one of them should be internalVersion 17.  
    But it's too late to try and correct that now, so just put them together  
- Fix continous anchoring if a anchoring is post poned  
    Fixes: #1495  
- Fix first frame of SubText  
    If the custom text function is set to "Every Frame", that still means we  
    have to run it in Update.  
    Fixes: #1496  
- Add a "Show GCD" option to Cooldown Progress (Item/Equipment Slot)  
    Fixes: #1457  
- Fix WeakAuras.ContainsPlaceholders to correctly handle %2.p  
    Fixes: #1491  
- add 8.2 weapon enchants to templates  
    Closes #1499  
- resort any region which is changed  
    This fixes a problem where trying to use a custom sort on e.g. a buff trigger that sorts by stacks doesn't properly keep the list sorted.  
    Reported on discord  
- add some druid spells  
- Add a advanced spec load option  
    That allows selecting specs across classes. This has come up a few  
    times.  
    Fixes: #1459  
- Conditions: Active trigger check: Don't rely on state.show  
    Because if the dynamic information should come from a specific trigger,  
    weakauras might create a fallback state. In that case state.show of that  
    trigger will be true  
    Fixes: #1455  
- Ensure that we don't run init functions for auras that are not shown  
    Fixes: #1451  
- Fix glow size for non masque users  
    Fixes: #1483  
- Tweak new subtexts  
    * Only add 2 texts to progress bars by default  
    * Don't add a second text on modernize icon, unless it's visible  
    Fixes: #1480  
- Fix SetJustfiyH call  
    The api doesn't do anything if only the justification changed, so ensure  
    that the text also changed.  
    Fixes: #1472  
- Item Count: Make %s return the count  
    Fixes: #1474  
- Fix unit change events for pets  
    The UNIT\_PET event can't be easily used, because the first argument of  
    it is the pet's owner, but the health trigger requires the unit there.  
    Fixes: #1540  
- Generic Trigger: Fix specific unit not showing up in some cases  
    For a specific unit, there are two settings that need to be stored,  
    the flag that the trigger is in specific unit mode, and the specific  
    unit's name.  
    The bufftrigger quite sanely does that via:  
     flag: unit == "member"  
     name: specific\_unit  
    The generic trigger does it via:  
     flag: use\_specific\_unit == true  
     name: unit  
     and if the user selects specific unit in the combobox, the setter sets  
     the flag.  
    This rather stupid, but due to the trigger code then all depending on data.unit  
    being either the unit, or the specific unit's name, this can't be changed  
    without major changes. Thus work around it.  
    Fixes: #1433  
- Fix cooldown showing up if a icon gets reused  
    Fixes: #1422  
- Sanitize attaching texts to aurabars  
    Can happen if a user converts icons to aurabars.  
    Fixes: #1469  
- Fix Copy/Paste Dispaly to not copy display/group settings  
    To no longer copy: URL, version, semVersion, internalVersion and tocBuild  
    Fixes: #1463  
- Ensure the fake PRD frame actually shows up in the options  
- Add PLAYER\_ENTERING\_WORLD to a few status/conditions triggers  
    That is resting, in combat and use vehicle.  
    Ticket-Nr: 1355  
- improve multiselect validation  
    Fixes #1458  
- ensure option key exists before trying to say it exists  
    FIxes #1464  
- classic: ignore modelPicker from minimize button  
- change all sub(0,*) calls to sub(1,*)  
    sub(0,*) is actually not a thing in Lua and only works because it defaults to 1  
- replace SetItemRef instead of HandleModifiedItemClick and SetHyperlink to prevent Interface action failed errors  
    fixes #1456  
- cast trigger: fix cast bar hide on random button press  
- fix classic load conditions  
- styling and use prettyPrint  
- fix ESC key on profiling dialog  
    also add CTRL/ALT/SHIFT+ESC to close the frame as well  
- friendly neighborhood semicolon purge  
- Use UIPanelCloseButton here as well  
- don't try to load ModelPicker frame on classic  
- Revert "install realpath on travis"  
- Switch inputs to custom text function  
    Because that's the order they had previously  
- Fix Modernize code  
- another attempt at fixing packager condition in embeds.xml  
    with this change libclassicdurations & libclassiccast needs to be installed standalone with dev non-packaged build  
- fix wrong packager condition for embeds.xml  
- Rework text handling and introduce the concept of sub regions  
    * This merges the text handling from both icons and aurabars.  
    * And adds it to Textures and Progress Textures  
    * Texts still use their own handling  
    * It adds multiple new anchor options:  
      * For icons a option to anchor directly on the edge  
      * For aurabars a middle and spark option  
      * X/Y Offsets can be set  
    * This removes a feature where progress bar texts would elide instead of  
      overlapping.  
    * This adds shadow options to all texts, that is color, x/y offset  
    * This adds infinite number of texts to each region  
    * This adds a way for custom triggers to provide fake states for the  
      options  
    * This adds text replacements from all triggers via e.g. %2.p  
    * This allows hiding/showing texts via conditions  
    * The Options now show fake states which are created by the trigger  
       systems. This allows custom triggers to create custom states for the  
       options via the OPTIONS event  
    Ticket-Nr: 944  
    Ticket-Nr: 934  
    Ticket-Nr: 550  
    Ticket-Nr: 307  
    Ticket-Nr: 59  
    Fixes: #1245  
    Fixes: #929  
- remove LibRangeCheck-2.0 and disactivate "Range Check" trigger for classic  
- fix embeds.xml & .toc files packaging conditions for classic  
- Cast Trigger: add meta units "group", "arena", "boss", "nameplate" (#1436)  
    They are filter filtered at the event registration level  
    Removed "multi" and added a migration to convert it to "nameplate", multi could be seen as listening to CLEUE which is confusing  
    There is a small regression between previous multi & new nameplate: nameplate listen to NAME\_PLATE\_UNIT\_ADDED and NAME\_PLATE\_UNIT\_REMOVED  
- install realpath on travis  
- WoW Classic compatibility (#1347)  
    * add unit\_events registered with RegisterUnitEvent  
    * convert more generic triggers to use unit\_events  
    * use RegisterEvent if unit is not handle by RegisterUnitEvent  
    * fix Cast trigger UNIT\_TARGET event  
    * no need for a 2nd list of events for fake scan events  
    * add custom code support for RegisterUnitEvent with format EVENT:UNIT  
    * allow to register more than one unit at once for custom code  
    format: EVENT:unit1:unit2:unit3 etc..  
    * Show error message for invalid unitId under the "Event(s)" field  
    * add support for filtering CLEU events before trigger is called  
    and add CLEU as an alias for COMBAT\_LOG\_EVENT\_UNFILTERED  
    syntax:  
    CLEU:SUBEVENT1:SUBENVET:...  
    or COMBAT\_LOG\_EVENT\_UNFILTERED:SUBEVENT1:SUBENVET:...  
    * add CLEU subevent validation  
    * fix Cast trigger caster's target events  
    * prelimenary classic fixes  
    * fix castbar (player only)  
    fix nil error  
    * fix class load condition  
    * disable Threat, DK Rune, Talent status triggers  
    * fix globals  
    * fix missing parenthesis  
    * fix talents load condition  
    * fix race load condition  
    * Spec Role only on live  
    * comment typo  
    * use GetNumTalentTabs and GetNumTalents for talent load condition  
    * fix talent trigger  
    * alternate power trigger removed  
    * Health trigger: removed absorb and incomingHeal  
    * baseUnitId: removed focus, bossX, arenaX  
    removed focus for all unit types  
    item slot: added amno/mh/offh/ranged slots  
    * fix AuraBar thumbnail  
    * Models region disabled  
    * fix stance trigger  
    * added 2 TOFIX  
    * preleminary "Character Stats" trigger fix (TOFIX)  
    * fix WeakAuras.CorrectSpellName  
    * fix "Strength" spelling  
    * Simplify subevents registration  
    Make the built-in CLEU trigger use the same code path as CLEU:subevent  
    * allow use of boolean for event\_prototypes.args[event].enable  
    * properly fix Character Stats trigger  
    * remove debug print  
    * proper fix load conditions  
    * Ensure that trigger\_events is a proper array and doesn't skip any index  
    E.g. UNIT\_POWER:player UNIT\_PET would result in  
    trigger\_events = { nil, UNIT\_PET }.  
    And while no code seems to rely on that being a array, it's bad that it  
    looks like a array in all but a few corner cases, so change it before it  
    becomes a problem.  
    * Change order of parameters for AddUnitEventForEvents/AddUnitEventForUnit\_events  
    Having result in the middle looks odd.  
    * merge events and unit\_events  
    * templates: consolidate all spec  
    keep only known spells  
    add item.classic tristate property  
    * templates: disable items  
    * replace buff, debuff and abilities icons categories with icons usable in classic  
    * cast trigger: re-add unit=target, will use CLEU and GetSpellInfo  
    * Add ranged swing timer  
    * fix WatchUnitChange ignore focus event  
    * use a more resilient test for WeakAuras.IsClassic  
    * fix talent load condition from aura made by templates  
    * templates: don't add spec & use\_spec in data  
    * remove removed texture from texture browser  
    * replace default icon and region icon for texture & progress texture  
    what we used was removed from data  
    * remove removed textures for templates  
    * Fix Cast Trigger for unit=player  
    * Fix "Power" trigger combo points  
    * fix Item Set trigger  
    * disable "Equipment Set" trigger  
    * fix removed event in bufftrigger2  
    * fix gcd not detected  
    * add new toc version packager replacements  
    * build classic zips  
    We use a different project for WA Classic on WowInterface so we need the different projectID there.  
    * add "tocversion" field to auras on string export  
    * fix rebase  
    * swing timer: added a list of spells for reset mainhand/ranged  
    * fix power & power% filters for Power + Combo Points  
    * Warn in Import tooltip if it's coming from classic and you are on retail and vice versa  
    * Stance trigger: change type to multiselect  
    * templates: add druids individual forms  
    * templates: fix resources not shown + add warrior stances  
    * Add duration to Bufftrigger2 when possible using LibClassicDurations  
    * no WeakAuras.PreShowModels for classic  
    * no effectiveLevel for classic  
    * fixed some load conditions  
    * update swing timer expirationTime on parry  
    * clear parent env when a child is edited or deleted  
    also, refactor ActivateAuraEnvironment slightly  
    Fixes #1389  
    * renamed LibClassicTargetCast to LibClassicCast  
    * fix merge mistake  
    * fix cast trigger for channeling for retail  
    * fix merge  
    * fix embeds.xml  
    * better fix for embeds.xml  
    * add extra pkgmeta file for classic  
    * fix loading of LibClassicCast  
    * fix merge conflicts  
    * make WeakAuras.IsClassic a function  
    * Add warning in import tooltip if tocbuild field is missing  
    * migrate correctly Stance/Form/Aura trigger form field to multiselect  
    * use WeakAuras.IsClassic instead of BuildInfo  
    * add LibClassicCast-1.0 to deps in toc file  
    * raid warning works on classic  
    * fix typo in migration comment  
    Co-Authored-By: Allen Leigh Faure <afaure6@gmail.com>  
    * add comment to explain GetNumClasses changed to 20  
    * don't inlcude Model.lua files with classic package  
    * add type test to migration (so it doesn't break my own SV which is already migrated)  
    * skip delayed WeakAuras.PreShowModels  
    * replaced some textures for classic compatibility  
    * remove unused code in SetModel  
    * optimize WeakAuras.UnitCastingInfo  
    * fix "enable" field handling for conditions  
    * use WeakAuras.UnitCastingInfo for "Power" trigger "showCost"  
    * power trigger: optimize IsClassic check  
    * fix icon for stance trigger  
    * Item Set trigger: update wowhead url for classic  
    * fix GetAdditionalProperties showing properties for disabled properties  
    * fixes for Character Stats trigger  
    * improved race\_types data completion  
    * WeakAuras.SetModel removed pre 8.2 code  
    * fix multi+inverse for stance trigger, and error in talent trigger  
    * Simplify code of resistance charcater stats  
- delete corrupted custom options (#1435)  
- Templates: add some rogue spells  
- Templates: select last option instead of the first  
- Templates: add some warlock spells  
- Fix Model: Show Model of Unit  
    Two bugs there:  
    * The Unit Characteristics trigger was missing WA\_DELAYED\_PEW  
    * Calling SetUnit too "early" doesn't work. Apparently 4s after the  
    PLAYER\_ENTERED\_WORLD is about the time where it can be called.  
- use file id for lich king apocalypse  
    WoWAce Issue: 1350  
- always ClearAllPoints() when updating positions  
    Blizzard is now very finicky about SetPoint() if you haven't used ClearAllPoints() yet  
    That's very annoying, but easy enough to work around  
    by always clearing points whenever we want to update the position of a region  
    WoWAce Issue: 1351  
- swallow errors from GetCenter  
    fixes #1424, but also sort of breaks backgrounds.  
    Maybe someday we might get around to unbreaking backgrounds if somebody complains  
- also guard against errors when setting a sound in conditions  
- wrap PlaySound and friends in pcall  
    We can't know if a given sound path is actually valid  
    and PlaySound complains now if the sound path isn't valid.  
    So just trap all the errors that would be generated.  
    Fixes #1421  
- Update TOC for Patch 8.2.0  
- style profiling window a bit  
- code style tweaks  
- add a close button to the profiling popup  
- fix validate property for event\_prototypes  
    moved WeakAuras.ValidateNumeric to Protypes.lua  
    - fix "Item Set Equipped" itemSetId validation  
    - fix "Power" stagger > scaleStagger validation #1414  
    WeakAuras.ConstructOptions copy validate property for  
    arg.type == "string", "tristatestring", "longstring", "spell", "aura", "item"  
- Templates: add retribution buff  
- add debuffClassIcon state to BuffTrigger2  
- Fix dynamic group animate expand/collapse  
    On canceling the animation, truely cancel it.  
    Fixes: #1394  
- With Group selection, prevent deleting the last trigger  
    Fixes: #1397  
- Fix Conditions robustness with invalid checks  
    Fixes: #1408  
- Fix nil error for Spell Known Trigger  
    Ticket-Nr: 1346  
- add _ABSORBED subevent suffix  
- expose dynamic group helper functions (#1407)  
    This way, users who want to write custom growth/sort functions can use them as building blocks  
- Make PRD attachment 8.2 compatible  
    When the PRD hid, we used to keep the auras at the same position. We  
    can't do that anymore as we can't know where the PRD is positioned since  
    it is a restricted frame.  
    Thus we hide the PRD attachment frame and with it all attached auras  
- Fix circular animate and expand  
- On converting a aura inform the parent group  
- Fix issue with aura\_env being nil if child envs need to be created  
    We need to put aura\_env into the stack before doing the  
    ActivateAuraEnvironment(childId) + ActivateAuraEnvironment() dance for  
    the child, as otherwise the current\_aura\_env won't point to what we want  
    afterwards  
- MoverResizer: ClearAllPoints before SetAllPoints  
    Fixes something. No idea where blizzard thinks we attached it  
    previously..  
- Fix attached to PRD auras  
- Use a simple Show/Hide for the ItemRefTooltip (#1395)  
    A recent 8.2 change forbids use of Show/HideUIPanel in combat  
- delete the currently selected entry  
    reported in discord  
- use the dereferenced index in references  
    Fixes #1390  
- clear parent env when a child is edited or deleted  
    also, refactor ActivateAuraEnvironment slightly  
    Fixes #1389  
- Fix a typo  
    Fixes #1393  
- fix a typo  
- fix GTFO trigger events  
- Change default glow pixel thickness to 1  
- Add custom option groups  
    there are 2 group types, simple and array.  
    Simple groups have their sub options' values located directly in the group's table.  
    So, if you have an simple group with a key foo, and that group has a option toggle with a key bar  
    then you can find the value of bar at aura\_env.config.foo.bar.  
    Array groups have copies of their sub options' values in an array of 0 or more subtables of the group's table.  
    This allows the user to make multiple similar entries with similar data  
    (quite handy for e.g. setting up an interrupt rotation).  
    If you have an array with key foo, and a sub option in that array with key bar,  
    then you may find the values of bar at aura\_env.config.foo[index].bar,  
    where index is an integer which represents the...index of the entry you are searching.  
    Entries into an array always constitute a contiguous range from 1 to #aura\_env.config[key], where key is the key of an array group.  
- Add a description to Player Effective Level  
- Make Auras attached to nameplates work inside Dynamic groups  
    On auras attached to nameplates, we can't call GetPoint().  
    The animation code doesn't actually need to call GetPoint() if the to be  
    animated region provides a SetOffsetAnim function.  
    Thus provide such a function for controlPoints.  
    Also we can't call Get(Left/Right/Top/Bottom), so wrap these in xpcall  
    and assume 0 for their position. This therotically breaks background  
    positioning, but that's incompatible with the hacky attaching anyway.  
    Fixes: 1373  
- Fix autoHide if a state is overwritten with the same expirationTime  
    Since the autoHide code saves a pointer to the state that is to be  
    hidden, we need to reschedule if the timers are different  
    Fixes: #1383  
- Fix Progress Bars size calculation in SetValue  
    The Progress Bars SetValue gets the size of the total bar via  
    GetWidth/GetHeight. But due to Blizzard's layout engine being too lazy  
    to calculate these values both functions return 0.  
    Even though we set the width of the whole region to the correct value  
    before we ask for the width of the bar.  
    Thus, instead of relying on Blizzard's api to layout the bar, calculate  
    the width of the bar from our data and use that one  
    Fixes: #1384  
- Introduce player effective level load option  
- Fix Models that should show on login  
    Models that aren't shown are cleared of their models automatically by  
    wow unless SetKeepModelOnHide is set. Before a1cc2b4, we used to reset  
    the model on various events that cleared models, such as movies and  
    worldmaps. Since that commit we use SetKeepModelOnHide, but it turns out  
    models that are shown immediately on login don't show up.  
    So after login, run PreShow once on each Model that should be visible.  
    Fixes: #1387  
- Fix inserting > 32bit values into the name field  
    This probably affects more places, but I'm too lazy to test them all...  
    Fixes: #1378  
- Action Usable trigger: Fix nil comparison error with spellCount (#1375)  
- WeakAuras.CountWagoUpdates: don't count skipped versions  
- Item Slot Cooldown Progress: Use our own cooldown tracking for durationFunc  
    I can't reproduce the problem described in the Ticket, but the code  
    appeared to have a small race, since we only recheck the conditions at  
    the event.  
    Fixes: #1365  
- use sane values for y offset parameters  
    Fixes #1363  
- Cast: Make the Spell Id option show the spell id  
    Fixes: #1360  
- Fix error if a state has less overlays than colors  
    Fixes: #1356  
- Make whole header of display/group expandable  
    And improve tooltips  
- Make Conditions/Author Options headers clickable  
    Fixes: #1047  
- Add a tooltips to all icons I could find  
    Finally a tooltip for the Apply Template button!  
- fix DBM and BW Timers message filter  
- Create FUNDING.yml  
- fix nil error while inserting in prototype.subevents  
- support CLEU with subevent filtering by generic triggers  
- fix AddUnitChangeEvents for "pet"  
    previous code was assigning a string instead of a table to events.unit\_events  
    also made AddUnitEventForEvents support nil unit  
- don't bother positioning children if there are none active (#1351)  
    * don't bother positioning children if there are none active  
    Fixes #1349  
- Filter generic & custom triggers with CLEU and UNIT_* events before xpcall(data.triggerFunc, ...) (#1325)  
    * add unit\_events registered with RegisterUnitEvent  
    * convert more generic triggers to use unit\_events  
    * use RegisterEvent if unit is not handle by RegisterUnitEvent  
    * fix Cast trigger UNIT\_TARGET event  
    * no need for a 2nd list of events for fake scan events  
    * don't make empty table in LoadEvent  
    * add custom code support for RegisterUnitEvent with format EVENT:UNIT  
    * up to 5 boss uniId  
    * allow to register more than one unit at once for custom code  
    format: EVENT:unit1:unit2:unit3 etc..  
    * Apply suggestions from code review  
    Co-Authored-By: Benjamin Staneck <Stanzilla@users.noreply.github.com>  
    * simplify ScanUnitEvents call on LoadDisaplays  
    * use RegisterUnitEvent with unitLoadFrame  
    * better variable names  
    * Show error message for invalid unitId under the "Event(s)" field  
    * test if unit is valid for UNIT_ events only  
    * add support for filtering CLEU events before trigger is called  
    and add CLEU as an alias for COMBAT\_LOG\_EVENT\_UNFILTERED  
    syntax:  
    CLEU:SUBEVENT1:SUBENVET:...  
    or COMBAT\_LOG\_EVENT\_UNFILTERED:SUBEVENT1:SUBENVET:...  
    * add CLEU subevent validation  
    * fix Cast trigger caster's target events  
    * remove whitespace from merge  
    * fix data subevent not nil when it should  
    * Rename frame.unit into frame.unitFrames  
    Slightly better name  
    * Simplify subevents registration  
    Make the built-in CLEU trigger use the same code path as CLEU:subevent  
    * Fix a small bug noticed while reviewing code  
    * Ensure that trigger\_events is a proper array and doesn't skip any index  
    E.g. UNIT\_POWER:player UNIT\_PET would result in  
    trigger\_events = { nil, UNIT\_PET }.  
    And while no code seems to rely on that being a array, it's bad that it  
    looks like a array in all but a few corner cases, so change it before it  
    becomes a problem.  
    * Change order of parameters for AddUnitEventForEvents/AddUnitEventForUnit\_events  
    Having result in the middle looks odd.  
    * Readd missing AddUnitChangeEvents for UnitIsUnit  
    * Add spaces in for i=1,4 do  
    * Fix WeakAuras.IsCLEUSubevent  
    We need to check all of SPELL, SPELL\_PERIODIC, SPELL\_BUILDING and not  
    just the last one.  
    * fix UNIT\_THREAT events  
    * merge events and unit\_events  
- force enable WeakAurasCompanion  
- fix "Cast" trigger caster's target events  
- CLEU: Add NPC ids  
    Both for source and destination  
    Fixes: #1331  
- Add new feature strings to all Glows conditions  
    As that is needed  
- Fix Spell Known trigger if the spell is unknown on login  
    If we are using a spell name (that is a string), we need to convert it  
    to a spell id not on init, but on each trigger check.  
    Fixes: #1338  
- BuffTrigger 2: Be consistent about the expirationTime of non buffed  
    Treat it as math.huge in all cases  
- Cooldown Progress/Action Usable: Change how spell count is used  
    This breaks some auras, but after some consideration this is needed  
    sooner or later. The breaking change is that %charges and the  
    trigger/condition check don't consider spell counts anymore.  
    %s remains magically: Show charges if the spell has charges or spell  
    counts if the spell count is > 0. This should match what is displayed on  
    action buttons.  
    %charges + trigger check + condition uses GetSpellCharges or if the  
    spell has no charges pretends that a not on cooldown spell has 1 charge,  
    and otherwise 0 charges.  
    This is to e.g. make lava eruption charges checks work consistently  
    regardless on whether the player has the echo talent.  
    %spellCount + trigger check + condition is the new spell count only  
    number. This is to be used with the few spells that are using spell  
    counts such as:  
    * Expel Harm  
    * Marrowrend  
    * Spinning Crane Kick  
    Fixes: #1321  
- Fix getAll/sameAll to special case toggle getters  
    And assume for toggles that nil == false  
    Fixes: #1335  
- Load Make player name and realm tristate  
    I think this has been asked a few times now, and wasn't actually that  
    hard to do.  
    Fixes: #1328  
- Chat: Add a dest name option  
- add tooltip for BigWigs's Emphasized & Cast bar  
- show "desc" tooltip for toggle and tristate  
- re-add DBM Id renamed as "Timer Id" in the ui  
- remove string conversion for bar.count  
- reorder dbm trigger options  
- Renamed "Debuff" to "Targeted"  
- tooltip for "count" and reorder BW options  
- add "count" for DBM and BW  
    add cast to check if a timer is a cast bar for BW  
- renamed colorId to dbmType  
    added dbmColor in state for custom code  
- add BigWigs to .luacheckrc  
- reworked DBM and BigWigs triggers  
    DBM &  BigWigs:  
    - made both more similar and readable  
    - renamed "Adjust Timer" to "Offset Timer"  
    DBM:  
    - fix handling of DBM\_TimerUpdate event  
    - new filter & condition for bar type  
    - removed the "ID" field from trigger  
    - renamed Spell Id field  
    BigWigs:  
    - new "Emphasized" tristate checkbox & condition  
    - removed "addon" field from trigger  
    - new properties added to state for custom code  
      bwBarColor, bwTextColor, bwBackgroundColor  
- fix WeakAuras.CountWagoUpdates (#1334)  
- Fix Custom Sort For Dynamic Groups (#1333)  
    custom sort function string should be data.customSort  instead of data.sort  
- bash is hard, yo  
- drop the travis deploy feature again, it's just not worth the extra trouble and broke more than it fixed  
- let WoWI keep older versions  
- Fix and migration of textures & models for 8.2 API changes (#1293)  
    * Fix region icons for 8.2.0  
    * fix default icon for texture & progresstexture for 8.2.0  
    * fix texture browser for 8.2  
    * fix default model path for 8.2  
    * add file path in comment for textures converted to id  
    * data migration  
    * add GetFileIDFromPath to .luacheckrc  
    * fix texture and progressTexture input widgets  
    * add model migration  
    * model migration and api use timed for 8.2  
    * update modelpicker for 8.2  
    * TODO: after 8.2 replace ModelPaths with WAModelIds  
    * moved all call to SetModel to WeakAuras.SetModel  
    * Don't use removed textures only after 8.2  
    * Use both model\_path and model\_fileId  
    Before 8.2, model\_fileId is generated for old auras,  
    and we continue to use model\_path  
    After 8.2, model\_fileId will be used instead  
    * always use strings for textures  
    * remove debug prints  
    * add pcall on the various functions to set a model  
    * no more need to do migration before validate  
    * OnGroupSelected return both value and fileId  
    * revert change  
    * fix warning  
    * Update WeakAuras/WeakAuras.lua  
    Co-Authored-By: mrbuds <mrbouyou@gmail.com>  
    * Update WeakAuras/WeakAuras.lua  
    Co-Authored-By: mrbuds <mrbouyou@gmail.com>  
    * fix migration with modelIsUnit  
    * fix the merge  
    * fix models & textures for templates  
    * Fix conversion of Display Info id Models  
    * Mark them with a bool flag  
    * Show a additional option on 8.2 to enable that  
    * layout update  
    * revert unnecessary type check  
    * WeakAurasTreeGroup.lua formatting  
    Co-Authored-By: Benjamin Staneck <Stanzilla@users.noreply.github.com>  
    * start version from 1  
    * fork version note & minor formatting  
    * Add old path for textures as comment  
    Co-Authored-By: Benjamin Staneck <Stanzilla@users.noreply.github.com>  
    * formatting  
    * add WeakAurasTreeGroup to bebelfish.lua  
    * missing path as comment  
- Eternal Palace encounter ids (#1327)  
- New glow options for icons (#1311)  
    * Glow Settings group for icons with more options  
    * fix particules  
    * use pencil to collapse instead of whole group  
    * added description for glow options before pencil  
    * fix description format to show decimals  
    * Update WeakAurasOptions/WeakAurasOptions.lua  
    Co-Authored-By: mrbuds <mrbouyou@gmail.com>  
    * Update WeakAurasOptions/WeakAurasOptions.lua  
    Co-Authored-By: mrbuds <mrbouyou@gmail.com>  
    * Update WeakAuras/RegionTypes/Icon.lua  
    Co-Authored-By: mrbuds <mrbouyou@gmail.com>  
    * indent extra glow options  
    * fix indent alignment issue with ACShine  
    * remove not needed function calls  
    * workaround ACShine not updating numbers of dots  
- Fix nil error if spell name is empty  
- try to fix travis deploy stage  
- don't collapse conditions by default for now  
- fix WatchUnitChange sending lowercase unit event #1313 (#1315)  
- remove stale feature indicators  
    Templates from 2.7.3  
    Custom Options, Glow, Cooldown Settings from 2.10.0  
- Add a Exact Spell Id option to Spell Known triggers  
    The old code defaulted to a exact check, but sometimes a check on the  
    spell name is more useful.  
    Fixes: #1309  
- collapsible headers for conditions  
- Expand loaded/parents on PickDisplay  
    So that picking a aura on options open actually shows the aura  
    Fixes: #1298  
- Delay resetting conditions if there's a end animation  
    Ticket-Nr: 945  
- remove mergeConfig  
    it wasn't used anymore.  
    Fixes #1165  
- remove inaccurate comment  
- remove duplicated removeSpellNames  
    this is already done in PreAdd  
- remove  safety checks on animations  
    This is done by PreAdd  
- move travis to a better layout and also deploy to WowInterface  
- add new feature indicator  
    this was actually added in 2.11  
- remove unnecessary AnchorFrame call. (#1300)  
    a bug that is fixed by removing code!  
- Custom Grow & Sort (#1272)  
    * Add Custom Grow&Sort options to dynamic groups  
    * fix stan's nitpick  
    Co-Authored-By: emptyrivers <afaure6@gmail.com>  
- fix Cast trigger with inverse = true not showing correctly after loggin  
- Template: fix victory rush  
- Template: add buff = true for Arcane Power  
- Crucible of Storms encounter ids (#1289)  
- sort .luacheckrc entries a-z  
- move remaining inline luacheck globals to the rc file  
- add discord notifications for when builds fail  
- collect errors from login thread (#1286)  
    # Description  
    This way, people can see errors which appear during the login process and report them to us.  
    ## Type of change  
    Enhancement, i guess  
    # How Has This Been Tested?  
    I checked to see that it works  
- Fix tooltip frame not having a parent for AuraBar (#1288)  
- Fix tooltip frame not having a parent and thus eating mouse events (#1287)  
    This reverts commit dc684ec89f4aca49c6fdc9a6aa39c4692e7eb8cd,  
    and fixes the issue differently.  
    Github-Issue: #1284  
- check icon visibility for tooltip (fix #1283) (#1284)  
    # Description  
    Please include a summary of the change and which issue is fixed. Please also include relevant motivation and context. List any dependencies that are required for this change.  
    <!-- If it is a GitHub ticket, then #ticketNum will be sufficient. A WowAce ticket should include a URL. -->  
    Fixes #(issue)  
    ## Type of change  
    Please delete options that are not relevant.  
    - [ ] Bug fix (non-breaking change which fixes an issue)  
    - [ ] New feature (non-breaking change which adds functionality)  
    - [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)  
    - [ ] This change requires a documentation update  
    # How Has This Been Tested?  
    Please describe the tests that you ran to verify your changes. Provide instructions so we can reproduce. Please also list any relevant details for your test configuration  
    - [ ] Test A  
    - [ ] Test B  
    # Checklist:  
    <!-- These can be checked off after the pull request is submitted, in case you want discussion before they’re completely ready -->  
    - [ ] My code follows the style guidelines of this project  
    - [ ] I have performed a self-review of my own code  
    - [ ] I have commented my code, particularly in hard-to-understand areas  
    - [ ] I have made corresponding changes to the documentation  
    - [ ] My changes generate no new warnings  
    <!-- Is there any additional work that needs to be done? If so, add it to the above list -->  
- Refactor class and race types; drop the "LibBabble-Race-3.0" library  
- regenerate option name and key if necessary (#1281)  
    # Description  
    Fixes #1279  
    ## Type of change  
    - [x] Bug fix (non-breaking change which fixes an issue)  
    # How Has This Been Tested?  
    can no longer reproduce  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [x] I have commented my code, particularly in hard-to-understand areas  
    - [x] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
- fix auras with strata=TOOLTIP highjacking cursor's clicks (#1270)  
- BuffTrigger2: Add code to recheck auras on PLAYER\_ENTERING\_WORLD (#1280)  
    Fixes: #1263  
- BuffTrigger2: multiselect for buffclass (#1266)  
- fix error on data.progressPrecision = -0 (#1277)  
    Fixes: #1276  
- don't require a reloadui for updating uiscale  
- Clear region scripts on hiding options and disable mouse (#1264)  
- Add alignment snapping for auras and groups (#1254)  
    # Description  
    Add alignment snapping for auras and groups  
    Pressing shift ignore the snapping  
    https://i.imgur.com/Yl0rKDs.gif  
    ## Type of change  
    - [x] New feature (non-breaking change which adds functionality)  
    # How Has This Been Tested?  
    - [x] snapping aura  
    - [x] snapping group  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [ ] I have commented my code, particularly in hard-to-understand areas  
    - [ ] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
- Fix stupid errors  
    Ticket-Nr: 1331  
- BuffTrigger2: Fix GUID  
    Fixes: #1257  
- Wrap Anchoring in pcall and show a somewhat descriptive error message  
    Ticket-Nr: 1331  
- add new feature indicator  
- BT2: add matchCountPerUnit text and condition  
- BT2: add debuffClass condition  
- BigWigs trigger: fix error when checking remainingTime  
- tweak thumbnail code AGAIN  
    this time, fix the "random" white bars  
    which come from groups anchored to external frames  
    Also, ensure that the thumbnail is shown after editing  
- remove duplicated fields in table constructors  
    Thanks globe!  
- remove debug print  
- Add Dynamic Group grid layout  
    WoWAce ticket 705  
- Removing the "Hide: Custom" option from most triggers  
    Mostly for cases where it appears to be broken.  
    But also from:  
    Health + Power, where it could technically be used, but I find it very  
    unlikely that anyone is using it. And the interface is very confussion.  
    Keep it for the Chat Message trigger, as I know from past bug reports  
    that it is indeed used.  
    Fixes: 897  
- BuffTrigger2: Fix UpdateMatchData not detecting changes in debuffClass  
    Fixes: #1248  
- change position of movers when they get out of screen  
- add buttons for moving auras by 1 pixel (#1250)  
    # Description  
    Add button for moving auras and groups by 1pxl to help build pixel perfect ui  
    ![preview](https://i.imgur.com/NpRqpqD.gif)  
    Fixes #948  
    ## Type of change  
    - [x] New feature (non-breaking change which adds functionality)  
    # How Has This Been Tested?  
    - [ ] Test A  
    - [ ] Test B  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [ ] I have commented my code, particularly in hard-to-understand areas  
    - [ ] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
    Do you have suggestions for buttons texture, position, and mouseover + button press effect ?  
- template: fix icefury load condition  
- sanitize more input  
- use C\_Texture.GetAtlasInfo instead of GetAtlasInfo  
    GetAtlasInfo will be removed next expansion  
- sanitize more input #1244  
- improve changelog generating script  
- Revert "Make cooldown tracking work like in 2.11.3"  
    Ups, turns out I read how 2.11.3 behaved wrongly.  
    Fixes: #1187  
- Add a bit of profiling around custom text update via "trigger update"  
    Fixes: #1230  
- stricter luacheck on the CI  
- fix botched revert  
- Revert Refactor class and race types; drop the "LibBabble-Race-3.0" library  
- Add more magic to TwoColumnSelectionBox  
    If we have the same entries in multiple secondary lists. And the user  
    switched the first drop down, try to find the same display name in the  
    new second list  
    Fixes: #1228  
- Add PLAYER\_ENTERING\_WORLD to isMounted check  
    Ticket-Nr: 1328  
- Fix PR #1237  
- Refactor class and race types; drop the "LibBabble-Race-3.0" library  
- Use global (Blizzard) strings instead of localized for some types  
- Register the "Fira Mono Medium" font for RU  
    At the same time, update it to the latest version (3.206) from https://github.com/mozilla/Fira  
- Update bug\_report.md  
    update savedvariables path  
- Remove duplicated functions introduced in fa75abcc  
    Fixes: #1238  
- set dynamic group selfPoint again (#1231)  
    To ensure that it is well-defined  
    Fixes #1219  
- optimize and fix parenting issue on WeakAuras.DuplicateAura  
- Allow duplicate on groups (#1226)  
    * Allow duplicate on groups  
    * bump widget minor version  
- Don't use magic "/" in displayname, instead use a array  
- Fix UnitIsUnit check to check both units  
- Make Spell Charges use GetSpellCount in more cases  
    Fixes: #1215  
- Make cooldown tracking work like in 2.11.3  
    If we update a spell cooldown while it's cooldown is shorter than the  
    gcd, the blizzard api will return the gcd cooldown.  
    Thus it's impossible to know whether the cooldown is truely reset, or  
    just hidden.  
    With this patch and in 2.11.3, we just assume that the cooldown reset.  
    Whereas before this patch, we would continue the cd.  
    There isn't really a right answer for this.  
    Fixes: #1218  
- Optimize Unit Change events for units that have no events  
    By creating a separate frame that can quickly check if a unit's guid did  
    change and sends a fake event for just that unit to all interested  
    auras.  
    Creating such a fake event fits the current system, but feels like it  
    might be worth refactoring how the events to aura mapping works.  
    This should fix:  
    Fixes: #1210  
- Reset the smooth progress value just before showing a progress bar  
    So that it starts without a smooth animation.  
    Fixes: #1213  
- Fix models not showing up  
    Fixes: #1211  
- Add a Selection ComboBox that can show a two depth hierarchy  
    And use it for Conditions to make the initial list smaller.  
    This will also be used in the Text refactoring  
    Fixes; #957  
- Fix showing/enabling of various precions/custom text options  
    A few places used a simple find to check for %p or %t. As the ticket  
    points out %{p} is nowadays also a valid syntax.  
    Also a few places used WeakAuras.ContainsPlaceHolders with "c", but  
    that's incorrect since those options should also be shown for e.g. %c2  
    And a few icon options didn't check that the texts were actually  
    enabled.  
    Fixes: #1196  
- Icon: Make "Show Cooldown Text" toggle work with OmniCC  
    Turns out that there's indeed a way to tell OmniCC that information,  
    as pointed via the ticket.  
    Also rename and inverse the option to "Hide Cooldown Text" and make it  
    always visible.  
    We used to hide the option also for the case where the user was using  
    Blizzard's cooldowns but with the text option not enabled. In that case  
    the option obviously had no effect.  
    But, showing the option allows aura authors to use it to disable the  
    cooldown text for all users.  
    For the same setup - Blizzard without Text -, having the option be  
    "Show Cooldown Text" would have been odd, as enabling it would not have  
    shown any text. The renaming fixes that.  
    Ticket-Nr: 1320  
- move data.expanded to our collapsed data paradigm  
    This causes the expanded state of groups in the left column of WeakAurasOptions to be transient  
    and to default to collapsed.  
    Fixes #1184 (in a somewhat indirect way, anyways)  
- Add arc length option  
    Closes #687 (finally!)  
- add limit option  
    Closes WoWAce Issue: 857  
    The underlying support was actually already written for this.  
    Just, now it's actually accessible.  
- don't reset option name and option key  
    Another example of a ticket that can be solved via only removing code!  
    Fixes #1222  
- set option max to the *max*, not the min  
    Reported on Discord  
- guard against nil (#1220)  
    Otherwise unsetting the max/min will brick the aura :p  
- Optimize and rewrite dynamic groups  
    This is a rewrite of the dynamic group code (in particular the sorting and positioning code), in order to do less work.  
    In particular, dynamic groups are less eager to completely reset all of their data.  
    The sorting algorithm is a differential variant of insertion sort.  
    With these changes, [the most popular set of raiding auras](https://wago.io/bfaraid2)  
    would consume an estimated 2-5 fewer seconds of CPU time during an average raid encounter.  
    What's more, since this optimization reduces how much is done each update and not their frequency,  
    this should reduce the amount of stuttering which dynamic groups can cause  
    which is the most visible kind of performance problem.  
- Add PCRE2 to vscode settings  
    because lookbehinds are really useful sometimes.  
- fix padWithLinebreaks (#1194)  
    fix padWithLinebreaks by switching to upstream FAIAP  
- add missing TODO: remove  
- fix tab selection  
- show trigger when click on icon  
- update BT2upgrade icon on ReloadTriggerOptions  
- reminder to remove code after legacy trigger is removed  
- add warning icon on auras with legacy aura trigger (#1053)  
    Add legacy aura trigger update icon  
- Fix Cooldown Ready trigger  
    We used to have 3 different events for spell cooldowns, one for ready,  
    end and changed. But since we are now tracking two different (or event  
    more) different timers, with the charges/cooldown separation, those  
    events don't really work anymore and the Cooldown Progress (Spell)  
    trigger doesn't care anyway.  
    But, the Cooldown Ready trigger does. So reintroduce  
    SPELL\_COOLDOWN\_READY for it. Make it only check the actual cooldown,  
    Fixes: #1323  
- Cast trigger: fix name condition #1172  
- Track spellIds for spells to detect changes in overriding  
    As those typically change the icon/name.  
    This worked previously due to poor luck.  
    Fixes: #1203  
- Set SetKeepModelOnHide for those models that are currently shown  
    Instead of trying to reset them after movies and various other things.  
    Fixes: #1199  
- Remove unused table  
- Fix procs resetting spell cooldowns  
- Fix performance problems due to cooldown tracking  
    Fixes: #1197  
- Fix regression in Spell cooldown tracking  
    Fixes: #1191  
- AuraBar: Add a SetIcon method whether Icon is enabled or not  
    Since the text update depends on that function existing.  
    Fixes: #1176  
- Fix regressions in Cooldown tracking  
    Fixes: #1187  
- Fix userValue generation  
    This is a case of a bug that is fixed by removing code.  
    Unfortunately, this is not as rare as it should be.  
    Fixes #1178  
- Fix Texts width Fixed Width in Dynamic Groups  
    Github-Issue: #1175  
- Merge pull request #1173 from mrbuds/smallfix2  
     Fix cast trigger conditions for spellName, spellId, castType. #1172   
- Templates: add overlayGlow for Lava Burst  
- Fix Spell Charges being overwritten by GetSpellCount  
- Rewrite Spell Cooldown Tracking  
    Some spells have both charges and cooldowns. Until recently we didn't  
    properly support those spells. This commit adds separate tracking of a  
    unified cooldown, the charge cooldown and the normal cooldown. And then  
    two more for rune-less tracking. It allows the user to select what  
    exactly they want to track.  
    Gihub-Issue: #1132  
- Add a way to add collapsed options to triggers  
    Minimal code for maximum effect  
- Reorder Cooldown Progress Options  
- Fix Cooldown + Charges Spells switch from CD to charge CD  
    This would momentarily hide the icon for a frame, because instead of  
    fetching the newest information, we would assume that the cd has just  
    finished.  
    Github-Issue: 1132  
- Try fixing the Item Equipment Slot Cooldown Tracking initial state  
    I couldn't reproduce it, but it's probably a good idea to add the  
    delayed player entering world event to it, since other systems suffer  
    from the same issue.  
    Fixes: #1166  
- fix user mode value retrieval  
    We were incorrectly just checking config[references] for merged stuff.  
    But, config[references] is a table with keys, and we might not have merged all of the keys.  
    So, base the dereferencing on option[references], which is how we build the merged user mode anyways.  
    This has some knock-on effects though, so some more helper methods had to be written.  
    Fixes #1160  
- enforce that max >= min  
    If an author tries to do this now, they will get an unusable control.  
    But it won't cause them to brick their own creation, so that's enough imo.  
    Fixes #1152  
- Fix cast trigger not untriggering correctly  
    Fix UNIT\_TARGET event registered when not needed  
- BuffTrigger2: Fix Multi Target clearing too much data  
    On a CLEU SPELL\_AURA\_REMOVED too much data was removed, so that later  
    events would not correctly know what to remove.  
    Fixes: #1159  
- add current tier zoneId and zoneGroupId list in tooltips #1151  
- Fix collapse setting on multi selection  
    The basic problem is how the display tab works on multi-selection. If we  
    have a multi selection we generate a ace options table for each  
    individual aura and one for the group.  
    The group one gets all functions removed and replaced by *all methods.  
    So, if we have two auras with different collpase states, their image  
    function will return different images, and thus the imageAll can't find  
    a common image and will return no image.  
    This commit "fixes" that by not making the collpase state a per  
    aura setting, but one shared by all auras.  
    Github-Issue: #1088  
- Wrap more functions in xpcall  
    Fixes: #1146  
- Templates: sham elem buffs update #1153 (#1154)  
    # Description  
    Please include a summary of the change and which issue is fixed. Please also include relevant motivation and context. List any dependencies that are required for this change.  
    <!-- If it is a GitHub ticket, then #ticketNum will be sufficient. A WowAce ticket should include a URL. -->  
    Fixes #(issue)  
    ## Type of change  
    Please delete options that are not relevant.  
    - [x] Bug fix (non-breaking change which fixes an issue)  
    - [ ] New feature (non-breaking change which adds functionality)  
    - [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)  
    - [ ] This change requires a documentation update  
    # How Has This Been Tested?  
    Please describe the tests that you ran to verify your changes. Provide instructions so we can reproduce. Please also list any relevant details for your test configuration  
    - [ ] Test A  
    - [ ] Test B  
    # Checklist:  
    <!-- These can be checked off after the pull request is submitted, in case you want discussion before they’re completely ready -->  
    - [x] My code follows the style guidelines of this project  
    - [ ] I have performed a self-review of my own code  
    - [ ] I have commented my code, particularly in hard-to-understand areas  
    - [ ] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
    <!-- Is there any additional work that needs to be done? If so, add it to the above list -->  
- Fix Glow animation missing if the aura was hidden but glowing  
    Fixes: #1140  
- Fix duration function not wrapped in xpcall  
    Fixes: #1146  
- Fix groups making childs misaligned  
    By making the invisible group frame 2x2 pixels instead of 1x1 pixels.  
    That should actually not change anything at all, but somehow it improves  
    the child layouts.  
    Github-Issue: #1103  
- cast trigger with unit=multi: check if sourceGUID match before hiding state #1142  
- fix cooldown setting disabled for timed duration #1141  
- fix ingame transmission  
    WoWAce Issue: 1309  
- reset glow on size change  
    Fixes #1123  
- don't show a default value for unit type condition #1135  
- Fix masque integration  
- Partily revert 7f62571f434c, Masque integration fixes  
    Masque doesn't unskin buttons correctly.  
    We reuse buttons e.g. two buff triggers checking for buffs on  
    focus/target will reuse the same button. If a button was already in a  
    group and we change the masqueId and thus want to add the button to a  
    new group, but the new group is disabled, masque applies a "Blizzard"  
    skin.  
    So revert that for now, and report a bug for masque  
    Fixes: #1127  
- Preview sound on the right channel  
    Github-Issue: #1119  
- Add a spellId condition to buff trigger 2  
    Github-Issue: #1125  
- Fix Cooldown setting not being enabled for some settings  
    The aura in this case is a totem trigger, which a enabled but hidden  
    inverse setting.  
    The generic trigger's CanHaveDuration controls whether the Cooldown  
    setting is enabled or not.  
    For a status/event trigger, it checks if the prototypes contains a  
    durationFunc or the canHaveDuration bool, but also checks if inverse is  
    enabled. For most triggers, enabling inverse means there's no timing  
    information. (E.g. not on cooldown.)  
    Thus the bug is that CanHaveDuration didn't take into account that the  
    inverse setting is hidden.  
    But, I don't think handling inverse magically in CanHaveDuration is a  
    good idea, so instead of fixing it by checking that the inverse setting  
    is hiden, simply don't check for it at all.  
    That means the Cooldown checkbox will be enabled even if doesn't do  
    anything in a few more cases, but makes CanHaveDuration depend on less  
    magic.  
    Also refactor CanHaveDuration to be easier to read.  
    Github-Issue: #1120  
- Fix Show only if Buffed templates for multi  
    Fixes: #1121  
- add Reaping M+ affix  
    Fixes #1128  
- change buildTime format  
- add WeakAuras.buildTime and remove WeakAuras.projectDateInt  
- add a space  
- guard against invalid inputs to auraspellids  
    fixes #1107  
- Fix a few issues around MSQ integration  
    We need to fetch a new group if our id changed. Also use a id that is  
    only unique per id, instead of reusing frameId.  
    FrameId is unique over all frames, but that hurts the masque  
    integration in that it creates new groups per icon in a cloning trigger.  
    This used to work because the frameId algorithm didn't acutally assign  
    unique ids until recently.  
    Github-Issue: #1111  
- Tweak GetSpellCooldownUnified again  
    To always return the charges if GetSpellCharges returns anything.  
    Github-Issue: #1112  
- Fix Bloodlust Heroism templates  
    Were broken by the introduction of buff trigger 2  
- Fix duration template  
- add warning for duplicate keys  
- add separator option type  
- reconfigure user mode to merge options  
- add projectDateInt packager replacement  
- adds battle for dazar'alor raid trinkets  
- improve coroutine error handling  
    So that we can actually see the problem  
- fix feral spirit and starfall duration templates  
- add duration trigger to some templates  
- add support for static duration on spell success  
- status cast trigger: fix handling of PLAYER\_FOCUS\_CHANGED  
- add stamina, blocktargetpercent, armortargetpercent  
    rename movement speed  
    add event for player moving and target changed  
- removed block rating  
- New status trigger "Character Stats"  
- Update README.md  
    add companion link  
- add height controls to space option  
- add duplicate button  
    inserts a copy of the option directly below. Also basically doubles as an "insert here" button, if you didn't plan on making a plane jane checkbox anyways.  
- fix default values for multiselect  
    GitHub issue #1092  
- Migration did not update "version" if field was already set  
- add Battle for Dazar'alor encounter ids  
    Closes #1086  
- fix nil error in version comparison  
- add formatting to select/multiselect display names  
- change multi-select resolution to favor collapsed groups  
- update visibility on conversion between regionTypes  
    Fixes #1083  
- remove new feature indicators on old features  
- use boolean value for "notCheckable" and "notClickable" menu options  
- fix wago menu at same position for auras and groups  
    rename "Ignore this Update" to "Skip this Version"  
    rename "Stop ignoring this Update" to "Don't skip this Version"  
    show skip version option, and update option, only if aura as update data  
- Fix generating clones for states that are removed  
    Fixes: #1082  
- Fix GetFrameLevel after a aura rename  
    Instead of capturing id at the the initial SetRegion call, use  
    region.id, which will change if a aura is renamed.  
    Fixes: #1069  
- Add a option to ignore the SpellKnown check  
    As that prevents checking e.g. battle rezzes.  
    Github-Issue: #1073  
- Allow custom options to format text  
    using the blizzard style pipe format patterns  
- fix Copy URL and Set Description  
    Fixes #1076  
- index the correct table when shunting anchor -> arrangement  
    /facepalm  
- tweak name auto-generation  
    This also uses an existing translation phrase, which is nice  
- fix up/down disablefuncs  
    index is the wrong thing to check, optionID is the thing we want  
- fix missing config value validation  
    Reported on Discord  
- add multiselect option  
- set LDB type to launcher #1068  
- Tweak check for insignificant cooldown to <= 1 instead of <1  
    Fixes another issue noted in:  
    Ticket-Nr: 1303  
- change changelog script again so versions show up as we want them to  
- Fix Shield of the Righteous cooldown tracking  
    Some spells like SotR that are not on the gcd have a small ~1s  
    cooldown to prevent the user from accidentally triggering it multiple  
    times.  
    Since 6160b7b we prefer showing the GetSpellCooldown instead of  
    GetSpellCharges, but that isn't useful for these minor cooldowns.  
    Thus prefer to show GetSpellCharges if the cooldown is less than a  
    second long.  
    Ticket-Nr: 1303  
- Import: Fix lua error in StringToTable  
    Can happen if the passed in string is not in the right format  
- Add a mirror property for Textures and Progress Textures  
    Github-Issue: #1063  
- fix Copy Settings  
    Because for whatever reason this got missed in the original submission.  
    Also fix the HasUpdate method.  
    Fixes #1051  
- add uid to old data when updating  
    This is actually a long-standing bug that needs to be fixed for a few months before we can automatically generate a uid for all existing auras  
- don't automatically assign a uid to existing auras just yet  
    As it seems that this is premature  
- Ensure that childs have the right parent  
- Only copy config once  
    Fixes #1057  
- Update Import API  
    Fixes #1029  
- Change fallback icons/names for BuffTrigger 2  
    Always fetch the fallback icon on updating a no state match.  
    This more closely matches what the original BuffTrigger did.  
    This whole fallback icon/name code is fragile, this fixes a issue where  
    after the spells e.g. different specilization, different talents, have  
    changed the fallback icon would never update.  
    It now updates at the next time the aura is not active (or a UNIT\_AURA  
    event).  
    Github-Issue: #1059  
- Remove Workaround for Ascendance + Lavabursts speecial case  
    This seems not to be necessary anymore.  
- Fix GetSpellCooldownUnified for Rune of Power  
    Rune of Power is a special case:  
    * It has multiple charges which can be retrieved by GetSpellCharges  
    * But if using the second charge a 10s cooldown is triggered.  
      (This does not happen on the last charge)  
    * And people expect the spell cooldown to show in that case, which  
      is what a action button would show.  
    So reorder GetSpellCooldownUnified to first check GetSpellCooldown  
    and only fallback to GetSpellCharges if there's no cooldown.  
    Github-Issue: #1060  
- Show semver version from Wago if available + fix changelog display (#1058)  
    * fix error in changelog display  
    * Show semver version on Update icon tooltip  
    * Show semver version on Import tooltip  
    * Show semver version on aura button tooltip  
    * bump widget version  
- fix cast trigger remaining time #1054  
- Fix ordering of options on multi-selection  
    We merge the options of various different region types with a simple  
    union, thus if e.g.:  
    Icon returns  
      icon.__index == 1  
      position.__index == 2  
    And Aurabar returns  
      aurabar.__index == 1  
      border.__index == 2  
      position.__index == 3  
    Then the merged list will contain  
      aurabar.__index == 1  
      icon.__index == 1  
      border.__index == 2  
      position._index either 2 or 3, depending on which gets unioned last  
    This means that fixMetaOrder can not figure out which of border or  
    position should come first. (It does that correctly only due to sorting  
    border/position alphabetically.)  
    Fix that by usign the same __index for Position and Border settings.  
    This is not ideal, but the correct algorithm is rather complicated.  
    And keep the api stable, as the stop motion plugin depends on it.  
- Fix Textures being wonky  
    Apparently in 8.1 some snapping code was added to Textures and enabled  
    by default.  
    Thus use SetSnapToPixelGrid(false) + SetTexelSnappingBias(0) to diable  
    that.  
    At least to me this fixes the case I saw.  
    Ticket-Nr: 1287  
- Adjust CheckRange to use the same fallback as the trigger  
    Github-Issue: #1044  
- bump minor of widget  
- Revert "Print a error message on trying to share a aura via guild chat"  
- Revert "Remove the chat filterFunc for guild chat"  
- Collapsible Option Groups in Display tab (#1010)  
    Implements #944 for the Display tab  
    ## Type of change  
    - [x] New feature (non-breaking change which adds functionality  
    ## How Has This Been Tested?  
    Please describe the tests that you ran to verify your changes. Provide instructions so we can reproduce. Please also list any relevant details for your test configuration  
    - Create a new aura, and then click on the display tab  
    - You will see that the headers for each group include a button which, when clicked, will cause the group to collapse down to just the header.  
    ## Work Remaining:  
    - [x] Verify that multi-select integrates nicely with collapsible option groups  
    - [x] Self-review:  
    	- [x] Conform to Style Guidelines  
    	- [x] Comments, commit messages, & documentation explain the changes properly  
    	- [x] No new warnings  
    	- [x] No known regressions  
- Stop showing update icons on every child of a group when possible (#1046)  
    # Description  
    If group has an update, don't show icon on childs with same source  
    refactor display of update icons and menu in button:RefreshUpdateIcon()  
    if button is part of a group, RefreshGroupUpdateIcon will do it  
    initializing update icons/menu after all buttons are created  
    ![preview](https://i.imgur.com/c1YaVnN.gif)  
    ## Type of change  
    - [x] New feature (non-breaking change which adds functionality)  
    # How Has This Been Tested?  
    Test ignore next version, ignore all, stop ignoring on  
    - Top level aura  
    - Group  
    - Aura inside a group  
    - move an aura from source "A" into a group with source "B"  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [x] I have commented my code, particularly in hard-to-understand areas  
    - [ ] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
    It might be good to add sub co-routine for the initialization  
- Rewrite mount check for Status/Conditions trigger  
    We used the MOUNT\_UPDATE event which fired too early and thus needed  
    some code to workaround that.  
    It seems, since then a new event was added that fires at the right  
    moment.  
- Fix smooth progress bar behaviour with inverse  
    There were two separate issues:  
    * On Inverse we need to also use SetSmoothedValue instead of SetValue,  
      so that the SmoothProgressBarMixin takes that into account.  
    * Also on SetInverse for a smoothered progress bar setting the value  
      to 1 - GetValue() is not the same as 1 - targetValue, thus store the  
      target value  
    Github-Issue: #1038  
- Make Dynamic Groups Hybrid Checkboxes single column again  
    Github-Issue: #1021  
- make RefreshGroupUpdateIcon iterate only on its children  
- Fix SetRegion hiding groups  
    In 1779683 SetRegion was changed to hide all regions initially.  
    While auras are shown/hidden after processing a trigger update, groups  
    are unaffected by that and need to be always visible.  
    Argueably they should the check the status of their children, but that's  
    bigger change, so just revert it for groups/dynamicgroups.  
- template: fix aura active = glow when trigger use Show On = Aura Found  
- Teach SetRegion to create regions initially hidden  
- BuffTrigger2 "ownOnly" also match pet as source  
- fix Call Lightning template  
- Icon region: use cooldownSwipe for spells with charges  
- remove duplicated function  
    why did we have this?  
- guarantee uid on all auras  
- fix migration error  
- match companion data with uid instead of url  
    moved update matching to HasUpdate()  
- check that WeakAurasCompanion is loaded before RefreshGroupUpdateIcon  
- add skipWagoUpdate & ignoreWagoUpdate to WeakAuras.internal\_fields  
- move version from wago url to it's own field and bump internalVersion  
- add an indicator on Groups to show if there is an update from Wago in his childs  
- Remove the chat filterFunc for guild chat  
    Since Blizzard broke that.  
- Print a error message on trying to share a aura via guild chat  
    Not entirely fool-proof, since the user can change the chat type after  
    inserting the link, but should catch 90% of all cases.  
    We could rewrite our aura sharing to not use any user chat channels, and  
    only work with addon channels, but I'd guess that sharing via guild chat  
    is a rather uncommon case anyway. Sharing in groups/raids/whispers works.  
    Github-Issue: #1025  
- Remove SetWidth workarounds for texts  
    It seems that 8.1 has fixed most issues with text sizes. I can still  
    reproduce a issue with the original example, but it seems much better  
    than before.  
    Thus remove all workarounds and let's see what breaks.  
    Github-Issue: #1031  
- Fix isStealable check for BuffTrigger 2  
    On updating match data the isStealable flag was always checked due to  
    assigning name to it.  
    And for my benefit on how to reproduce that with one account + one  
    starter account, because it took a while until I figure out how to  
    easily reproduce it.  
    Use a high level priest and and any level 1 char. Buff the level 1 char  
    with Shield or Fortitude, and start a duel.  
    Ticket-Nr: 1276  
- update TOC for Patch 8.1  
- fix ScanForLoads (#1027)  
    # Description  
    Fixes #1026  
    ## Type of change  
    Please delete options that are not relevant.  
    - [x] Bug fix (non-breaking change which fixes an issue)  
    - [ ] New feature (non-breaking change which adds functionality)  
    - [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)  
    - [ ] This change requires a documentation update  
    # How Has This Been Tested?  
    - [x] Load SavedVariables from #1015, note that auras which should be loaded are not on login.  
    - [x] With this change, they successfully load on login.  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [x] I have commented my code, particularly in hard-to-understand areas  
    - [x] I have made corresponding changes to the documentation  
    - [x] My changes generate no new warnings  
- Fix error in LoadEncounterScripts  
- Fix async handling of InitCustomTextUpdate and LoadEncounterScripts (#1024)  
    When those functions are called from the login thread, they should not  
    try to check whether they are alrady deferred but instead just do their  
    job.  
    Achieve that by splitting it up into two functions: One that does the  
    actual work and one that does the optional deferring.  
    Github-Issue: #1020, #1017  
    Ticket-Nr: 1283  
- dummy commit to trigger locale pull  
- Fix massive memory usage  
    * Don't add various functions to the loginQueue if they are already in  
    there  
    * Don't add ScanForLoads from the loginQueue, it should be called  
    anyway.  
    * Make sure that we run the event handlers for various events, as some  
    of them can happen after the longQueue is empty  
    * Use a while loop to iterate, because we are potentially adding stuff  
    while looping and I don't know whether that's supported.  
    Github-Issue: #1016  
    Ticket-Nr: 1281, 1282  
- Fix login process (#1015)  
    # Description  
    This is a better fix of the login issue introduced with the WoW 8.1 patch (which seems to limit the amount of time that we have to perform the login process to 19 seconds).  
    ## Type of change  
    - [x] Bug fix (non-breaking change which fixes an issue)  
    # How Has This Been Tested?  
    - [ ] Login at 2.10.3 or earlier with this SV file: [8.1SVTest.zip](https://github.com/WeakAuras/WeakAuras2/files/2670700/8.1SVTest.zip) Note the errors that occur, which include "Script ran too Long"  
    - [ ] Login on this branch with the same SV: Note that WeakAuras successfully logs in.  
    # Checklist:  
    - [x] My code follows the style guidelines of this project  
    - [x] I have performed a self-review of my own code  
    - [x] I have commented my code, particularly in hard-to-understand areas  
    - [x] My changes generate no new warnings  
    - [ ] Known issue: With extremely large SV files, there are a few seconds at login where all of the regions will be visible for a short time, before vanishing. This is due to regions being created in an expanded state, and needs to be rectified. But it does not impede the performance of WeakAuras after login, and will appear rarely for the average user.  
- fix PRD regression  
    WoWAce Issue:1279  
- coroutine-i-fy WeakAuras.AddMany  
    Apparently blizzard has shortened the acceptable time for scripts to run at PLAYER\_LOGIN. So, we will Add() auras more slowly.  
    Github Issue #1011  
- Updated Azerite Traits for 8.1 (#1009)  
    * Updated Azerite Traits for 8.1  
    only the ones mentioned here:  
    https://blue.mmo-champion.com/topic/1104471-tides-of-vengeance-update-notes/  
    * forgot monk 8.1 azerite changes  
    * removed blood pact to fix 8.1 template error  
    templates will cause following error when 8.1 hits:  
    https://i.gyazo.com/c553bbd038bc31783d3eb2db2ed27db3.png  
    it was apparently removed and is no longer a buff but a passive instead  
    * remove whitespace  
- update PR template text (#1008)  
- Prepare for collapsible groups (#1002)  
    * introduce meta properties for flattenRegionOptions  
    * remove unnecessary headers from border&position  
    * remove unused functions  
    * remove unused parameter  
    * missing space  
    * remove old headers method  
    * adjust order of operations  
    * remove unnecessary things  
    specifically, regionTypesCount and the extra parameter included in flattenregionOption calls  
- Item Input: Don't validate numbers at all  
    We used GetItemInfo to validate the input, but due to the "recent"  
    changes making GetItemInfo async, this doesn't work too well.  
    So for item ids, just assume that they are valid items. This allows  
    users to always enter items via their id.  
    The right fix would be to somehow wait for the GET\_ITEM\_INFO\_RECEIVED  
    event and then validate. That sounds impossible to do though.  
    Ticket-Nr: 1275  
- Fix SetToolTip for BuffTrigger 2  
    Check that the the state actually contains a unit and buff index, before  
    using it.  
    Additionally make SetTooltip return a bool, so that the calling code  
    knows whether the tooltip should be shown.  
- another try at making PR templates work  
- maybe this makes PR templates work  
- Fix floating point error (#1005)  
    since (2 - 0.1)/0.1 is ever so slightly less than 19, according to a computer  
    This is a slight behavior change, since number inputs will round instead of flooring.  
- create a new general PR template  
- rename PULL\_REQUEST\_TEMPLATE dir  
- fix warnings in CONTRIBUTING  
- Check for tables for default in AuthorOptions (#999)  
    Fixes #998  
- add pull request templates  
- remove ignore & skip wagoUpdate flags when compressing data for export  
- Make frameId unique (#996)  
    The frames are actually created with a "WeakAurasCooldown" prefix, thus checking _G must be done with that prefix too.  
- Wago update support (#992)  
    * added arrows on WeakAurasOptions for update auras from wago  
    * use last format update for data.lua  
     string => encoded  
     version => wagoVersion  
    * add aura name and author from wago to the "Update" button tooltip  
    * fix nil error when WeakAurasWagoUpdate is not loaded  
    * add menu entry for show or hide wago updates  
    * add versionNote to the tooltip (not implemented yet on wago & updater app)  
    * fix update button click  
    * moved title/desc/slug initialisation from ShowWagoUpdate to Button init  
    * show on minimap icon's tooltip how many auras are ready for update  
    WeakAuras.CountWagoUpdates is also use by WeakAurasWagoUpdate addon on init to show this information in chat  
    * fix handling of auras with no version number in url  
    fix version comparison  
    * Changed "Show/Hide Wago Updates" to "Sync/Unsync with Wago"  
    Renamed functions accordingly  
    Strip the aura count from tooltip message  
    * Change update icon and add animation to it  
    * Fix typos  
    * add a menu entry for skipping Wago Update until next version  
    * make submenu "Wago Update" with more clear labels  
    * fix ungrammatical word  
    * add "Update this aura" in "Wago Update" menu  
    make sure callback functions don't set wrong flags on child auras  
    * check if "Update this aura" in menu should be shown on init  
    * change menu labels, and callback function name accordingly  
    * add WeakAuras companion to .luacheckrc  
    * fix a typo in the toc description  
    * bump the minor version  
    * add the new feature indicator to the tooltip entry  
    * style and string changes  
    * Change the update message to be the same as in the app  
- Update issue templates  
- Improve Action Usable trigger by adding the spellInRange condition  
    Github-Issue: #969  
- BuffTrigger 2: Try harder to find a fallback icon  
    So far the fallback icon was only initialized on initially setting up  
    the trigger infos. Since GetSpellCooldown depends on the talents and  
    specs selected this might not work.  
    E.g. login as a Outlaw rogue and a Crimson Tempest aura won't get any  
    fallback.  
    Thus try harder to find a fallback by also looking for the spell in  
    LoadAura and in UpdateStateWithNoMatch.  
    Github-Issue: #985  
- Add a scale option to the Stagger Power  
    As the current default of 100% for the max stagger isn't very useful.  
    Adding stagger to the Power trigger was probably not the right choice,  
    but this should make the it more useful.  
    Github-Issue: 980  
- Use a unicode code point from the private use area  
    As that's a better choice  
- Fix WeakAuras.RemoveCollapsed  
    The collapsed data structure might be sparse to to default values being  
    used, thus we can't use tremove to remove entires  
- Tweak AuthorOptions  
    * Default to collpased  
    * Add alpha to Author Options color  
- Fix lua errors for multi bufftriggers  
    Github-Issue: #1271  
- Increase min width/height  
    And ensure that we use them even when restoring from settings  
- fix texteditor crashing on PTR - ticket #971  
- fix regression with inversed castbar  
- Fix tooltips of specific unit  
    Bufftrigger 2 claimed that it supported names, and Bufftrigger 1 didn't.  
    That's the reverse of the actual situation.  
    Github-Issue: #982  
- Fix handling of Maximum Progress for 0-duration progress  
    0 duration should lead to a empty progress, even if max progress is  
    set.  
    Github-Issue: #981  
- Add a "(Advanced)" to Trigger State Updater to stear people away from it  
    As it is indeed a bit more complex than the normal custom triggger.  
    Github-Issue: #975  
- Remove code that checks player buffs on getting a UNIT\_AURA vehicle  
    I'm not sure what the correct way to handle vehicles is for  
    bufftriggers, but just removing this code fixes a issue.  
    On entering a vehicle we get two UNIT\_AURA events, one for vehicle and  
    one for pet. Both events happen in the same frame.  
    At the first event, UnitAura returns no auras for the player.  
    At the second event, UnitAura returns the auras for the player.  
    This is rather strange, so for now just ignore those events.  
    Ticket-Nr: 1270  
- Fix regressions in Castbar  
    Inverse the castbar for normal casts, because that's how it was before.  
    Remove UNIT\_SPELLCAST\_FAILED/UNIT\_SPELLCAST\_FAILED\_QUIET again.  
    Those events are used to signal that a spell cast could not be started, and that won't affect the currently cast.  
- Extend CONTRIBUTING guidelines to include some code standards (#977)  
    * Extend CONTRIBUTING guidelines to include some code standards  
    * Update CONTRIBUTING.md  
    Co-Authored-By: emptyrivers <afaure6@gmail.com>  
- cast trigger: slight rework, add multi, auto-clone and target options (#857)  
    Github-Issue: #817   
- Change how cloneIds for cloning are dertermined  
    The issue in the linked ticket is that states cloneId are just a number  
    that gets incremented for each match. Thus if we go from 2 matches to 1  
    match, the second state gets removed. This can be either match.  
    Improve that, by using se unit+spellId as the cloneId, so that auras  
    keep reusing their states even if their index changes,  
    but also different auras don't reuse states.  
    The same problem still remains for cases where a unit can have multiple  
    buffs/debuffs with the same spellId, but that should be rare and there's  
    not much we can do to distinguish them.  
    Github-Issue: #974  
- Fix background offset for circular progress with start/end angles  
    Ticket-Nr: 1269  
- Make right side only 25% wider  
    And make it all derive from WeakAuras.normalWidth, so that just changing  
    that value will adjust everything.  
- adjust trigger.unitExists option name (#976)  
    Since 'invalid unit' can mean either nonexistent unit,  
    or that the unit exists but is not a valid target for the tracked aura.  
    So, explicitly call it a nonexistent unit, instead of just invalid.  
    Reported on discord.  
- fix renaming causing Multipick tooltip to not show (#967)  
    Fixes #966  
- collect alpha value from color option (#965)  
- add new add/delete move up/down and template icons  
    provided by Exality  
- Move Collpased Data out of AuthorOptions.lua  
    Give it a namespace so that multiple places can use it  
- fix global leak  
- add Icon properties for Cooldown Swipe & Edge  
- rename original glow property (#956)  
    This seems to have been a point of confusion amongst users. Hopefully this will improve the UI somewhat.  
    closes #953  
- Don't load custom trigger combination unless needed  
    Where needed is whenever it is actually run/shown in the UI. Somewhat  
    strangely that's possible even with just one trigger.  
    Also improve the error message on a failure to load it.  
    Github-Issue: #954  
- Add debuffClass to state  
- Bufftrigger 2: Fix trigger description on import to "Aura"  
- Treat functions checking for unaffected/all as group member counting  
    This ensures that they are updated whenever a unit is added or removed,  
    even if that new unit has no matching aura data.  
- Revert "refactor order calculation"  
- refactor order calculation  
    mostly so that there aren't dozens of 'order = order + 1' lines everywhere  
- fix width not appearing for description  
    Also tweak ordering of option controls. Tooltip goes before type-specific controls now  
- add space option type  
    which is essentially a shortcut for a description with no text.  
    But space is good for a UI, so it's a good idea to highlight that opportunity to users.  
- Misc (#950)  
    Misc changes/fixes for author options  
- change expand/collapse buttons  
    thanks to Exality  
- Introduce Author-defined Options (#694)  
    The purpose of this is to allow authors who create complex custom auras  
    to provide customization of their code, without requiring the end user  
    to edit code.  
- Fix SetInverse for hidden cooldowns  
    In 30fa1f72d8ce6d8f54093020746167e68a32c874 I applied a workaround to  
    SetInverse of clearing and reseting the cooldown time, because otherwise  
    SetInverse would not show up until the next frame.  
    Setting a Cooldown does make the cooldown visible though, so apply the  
    workaround only if the cooldown is visible.  
    Github-Issue: #936  
- make glow type option visible when glow is disabled  
    This is a bandaid fix to directly address the concerns in the issue.  
    There is a more fundamental issue present, which requires more time to resolve.  
    Specifically, there are several options which show/hide a 'subregion'  
    and also show/hide several sub options for that 'subregion'. So, it is  
    impossible to edit a subregion's sub options without showing it. Before now, this  
    was not an issue, since there was no subregion which you could hide or show in  
    a condition, and also which had sub options. But now the glow subregion does, and  
    I expect that future development will cause this same problem to appear with other  
    subregions.  
    GitHub Issue #915  
- Update README.md  
- Fix resets of conditions properly  
    Github-Issue: #939  
- Edited README.md for concision and readability (#938)  
    * Update README.md  
    * Remove abbreviation in README.md for formality  
    Co-Authored-By: Willexan <xiangzwilliam@gmail.com>  
- Revert "Fix another case where conditions weren't correctly reset"  
- Fix another case where conditions weren't correctly reset  
    I'm still to scared to simply add it to collapse as that is called in  
    far too many places to tell whether that would work correctly. Although  
    it sounds like the right thing to do.  
    Github-Issue: #939  
- fix cross-server transmission after login #934  
    UnitFullName("player") return nil for server when loading weakauras at login  
    moved the call when the information is needed  
- Try to reuse states for Auto Cloning  
    Previously the cloneId was simply the pointer address of the match table,  
    but whenever e.g. a buff with a lower index expired, the match table  
    might change, thus using a different cloneId.  
    In the aura of the bug report, using a different state was noticable,  
    due to having a Sound Effectr On Show.  
    Instad, sort all matches by unit and index and use the index as the  
    state key. This should in most cases make auras reuse all states and  
    even result in states being reused for the same aura in more cases.  
    It's not perfect in reusing states, but should be hopefully not  
    noticeable anymore.  
    Ticket-Nr: 1259  
- Fix talent selected status trigger  
    Github-Issue: #928  
- change minimap hint logic and colors  
- add a game restart warning  
    some people like to update their addon while the client is running, warn them in chat about it  
- add a new help command  
    typing /wa help will show all the slashcommands we have  
- revert a color in the minimap/ldb icon  
- add BAG\_UPDATE\_COOLDOWN event to "Item Count" trigger #929  
- Fix glow color settings on Actions Tab  
    Be extra careful and handle cases and check for non tables as that could  
    have happened with 2.9.0  
    Ticket-Nr: 1258  
- include debuffClass in matchData (#924)  
    also make sure that the data which UnitAura jives with WeakAuras.debuff\_class\_types  
    Fixes #923  
- add a mailmap  
- Add %% for % to text replacement help  
- Tweak text replacement  
    If we end up in percent state at the end, the string ended with a %, in  
    that case append the %  
- forgot to exclude beta branches at a point  
- add some spaces to trigger replacement strings  
- Adjust some BuffTrigger2 options to the Asakawa's suggestions  
    Github-Issue: #915  
- Fix unevent for in GenericTrigger.Add  
    The valid values for unevent depend on the prototypes for the trigger.  
    Fixing up the values in .Add makes the options behave saner, even if  
    technically that's not the nicest place to do that.  
    Github-Issue: #912  
- BuffTrigger2: Fix scanFunc for if matchData has no tooltip  
    Github-Issue: #914  
- ignore beta tags during changelog generation  
- Update README.md  
    add patreon buttons  
- handle sharing of auras with people crossrealm in same group  
- add minimap icon  
- Fix regression in GetNameAndIcon  
    In 687ce9d14d1388f0d91639719064da8a10abd331 GetNameAndIcon was  
    introduced wrapping around GetNameAndIconSimple. But the values from  
    GetNameAndIconSimple were never returned.  
- For PRD attached auras: Make frame.kui the parent not KuiNameplatesPlayerAnchor  
    So that the frames get the right z-ordering  
    Ticket-Nr: 1256  
- Fix various bugs around vehicles and tooltips not updating  
    Github-Issue: 909  
- Fix nil error on group selection  
    I tried to be smart in creating the options only if there are that many  
    names. But that's complicated for group option creation. So don't do  
    that, instead always create the 100 options. This seems to work fine  
    too.  
    Github-Issue: #908  
- Change how text replacements work in a backwards incompatible way  
    Previously e.g. %total could either use state.total or the old basic  
    text replacements. Whether it did the former or later depended on the  
    state.  
    This will now always use state.total.  
    To have that replace %t instead, there's a new "bracketed" replacement,  
    %{t}otal, will replace %{t} with the old replacement, and append otal to  
    it.  
    Since the parsing now no longer depends on whether the state actually  
    contains a variable of that name, a few bugs can be fixed:  
    - Showing the custom function box for e.g. %casterName  
    - Text replacements in the Options dialog showing a strange string  
    Github-Issue: 909  
- Allow up to 100 names/spell ids  
    At least theoretically. I haven't tested more than 20. The actual  
    trigger code shouldn't care about the number, but the options window  
    might get slower with 300 extra controls.  
    Github-Issue: #902  
- Fix layout of exact spell ids  
    By moving name pattern out of the way  
    Github-Issue: #902  
- Fix interaction between crop setting and circular progress textures  
    This mostly reverts commit 5a289439da0a32f6a29328cd9cd52b0f42ee9c26,  
    because it turns out region.scalex and region.scale\_x are meant to be  
    separate. Rename one of them to the more correct crop\_x.  
    Github-Issue: #899  
- Fix regression in trigger options for custom hide  
    Github-Issue: #895  
- Use KuiNameplatesPlayerAnchor for kui nameplates  
    As that fixes the a variant of text vanishing bug described in the  
    linked bug report:  
    A icon attached to the PRD would loose its cooldown text due to zooming,  
    due to how positioning of nameplates in kuis work. The actual  
    KuiNameplatesPlayerAnchor is positioned differently and thus doesn't  
    have that problem.  
    This might change the positions for auras attached to the PRD for kui  
    users, but is probably not too much of a problem.  
    Github-Issue: #648  
- Fix interaction between scaling and circular progress textures  
    Somehow the code was using both region.scale\_x and region.scalex.  
    I'm not 100% sure what the effect of that was, removing scale\_x might  
    introduce some behaviour changes.  
    The main bug then was the circular progress didn't take into account the  
    scaling for the texture calculation.  
    Ticket-Nr: 1255  
- Fix group triggers unloading  
    Group triggers are stored in separate structures, so we need to remove  
    it from there too on unloading.  
    The way group triggers are slightly different from normal triggers for  
    match functions. This is unfortunate, but requires a bit of refactoring to  
    fix, and that's not something that should be done before the first  
    release.  
    Github-Issue: #893  
- tweak glow options  
    Added a description to useGlowColor to explain what exactly it does.  
    Set glow sub options to hide themselves if the main glow option is disabled.  
    Added a default glow color of white (1,1,1,1) to the icon region.  
    GitHub issue #880  
- Update tooltip infos in matchData if we fetched them  
    Initially matchData don't contain any tooltip information, but if a scan  
    function needs the tooltip information, it fetches it lazily.  
    On updating such a matchData, update the tooltip information to check  
    whether it has changed.  
    Github-Issue: 891  
- Fix interaction between MoverSizer and combat  
    Github-Issue: 890  
- Clean matchDataChanged on closing the Options  
    Reported on discord  
- Fix Implementation of Unit Exists  
    Github-Issue: 886  
- Fix layout problem with "Auras missing"  
- Make debuff type available again  
    Enrages are typically buffs, and this enables checking for that  
    Github-Issue: 882  
- Adjust icon to show in the options  
    Though without making the actual icon shown to from the trigger depend  
    on whether the options were loaded or not.  
    Github-Issue: 865  
- shift-selection: fix duplicates in tempGroup  
- set event triggers default value, duration="1" and unevent="timed"  
- BuffTrigger Rewrite (#755)  
    Introduce a new buff/debuff tracking system  
    Instead of each trigger iterating over all auras, keep maps of names/spellids to triggers and use those to cut down on the amount of checking that needs to happen.  
    Also combine fullscan and normal auras, so that the new trigger has a superset of both modes.  
    Enable all of those features for group triggers, and add two more variants of group triggers for nameplates and arena units.  
    Use the same infrastructure also for multi-target tracking, which allows e.g. a combined view of all matches.  
- fix template for "Steady Aim" azerite trait  
- fix for masque users  
    since otherwise, masque users would have no way of using the default glow color  
- also allow glow action to use both custom and default glow color  
- add option to use default color  
    This manifests as a checkbox which, when unchecked, disabled the color selector.  
- drop LibButtonGlow, and show glow color options for button overlay glow  
- add new feature indicators  
    Also change other spots to use WeakAuras.newFeatureString instead of writing the string literally  
- Implement new glow type  
    Credit to Deezo, from discord, for the code that actually performs the glowing.  
- add NewFeatureString string to weakauras object  
- Fix garbarge creation in Icon::UpdateSize  
    Whether that's worth it is debatable, but users are always anxious when  
    kilobytes are used up and in this case there's no good reason for  
    temporary tables to be created.  
    Github-Issue: #867  
- Fix error on showing tooltip for a message filed on a group  
    Github-Issue: 874  
- Fix deactivation of conditions on collapsing clones  
    This needs to iterate over all existing clones and hide the ones that  
    are not longer visible, instead of iterating over the list of new  
    states.  
    Github-Issue: 874  
- Add Divine Purpose to Templates  
    Ticket-Nr: 1250  
- Fix inverse condition not applying immediatly  
    This is a Blizzard bug, which we can prevent by setting a fake duration  
    and then the real one again.  
    Gihub-Issue: 863  
- Fix Talent Selected trigger  
    On first configuration  
- Add textures from Yuuseki provided in the art-contest  
    Licensed under GPLv2  
- Add textures provided by Rehok as part of the Art-Contest  
    Licensed under GPLv2  
- Add Striped Bar by Rehok  
    Provided in the art-contest. Licensed under GPLv2  
- Add Deezo's Full White and Triangle textures  
    Provided via the art-contest  
    Licensed under the GPL  
- Add Asakawa's rainbow bar  
    Provided as part of the art-contest.  
    Liceensed under GPLv2  
- Add sounds by Piffz / Joakim Norström  
    Provided in the art-contest, licensed under GPLv2  
- fix Group & Ungroup with multi-selection (#837)  
- remove 2 redundant table keys  
    thanks to foxlit's Globe for finding these  
- Guard against mistakes in the custom variables input  
    Github-Issue: 838  
- added spell IDs of spirit pets (#833)  
    * added spell IDs of spirit pets  
- fix blank screen when picking an aura that need scrolling to show it's button ticket #819  
- Revert "Tweak dynFrame timings (#818)"  
- On opening the Options: Show the same auras again  
    That solves the workflow where the user is continously switching between  
    editing auras and testing them.  
    Github-Issue: 800  
- Fixed texts attached to the PRD  
    For some reason texts require every parent frame to have a valid  
    geometry. Every other frame type seems to not care about that.  
    Thus in detach take extra care and give the prd frame the last position  
    and size that it had.  
    Github-Issue: 648  
- Tweak dynFrame timings (#818)  
    the current usage will let the frame be redrawn after it has been working for 16 milliseconds. But this doesn't imply 60 fps, since it will go frame update -> 16ms of work from weakauras -> next frame update.  
    So, instead, measure the time difference between last frame, and now. This will ensure that weakauras by itself will not consume too much cpu time per frame, though fps might still drop below 60 if another addon has work to do after weakauras finishes its threads.  
- multi-selection of auras with shift modifier (#812)  
    * multi-selection of auras with shift modifier  
    * multi-selection refactor  
    * make "Duplicate All" use frame:PickDisplayBatch()  
    * make WeakAuras.ShowOptions() use frame:PickDisplayBatch()  
    * fix frame.PickDisplayBatch, 1st element was not included in tempGroup.controlledChildren  
    * fix frame.PickDisplayBatch, frame.pickedDisplay had wrong info  
    * ensure top-level shift-selection is really between 2 top-level elements  
    if multiple auras are already selected, use the last element selected as the first of the selection  
    frame.PickDisplayBatch was clearing previous picks, fixed to add picks to the previous selection  
- templates: new buffId for abilities that put a buff or debuff with a different spellId  
    DeathKnight fix for all specs  
- change tooltip phrase  
    Since UNIT\_POWER is now UNIT\_POWER\_UPDATE  
- Change Zoom property by Condition (#804)  
    Added a zoom option to the conditional property changes  
- Fix Conditions not resetting on unloading auras  
    Github-Issue: 806  
- fixed a trait that is no longer a buff on player  
- Fix a error on Deleting auras  
- fix WA\_IterateGroupMembers again (#798)  
    * fix WA\_IterateGroupMembers again  
    the previous fix caused iterations in a party to have an extra unexpected unit, like party5. For whatever reason, GetNumGroupMembers() is inconsistent with GetNumSubgroupMembers(), and GetNumSubGroupMembers() never seems to count the player itself. Since this iterator already squeezes in the player as party0, we can just use GetNumSubgroupMembers() for all party iterations  
    * remove an extra space  
- removes placeholder trait  
    i used to copypaste that trait and forgot to remove it for beast masters  
- templates: prot-pal added "Redoubt" buff  
- Send ENCOUNTER\_START event triggers with a encounter load option  
    Before 0bfb77d the generic trigger system called RegisterEvent on all  
    the events for all the auras, even if they weren't loaded.  
    In 0bfb77d this was changed to be done on aura loading instead. This  
    means that the generic trigger system is not registered for  
    ENCOUNTER\_START until a aura which registers that event is loaded.  
    To fix that, forward the event that leads to the loading of auras to the  
    trigger systems. (And since multiple auras can load, do a batch  
    processing of auras.)  
    Thus the generic trigger system can recognize that the event is a event  
    that it will registered by loading those auras and was missed due to the  
    on demand registration and handle the event properly.  
    Github-Issue: 262  
- Change GetRange to check unit visibility  
    Github-Issue: 786  
- Fix nil error  
- Added Condition:Attackable Target (#785)  
    Added Condition:Attackable Target  
    Github-Issue: 781  
- implement LibDeflate (#784)  
    implement LibDeflate  
    From my testing, this is approximately a 80% decrease in the size of large string exports, and a further decrease in the size of addon channel transmissions.  
    This implementation is also backwards compatible with legacy strings, which were compressed and encoded using LibCompress, and older versions without LibDeflate will correctly detect that they cannot decode and decompress the data.  
    GitHub ticket #406  
- Fix percent power for Soul Shards  
    Since power is divided by UnitPowerDisplayMod, we need to adjust  
    UnitPowerMax in a similar way to get the right percentage  
    Github-Issue: 782  
- BuffTrigger: Fix ShowOn and Own Only being on the same line  
    Github-Issue: 777  
- templates: more consistent coding style,  
- fix buff "always show" template  
- improved cast template  
     - inverse = false  
     - condition: uninterruptible = red  
- improved Health and Power templates  
     - added types "power" and "health  
     - left text and icon removed  
     - inverse = false  
     - Health show incoming heal and absorb  
     - Power show cost of casts  
- templates: removed shaman's totem category  
- Add a Talent Selected trigger  
    Also support inverse with it.  
    Apparently people like to build complex rotation auras with WA, even  
    if we have rather minimal support for that.  
    Ticket-Nr: 1229  
- Fix Action Usable for unknown spells  
    In 3c7888b19e517facf5869165b23d4bac6d7b2c79 I added a spell known check  
    to Action Usable and Cooldown Progress. With that patch any triggers for  
    unknown spells would always return false.  
    But users were using inverse Action Usable to check if they had not  
    selected a talent. So make Action Usable inverse trigger if the spell  
    is unknown.  
    This patch does not touch Cooldown Progress, because technically the  
    spell is not on cooldown when it is unknown.  
    Ticket-Nr: 1229  
- Fix Conditions not being reset on ReloadAll  
    Github-Issue: 774  
- bufftrigger: use RegisterUnitEvent for UNIT\_PET instead  
- Add Uldir Azerite Trait to Templates  
    Github-Issue: 763  
- Fix BuffTrigger for tracking pet buffs/debuffs  
    Ĝithub-Issue: 768  
- Fix Charges Changed trigger  
    Github-Issue: 766  
- templates: fix 2 wrong spellids  
- may fix migration error  
- Fix regression in remain time check  
    Remain needs to be declared and initialized in the right scope.  
    Ticket-Nr: 1224  
- Fix fallback creation  
    Sometimes we are asked to crate a fallback state without any active  
    triggers, and dynamic information set to first active.  
    Handle that.  
    Ticket-Nr: 1223  
- add a reminder to the toc  
    Every time a new file is added, it also has to be added to babelfish.lua as well or we won't get localized strings in the WowAce app.  
- fix DBM trigger  
- Fix BigWigs trigger  
    Use "[=[" instead of "[[" as string interpolation.  
    Long term we should switch to %q.  
    Github-Issue: 753  
- Guard against base spell being nil  
    Which did happen for me  
- Workaround another Blizzard bug with text handling  
    Or maybe it's the same bug all along.  
    If we change the font in configureText, we need to redo our text  
    calculation and set the "right" width.  
    Somehow this would not correctly justify the text, so the text wouldn't  
    appear in the bottom right/bottom left corner but would have a  
    horizontal offset. (Could be reproduced by switching to a different text  
    positon with the options open.)  
    Setting the text temporarily to a different value and back to the  
    original, seems to unlock something in Blizzard's code. It probably  
    leads to some kind of lazy layout flag being set.  
    After doing that SetJustifyH works together with the width setting.  
    Ticket-Nr: 1220  
- Adjust the alpha of nearly invisible regons while the Options show  
    The patch is pretty small and self-contained, but this is a bit of a  
    strange behaviour to implement.  
    Ticket-Nr: 1219  
- Remove the minus one from GetNumSubgroupMembers() during WA\_IterateGroupMembers() since it now returns a 4 (max) in a party.  
- add new files to the locale scraper  
    thanks @Nightwarden for noticing  
- templates: add some spells for druid  
- remove unused code  
- add FindBaseSpellByID to luacheck  
- move data fields to the correct place  
- Fix a few bugs  
- options re-open with last selection(s)  
    fix error in WeakAuras.Setdragging() called with no parameters and more than one button selected  
- moved iteration on selected items in WeakAuras.SetDragging  
- multi-select dragging show WA logo as icon  
- multi-selection dragging changed to show 1 button "x auras selected"  
    fix "expand button" update of source group  
- updated tooltip for multi-selection  
- while dragging don't show more than 3 buttons  
    added have alpha effect on third button  
- fix picking of single aura drag&drop  
    rename "data" in "children"  
    purge commented code  
- multi-selection drag & drop  
- Modernize Buffed/Debuffed conditions to Active  
    In a recent patch, I removed the Buffed/Debuffed condition for buff  
    triggers that weren't set to show on always, because that check  
    behaves a bit counterintuitively.  
    This adds the necessary modernize code so that cases which worked before  
    work again.  
- fix spirit bomb template  
- fix templates with auras buffed/debuffed  
- Fix Count not zero error for Combat log triggers  
    Github-Issue: 742  
- Fix Cooldown Progress for Void Eruption/Void Bolt  
- print profiling data to frame  
    Adds a popup frame that we print the profiling data into instead of spamming the chat.  
- simply printPrefix  
- make prints prettier  
- Fix imports of pre version 7 auras  
    We used to minimize auras by removing defaults, That requires that  
    defaults don't change, which is not the case. Thus this is a dumb idea.  
    So remove it. There are lots of auras without defaults already  
    exported, so for those readd the right defaults depending on  
    the internal version.  
    This also means that the validate can't happen before Modernize.  
    Github-Issue: 733  
- Check IsSpellKnown for Cooldown Progress (Spell) and Action Usable  
    That is, cache the value of that whenever a spell is watched or we get  
    the spells changed event.  
    Hunters have different pet spells depending on which pet is currently  
    summoned, GetSpellCooldown won't distinguish between spells for  
    currently summoned or unsummend pets. But IsSpellKnown can.  
    Github-Issue: 708  
- Fix custom texts showing up on the wrong aura  
    This can happen if:  
    Two auras are using clones, with one aura having a real custom text  
    function, and another one having a %c but no custom text function.  
    In that case aura 1, will set region.values.custom to a value.  
    And if aura 2 reuses that clone, it won't update region.value.custom,  
    because it has no custom text function.  
    Thus %c gets replaced by a stale value.  
    Ticket-Nr: 1217  
- add a highlights section to the changelog  
- BuffTrigger: Show "Buffed/Debuffed" condition only for ShowOn: Always  
    The Buffed/Debuffed condition is a trap for triggers that are set to  
    only show if buffed/debuffed. Because if a trigger is inactive, all  
    conditions checking for properties of the state return false.  
    Github-Issue: 732  
- Fix Overlay Cost of Cast interaction with SetMaxProgress  
    The overlay for Cost of Cast is displayed relative to the right edge  
    of the progress. Thus for correct display, we need to to have the  
    unnormalized value.  
    The aura in the ticket is for Soul Shards, and limits the max progress  
    to 1 shard. Thus at e.g. 2 shards, a overlay for a 1 shard cost spell  
    would be displayed to the left of the clamped progress of 1.  
    Essentially covering the progress bar. This commit fixes that, and  
    instead the overlay is displayed from the position that a progress  
    value of 2 would have. So essentially to the right of the bar  
    Since that's not exactly what the user actually wants, introduce  
    a Clip Overlays option, which clips any overlays to the size of aura.  
    Github-Issue: 724  
    Ticket-Nr: 1111  
- Ensure that Modernize never decreases the internalVersion  
    Otherwise Modernize code might be run twice  
- Fix regression in Conditions  
    Added a comment to remind me why the code is the way it is. Because  
    I thought this wasn't necessary unless the state changed.  
    Github-Issue: 727  
- Revert back to lazy aura generation  
    Also fix the order to be correct. Since ActivateAuraEnvironment uses  
    GetData, we need to add the data to db.displays first  
- revert back to lazy aura environment creation  
    Unfortunately, pAdd does still need to flag the aura as not initialized (since every change to aura data which would require a re-initialization goes through Add), so we do still need a method to do that, so right now it kind of does both.  
- Templates Batch creation + make new auras in a group (#680)  
    Allow multi-selection with CTRL and create a batch of auras at once  
    ![screen1](https://i.imgur.com/6z6rmqp.png)  
    A "Batch" button appear when you select labels with CTRL.  
    "subType" selection screen  
    ![screen2](https://i.imgur.com/QAGX2TB.png)  
    Click "Create Auras" will make all of them at once  
    ![screen3](https://i.imgur.com/C8ZeGAK.png)  
- Create an Aura Environment for group regions as well.  
    This is necessary because the Animated Expand & Collapse feature animates the dynamic group region itself.  
    This eventually calls ActivateAuraEnvironment, which tries to get the aura environment for the dynamic group.  
    Before, this would fallback to an empty table, which is rather wasteful since a new extra table would be  
    created every frame for every dynamic group which is animating an expand or collapse.  
- remove extra newline  
- move aura\_env initialization flag out of aura data  
- move helperfunctions and aura\_env support into 1 file  
- replace %DATE% placeholder with the actual date  
- remove WeakAuras.Copy  
    As it seems that it's unused throughout the addon. WeakAuras.Duplicate may have used it in the past, but not anymore.  
- convert is-elseif chain to table access  
- simplify LibButtonGlow integration  
    Specifically, by dropping 2 upvalues, and having WeakAuras.Hide/ShowOverlayGlow just be references to LBG's glow method  
- blame next stack level for bad args to RegisterRegionOptions/Type  
    Thus, the error message will point directly at the function which called RegisterRegionOptions/RegisterRegionType with bad args, and it is clearer that the error is on the part of whatever is trying to call the API, instead of WeakAuras itself.  
- remove unnecessary computation  
    1 week is 1 week and the # of seconds in that week won't change, so we can just write 604800 here  
- remove many upvalues  
    Since we are running up against the local value limit, and there's like 20 of them  
- split profile support into separate file  
- Fix TriggerTemplates with triggers from template data  
    In bc77aa5 the internal represenation of triggers were changed,  
    but the data for some templates depended on triggers starting at 0  
    Github-Issue: 720  
- Fix running of conditions functions for fallback states in another case  
    This is another old bug, that was surfaced due to how we treat hidden  
    auras now.  
    In this example, a aura was set to show the states of trigger 1, with  
    trigger 1 not always supplying states, thus fallback states were used.  
    But, the code in ApplyStateToRegion iterated over the non-existing  
    states, and run the conditions function to hide all states, before  
    creating the fallback state and reshowing the aura.  
    This hide+show lead to the glow reapply animation being shown.  
    Fix that, by moving the decision to use fallback states out of  
    ApplyStatesToRegion and thus using not having to do anything special  
    for fallback cases in ApplyStatesToRegion  
    Github-Issue: 721  
- Fix regressions in profiling code  
    Reported on discord  
- delete conditions for trigger before changing optiontriggerchoices  
- Use both columns for multiselect's multiselect widget  
    Ticket-Nr: 1212  
- Fix SetMaxProgress of 0  
    We used to ignore that, but it has it uses as described in the ticket  
    Ticket-Nr: 1209  
- Fix incorrect conditions deactivation for fallback states  
    In 384062e02ac the way deactivate conditions are handled was changed.  
    That surfaced a problem in how fallback states were treated.  
    The case in which the bug surfaced is:  
    A aura should be shown, because over all the trigger activation is true,  
    but the trigger that provides dynamic information is not active.  
    In those cases a fallback state is created and used. This fallback state  
    is created in ApplyStatesToRegion.  
    By not running conditions on all regions, but only on the ones which are  
    hiding, the correct condition evaluation is done in ApplyStatesToRegions  
    Github-Issue: 716  
- Remove outdated TODO  
    Just checked, the encounter id is corrrect  
- Fix regression in Range Check condition  
    The string escaping was done incorrectly.  
    Additionally, the range is stored as a string due to the choice  
    of input widget. Due to how the test is now built, that's passed  
    to the custom check function, so handle it in CheckRange  
    Github-Issue: 713  
- Don't schedule a CooldownScan if the remaingtime can't decrease anymore  
    The aura in the ticket has the remaining time option checked, without  
    a time. Since thus the remainingTime would be 0 and the remainingCheck  
    would be 0, this would lead to excessive ScheduleCooldownScan calls.  
    If the remaingtime is already 0 (or negative), it won't decrease  
    anymore, so scheduling any checks is pointless.  
    Github-Issue: 710  
- fix a typo  
- Fix another regression in condition test functions  
- Fix conditions ui  
- Fix regression in condition checks  
    Turns out I didn't test enough  
- fix extra space in error string  
- Fix BuffTrigger conditions for Buffed/Debuffed  
    Thas last commit changed what was expected of test functions  
- Make conditionTests test functions  
    This is easier to use with custom TSU variables and this should be  
    reusable for adding custom checks.  
- Fix hybrid sort mode with cloning auras  
    If a aura is marked as being listed first, its children weren't  
    sorted at all.  
    Github-Issue: 689  
- Tweak SetTextOnText to not set the text if the text is already set  
    Should fix a strange issue where the text size oscilates.  
    Task-number: 1189  
- Add UnitOnTaxi to vehicel load option  
    And while add it, optimize handling of some events where we are  
    only interested if they are for the player.  
    Github-Issue: 690  
- Conditions: Change what we do for hidden auras  
    For hidden auras, ensure that no conditions get activated.  
    A previous fix simply prevented actions from running for hidden auras,  
    this goes one step further by making sure all conditions evaluate as  
    false for hidden auras. For example, a aura with two triggers combined  
    with AND and a condition on trigger 2 being true, would mark a condition  
    as active even if trigger 1 was not active. This prevented actions from  
    that condition from properly activating.  
    Now, the conditon won't be marked active until the aura is active and  
    thus any actions from that condition will fire at that moment.  
    This is a slight behaviour change but should be better.  
    Github-Issue: 677  
- update hunter spells  
- merge with #666  
- Templates: rename "Cooldowns" to "Abilities" & fixed warrior spellids  
- Templates fixes  
    > fix totem glow  
    > typo in a description  
    > new "overlayGlow" subType for spells with procs  
    > added and fixed a few spells  
- cleanup trigger data (#666)  
    This pull request introduces an internalVersion change, and moves all trigger data into a single table, for ease of manipulation. There should be no change in behavior that is apparent to the end user.  
- replace GetHeight with GetStringHeight  
    Blizzard's anchoring code changed with BfA and it is suggested to use GetStringHeight for FontStrings.  
- localize forbidden() print  
- block xpcall as well as pcall  
- Add default values to Condition properties and fix a few nil errors  
    The default values prevent non-sensical values.  
    The sound/chat propety didn't properly handle if nothing was configured.  
    Github-Issue: 685  
- Overlays: Only use up to 7 drawlayers for overlays  
    Ticket-Nr: 1203  
- Fix Cooldown Ready trigger  
    The default test that spell type options generate does not work for  
    those that allow the exact match option.  
    There's some opportunity to fix that more generally, but that needs  
    a bit more time and testing than I want to invest atm.  
    Ticket-Nr: 1202  
- Unit Characteristics: Fix UnitIsUnit condition  
    A simple forgotten store = true  
    Partial fix for  
    Github-Issue: 677  
- Tweak Spell widget a bit more  
    If the spell is enabled don't show a emtpy but, but always show  
    a "Invalid xyz" message. This is sligthly more consistent and was  
    noticed on Discord.  
- adds worlddrop trinkets to templates  
- Fix PvP Load condition for Characters without a PvP talent selected  
    Github-Issue: 682  
- decrease "new" category label size  
- point out new features  
    Templates  
    Condition Combinations  
    TSU Custom Variables  
    War Mode Load Condition  
    Group Role Trigger Filter  
- add (external) version to metadata category  
- Fix crop for Circular Progress Textures  
    A rare case where fixing a bug involves only removing code.  
    Apparently at some point circular progress textures were meant to use  
    a different crop setting that applied to both x and y. While the option  
    was visible the actual aura used the crop\_x/crop\_y settings shared by  
    normal progress textures.  
    Thus simply removing the superflous option and making the normal crop  
    settings fixes the bug.  
    Github-Issue: 674  
- make the new category labels full width  
    So they fit the row in every locale  
- replace FRIZQT everywhere  
- use the STANDARD\_TEXT\_FONT instead of FRIZQT for the new aura frame  
    On some locales (ruRU for ex) another font is used and the global points to the correct one based on client  
- Fix regression in Copy Conditions to All  
    Github-Issue: 671  
- Fix PvP Talent Load condition  
    For some reason on some classes the order of pvp talents is different.  
    E.g. Monks and Shamans have the talents in a different order.  
    Since we want to use the same order on all classes for the first  
    3 talents, we hardcode the first 3 talents and compare those via  
    the icon ids.  
    Ticket-Nr: 1193  
- Add conditions to normal custom and tsu triggers  
    There's now a additional text field for custom variables for tsu  
    triggers, which expects a table.  
    That table can list simple variables via 3 formats:  
    1) The full format list each variable with its type and display, e.g.  
    {  
      var1 = {  
        type = "bool",  
        display = "Var 1"  
      },  
      var2 = {  
        type = "select",  
        display = "Var 2",  
        values = { ... }  
      }  
    Potential types are bool, string, select, timer, number. This is 1:1  
    the internal data structure that generic triggers use, so it's as  
    powerful as those.  
    2) A short hand notation for non-select variables  
    {  
      var1 = "bool",  
      var3 = "string",  
    }  
    This display name will be the same as the variable name.  
    3) A even shorther way for some "common" conditions, e.g.  
    expirationTime, duration, value, total, and stacks.  
    {  
      expirationTime = true,  
      duration = true,  
      stacks = true  
    }  
    The styles can be mixed in one table.  
    Ticket-Nr: 984  
- add a little more spacing to the new category labels  
- templates: use a more generic term for glow => highlight (#669)  
- change new labels from yellow to WoW gold  
- Templates Fixes (#664)  
    - refactor "changes"  
    - small fixes for texture color, and "inverse" usage  
    - removed some progress bar templates, kept only horizontal & vertical, with green color default   << this will need approval  
- Ensure that Options Frame exists before commiting to an import job  
    If a user clicks on a link in chat, then the import tooltip will appear and allow them to import an aura. This is fine, but importPendingData calls WeakAuras.CloseImportExport, which assumes that the options frame has been created. So, Load WeakAurasOptions and Show the options Frame, and if that fails then back out of the import job.  
    All of this would be solved if we weren't abusing the tooltip like we are.  
    Fixes #668 on Github  
- Conditions: Add AND/OR combinations to conditions (#663)  
- Fix templates for all regionTypes (#661)  
     => use correct field for color  
     => for aura and totem, use yellow color instead of glow for all regionTypes except "icon"  
     => model : no conditions  
    Rename isUsableBlue => isNotUsableBlue  
    #660   
- more wording changes to template descriptions  
- a few wording changes for templates  
- add conditions to templates (#587)  
    * add conditions to templates  
    * templates can have multiple types  
    * for every "ability" template, added "abilityShowAlways" or "abilityCharge" template  
    abilityChargeBuff and abilityChargeDebuff for spell with charge + show buff/debuff when active  
    abilityChargeTarget for spell with charge + rangecheck  
    * icon templates show cooldown by default (was disabled for auras)  
    "Has Target" condition added to "debuffShowAlways"  
    added "debuffShowAlways" to every "debuff" template, same for buffs and items  
    * abilityTotem & abilityChargeTotem templates  
    * Change how conditions and trigger variants are built  
    The basic concept is, the database describes what a spell is. There  
    are a few new flags for that:  
    - charges: If the spell has charges  
    - usable: If a usable check can be useful  
    - requiresTarget: If the spell requires a target  
    - buff: If the ability buffs the player  
    - debuff: If the ability debuffs the target  
    - totem: If the ability places down a totem  
    The third trigger page now selects the "subtype". A subtype can decide  
    how exactly the triggers and conditions are setup. A subtype has  
    two functions: createTriggers and createConditions which do that, and  
    builts its conditions from a list of common changes.  
    The mapping between spell properties and subtypes is done via  
    subTypesFor. (Which can properly be refactored a bit.)  
    * use insufficientResourcesBlue for abilities without charges=true  
    use spellInRangeRed for abilities with requiresTarget  
    * added optional totemType option, usefull when totemName doesn't match spellId  
    updated monk's refreshing jade wind, black ox statue and jade serpent statue  
- Add a tooltip to the "Set Parent to Anchor" option  
    As it appears to be confussing and we could argueably have more.  
    Lightly edited from the text in:  
    Github-Issue: 656  
- Apply Smooth Progress also to time based progress  
    Github-Issue: 653  
- Fix Copy Settings not closing the context menu  
    CopyToClipboard needs to update the paste entry, somehow that  
    prevents the Hiding from working.  
    Fix that by first hiding and then modifying the menu.  
    Github-Issue: 652  
- Add a "exact match" for spell ids option to a few triggers  
    Both Guardian and Feral druids have a "Trash" spell with a cooldown,  
    and with the right talents, druids have access to both spells.  
    Thus they want to track the cooldown of the right "Trash".  
    So add some code to enable that as a option and rewrite a few triggers  
    to offer that option, namely: Action Usable, Cooldown Progress (Spell),  
    Cooldown Ready and Charges Changed.  
    Technically the Cooldown Ready and Charges Changed spell change  
    behaviour with this patch, as they used to only check via the spellid  
    previously. But this is more a bug fix, similary to what was done  
    for Cooldown Progress previously.  
    Github-Issue: 630  
- Fix whitespace  
- Simplify code  
- Hide Copy Url Box on hiding, so that it is hidden when clicking on items  
    We should really stop abusing the tooltip frame.  
    Github-Issue: 651  
- Fix typo in icon  
- Fix focus for "Copy Url"  
    The editbox needs to be visible before we give it focus, so do it last.  
    Github-Issue: 650  
- add a few nil checks to icon picker  
- add talent checking to inputs  
    Also check player talents on input and get the spell id from them. Allows to create auras for talents you are currently not specced in to.  
- Don't run the tsu trigger function to decide CanHaveTooltip  
    The Icon's modify function checks CanHaveTooltip in modify,  
    which is called for all auras whether loaded or not.  
    Thus, the init and trigger functions of unloaded tsus were run.  
    So instead just assume that tsu auras can have tooltips.  
- Fix fallback code for disabled region plugins  
- Fix Conditions being unable to set width/height  
    Since f35cf824022f6fbbbebab8a4f8e5d038a142f8f9 the Scale function  
    checks if the scale has not changed and returned early.  
    Unfortunately SetRegionWidth/SetRegionHeight called those functions  
    with the current scale.  
    Fix that by introducing a method UpdateSize() that is called by  
    Scaling and SetRegionWidth/SetRegionHeight  
- Fix for masque skinning of buttons not in a group  
    Default to a framelevel of 4 for regions. Masque likes to put stuff  
    behind the icon, which doesn't work if it's on framelevel 0.  
    Might fix:  
    Gihub-Issue: 639  
- Fix framelevel of first aura in a group  
    The group itself uses the first framelevels for itself, so start at 5  
    for the first aura.  
    Github-Issue: 642  
- Let Masque Skin the Glow (#645)  
    * Let Masque Skin the Glow  
    Allows Masque to handle the Glow which includes a custom glow for Circular Icons.  
- revert a bad change to an earlier modernization  
    An early modernization (v1 -> v2) was unintentionally changed, which unfortunately breaks the v5 -> v6 modernization.  
    So revert that.  
    Reported on Discord.  
- Move setting of db.displays a bit earlier  
    As SetRegion might call the custom trigger functions, and that  
    requires ActivateAuraEnvironment, which looks for db.displays  
    Fixes a issue found while investigating:  
    Gihub-Issue: 633  
- Guard the multi-selection trigger code against different trigger counts  
    There might not be another trigger in each aura, so check if there  
    are before deleting.  
- add a few new APIs to luacheckrc  
- Hide child thumbnail regions when they're no longer useful  
    GitHub issue #628  
- tweak some phrases for the update tooltip  
    Also fix a bug where the wrong phrase would be shown for a new import  
- drop an unused library  
    As it was a TODO for 8.0. Currently we are shipping some code which is never executed.  
- fix autoHide for custom event w/ custom duration  
    Github-Issue: 627  
- add securecall to blocked functions, remove ForceQuit  
    `securecall` can be used to break out of the environment. `ForceQuit` has been protected for some time now and can only be called from Blizzard code.  
- Use 'Import as Copy' phrase for identical import  
- reorder update categories  
    Namely, put Metadata at the end.  
- Fix schedule ConditionsTimers  
    Forgot remove a "or true" used for debugging.  
    Github-Issue: 621  
- Chat Trigger: Add the CHAT\_EMOTE event  
    Ticket-Nr: 1182  
- Fix another bug in the animation function loading  
    Mentioned in a comment on:  
    Github-Issue: 615  
- Fix regression in Item Cooldown tracking caused by 82208fba  
    Github-Issue: 620  
- BuffTrigger: Reorder some group options  
    Ticket-Nr: 1181  
- Only run scamCheck once over the new data  
    As otherwise each code place would appear twice in the dialog  
- Fix internalVersion handling and fix importing certain group settings  
    We should not have the internalVersion in data\_stub, as that will add  
    it to the importing aura if it has no internalVersion.  
    Similarly, there's update code in Modernize that checks if ingroup  
    already exists. And if not runs some upgrade code.  
- Add a dynamic hide duration for event triggers  
    This behaves just like the timed duration, except that the duration  
    comes from a duration function.  
    Github-Issue: 413  
- Templates: Fixes specified unit for Lingering Sporepods trinket  
- Fix nil error in Animation code  
    The user did not provide the aura. This nil error might be  
    due to having selected a custom animation wihout a string or  
    due to a non custom animation with a invalid preset.  
    Treat a nil value of both as a not enabled animation  
- Rewrite SetFrameLevel code to be more robust for clones  
    The group/dynamic group now simply record the desired frame levels  
    in their modify function. And get the desired frame level in the  
    expand function.  
    Github-Issue: 613  
- UI tweaks for update tooltip  
    Specifically:  
    1. default to Importing as a copy. 'Choose a mode' localization phrase removed  
    2. Prepare code review during update process. Also as a TODO, we would ideally indicate somehow if a code hasn't been changed in the code review  
    3. Shift some of the buttons around a few pixels for better alignment. The button labels too.  
    4. Clicking checkbuttons will also shift the mode to update, as a shortcut for users.  
- Add a "WarMode Active" load condition  
    Ticket-Nr: 1178  
- fix a typo  
- Fix a problem in updating group clones  
    If we have a group\_count function, we need to iterate over all  
    members of the group to update group clones.  
- Further integration of group role options  
    Gather role count info on GROUP\_ROSTER\_UPDATE  
    Handle role counts as potential max counts when those settings are used.  
- Fix nil errors due to AddMany  
    AddMany will Add() group parents before their children. Unfortunately this means that the regions of the children won't exist, so getrect() in RegionTypes/Group.lua will attempt to index a nil value. That's easy to guard against, but introduces a second problem, that the ticket which originally was addressed by changing getrect() will be ressurrected. So, Add() the group parents a second time, after the children have been Added. Then, the region will exist and allow the proper bounding box to be calculated.  
- Fix false negative on sortHybridTable change  
    Since sortHybridTable goes by child ID, which can be quite volatile,  
    we need to detect a real change more carefully than WeakAuras.diff can reasonably do.  
    Also, there was a bug in importPendingData when merging sortHybridTable,  
    where it would mark a child as part of the hybrid sort if either its new  
    or old version is part of the hybrid sort, and that is wrong. Now, it properly  
    merges based on the Group Arrangement user preference.  
    Also preserveOldOrder variable's name was changed to better reflect what it is now.  
- add dynamic group control settings to arrangement category  
- categorize regionType as a display property  
    Since much of the data in the display tab is governed by the regionType  
- Pass the region into getrect, to ensure the correct bounding box  
    GitHub issue #596  
- Save internalVersion when compressing  
    Since internalVersion is a part of data\_stub now,  
    tableSubtract would remove it in pretty much all cases  
    This of course breaks exporting if there is a modernization to run  
    So, save the internalVersion and re-apply it  
- remove tableAdd and DecompressDisplay  
    Since PreAdd does the same job.  
- Back out of DeleteOption if the data has already been deleted.  
    In some cases, install will call DeleteOption, and then the ordering algorithm will want to call DeleteOption on the same data. So prevent this from occuring.  
    Reported on discord  
- add metadata update category  
- Fix logic in recurseDiff for values that are newly false  
    Those were accidentally treated as deleted.  
    Test Case:  
     - Export a aura with load conditions set to "negative".  
       - This is a bool false value.  
     - Change them to "positive".  
     - Import it again.  
       - This wrongly interprets it as a deleted value  
    Reported on Discord  
- Icon: Workaround the SetTextOnText workaround...  
    Apparently something in how WoW handles texts with a hardcoded size  
    and Justify is broken. Even with the right justify the text is not  
    justified correctly. So set a width of 0 here.  
    Interestingly enough a later SetTextOnText call that increases the  
    width seems to not break the justify.  
    Github-Issue: 600  
- Fix error on adding a buff template  
    Github-Issue: 604  
- Add another And Talent selected load condition  
    Argueably a fringe case, but sometimes aura layouts depend on more  
    talents. Since the option is hidden by default, it doesn't hurt  
    anyone to add it.  
    Also fix a few nil errors I got.  
    Github-Issue: 599  
- fix rangecheck condition threat nil as false #598  
- Fixing the Luminous Barrier CD template that uses the wrong talent loading condition  
- Add group unit options (#578)  
    * Add settings to group unit options  
    * Also fix IgnoreSelf interaction with Group Member Count  
- increase git clone depth to 150  
- Fix Conditions remaining time check  
    After removing code that lead too to many timers, more bugs were  
    exposed.  
    Ticket-Nr: 1174  
- if mode is 1, then we should ignore hybrid sorting on old data  
- Use UpdateGroupOrders instead of iterating twice on installedData  
    Implements a TODO  
- Register "ACTIONBAR\_UPDATE\_COOLDOWN" in cdReadyFrame to extend coverage  
- aura trigger with fullscan support remainingTime  
    Ticket-Nr: 411  
- Condition Options: Remove DELETE condition from combobox  
    There's a fancy button for that now, which is easier to use anyway  
- Fix importing not positing childs correctly  
    Reported on discord. Since we might Delete/Add the parent, and this  
    removes the parent/child relationship and thus anchors the child  
    to the screen, we need to readd the child even if we have no diff.  
- Tweak FrameChooser to choose child auras over groups  
    If multiple auras match are under the mouse cursor, this will prefer  
    normal auras to groups.  
    We use the FrameChooser for attaching and action/glow. For the later  
    choosing childs is probably 90% correct. For the later, attaching to a  
    group should be rare, because a child is "attached" to its group by  
    being a member.  
    Noticed in the comments of  
    Github-Issue: 572  
- Fix MoverResizer not getting the right size after import  
    The MoverResizer depends on the data that is stored in the region's  
    trx, try, blx, bly members. Those values are set in the modify() of  
    the group and depend on all children.  
    Thus, if we change the children of a group, we need to always also  
    add the parent, so that those values are correct.  
    Reported on discord.  
- Fix error in CreatePvpTalentCache if the player has no spec  
    How that can happen no idea, but we do have a user reporting a stack  
    trace that seems to indicate GetSpecialization returning nil.  
- Use WeakAuras.data\_stub for New From Templates auras  
    So that they do have a internal\_version. Also add the right  
    internal\_version to the data\_stub.  
- Be more consistent about icons in templates  
    The templates behaved a bit odd with replaced spells, where the icon  
    depended on whethera replacement (that is talent) was active on loading  
    the database.  
    The best solution would probably be to always display the base icon, but  
    that seems to be impossible. Instead update the icon to always show the  
    correct icon for the current state.  
    Github-Issue: 570  
- only preserve old order when Group arrangement is *not* checked  
- Don't ignore ID changes in WeakAuras.diff.  
    Also don't change the old parent when copying.  
    WoWAce Issue Nr 1173  
- Setup various bits, e.g. init scripts before SetRegion  
- use the correct translation phrase for diabled import  
    Credit to Nightwarden#6595 on discord for noticing the mistake.  
- Don't add the newid to sorthybrid table if the oldid wasn't there  
    Github issue #583  
- Fallback to region.height/width if data.height/width don't exist  
    WoWAce issue Nr. 1169  
    This is a special case for text type regions, which no longer use  
    width or height fields in their data. Without this, the aura data  
    will be mutated uncontrollably which breaks the update algorithm slightly.  
    Unfortunately, all data having a width and height field is a central assumption  
    in WeakAuras, and breaking it has many knock-on effects. This change  
    is the only one which does not cause a user-facing behavior change.  
- Add a "Insufficient Resources" condition  
- BuffTrigger: Only set state if we are showing the state  
    If state.show == false, WeakAuras will collect and clear the state,  
    thus if we compare and set properties in that empty state, we would  
    always consider the state changed.  
- Fix recheck timers for conditions  
    Save the time of the next recheck, so that we don't schedule a new  
    recheck, unless it's possible.  
    Also correctly cancel the previous recheckTimer if we reschedule.  
    And also cancel the right timer in UnloadDisplay  
    Github-Issue: 582  
- Add the ability to have spell/item tooltips via TSU  
    This was one of the few areas where the built-in triggers could  
    do more than TSU. Normal custom triggers can't set the tooltip though.  
    I think that's a okay limitation.  
    The TSU must respond to the "OPTIONS" event and fill in either:  
    - state.spellId  
    - state.itemId  
    - state.unit + state.unitBuffIndex or  
    - state.unit + state.unitDebuffIndex.  
    The values can be anything, the presence of that activates the "Show  
    Tooltip" option in the Display Tab.  
    On actually being trigger, one of those needs to be filled in with  
    correct data.  
    Github-Issue: 569  
- Icon: Fix several typos for Color setting  
- Fix interaction of new Alpha property and Animations  
    The animation can essentially override the alpha set via the condition.  
    This is similar to how color animations are supposed to work.  
    Though it could be argued that conditions should override animations.  
    It all gets even more complicated when animations are driven via  
    conditions.  
    Github-Issue: 561  
- fix nil error with use tooltip size instead of stacks  
- remove old aura name from the single diff tooltip as well  
- adjust readme text  
- range check condition for spell and item cooldown  
- Fix a bug where || would duplicate  
    Ticket-Nr: 1156  
- use an if block to special case arrangement instead of and/or chain  
    For readability purposes  
- auras from chat links must be sent through the PreAdd process too  
- Combine child anchor category with child order category  
    Thanks to @AmiYuy for the feedback on this.  
- fix options frame moversizer and child anchoring on import  
    Neither of which were being set properly  
    the child's parent must be set before WeakAuras.Add is called  
    Additionally, PickDisplay doesn't seem to properly set the moversizer,  
    so use PickAndEditDisplay instead  
- Fix text shaking animation bug  
    Ticket Nr: 1160  
- fix some false positives in WeakAuras.diff  
    1. Upon further inspection, using region.width/height on  
       text type regions doesn't affect the MoverSizer. So implement  
       that fix, so that text type auras don't have unpredictable sizes  
    2. due to floating point rounding errors...  
       so just ignore those differences because we don't care  
    3. Introduce PreAdd, which is intended to handle data mutations  
       which are necessary to Add the data into WeakAuras. This way,  
       WeakAuras.diff won't detect a change that WeakAuras.pAdd would  
       have corrected anyways.  
- hide radio buttons when they're not needed  
- tweaks to DisplayToTableString  
- Fix templates after renaming show on  
- fix migration  
- Fix regression on tableSubtract  
- tconcat => table.concat  
    not sure if they added the shorthand at some point but better be safe  
- ensure activeCategories exists  
- showActiveOrMissing => show Always  
- index the cache before iterating  
- hello this is the tab police  
- stringify tables into an array of lines, instead of using .. 100x times  
- simplify FindBestMatch  
    There is no need to iterate over the entire cache three times.  
- customHiden is not a word  
- remove unused default value  
- remove an unnecessary loop  
    Probably not a big win for performance but hey  
- Basic aura update support (#450)  
- Fix error on loading if trigger[name] is nil  
    Couldn't actually reproduce that, and the user attached no settings.  
    But every other place checks for trigger[name] being not nil.  
    Ticket-Nr: 1161  
- Use better names for Power Types for Templates  
    Suggested by Nightwarden.  
    Ticket-Nr: 1157  
- Equipment Set Trigger: Use C\_EquipmentSet.GetEquipmentSetIDs  
    That returns the set of ids that are valid.  
    Github-Issue: 559  
- BuffTrigger: Add a buffed/unbuffed condition  
    Github-Issue: 556  
- remove multistrike combatlog event  
    Fixes WowAce issue #1158  
- Update bug\_report.md  
- Update ISSUE\_TEMPLATE.md  
- Global Conditions: Fix Unload  
- Fix the author line of WeakAurasTemplates  
- Fix bugs in Global Conditions  
    * Don't run the condition function if no trigger is active  
    * Don't register condition functions for not loaded auras  
- Global Conditions: Move some code to WeakAuras.lua  
    Because having it in ConditionOptions.lua makes it only available  
    if the options are loaded.  
- Fix naming  
- Add a alpha option to Icons/Textures  
    And making it consistently available for Conditions  
- Add a dynamic condition for "IsUsableSpell"  
    This uses the newly run condition functions on events system.  
- Global Conditions: In Combat, Has Target  
- Fix Rename/Delete and custom condition functions  
- change translation string  
    so wowace does not get confused  
- better fix for profiling prints  
    WowAce issue 1155  
- Item Cooldown: Also fix onCooldown check in trigger  
    And not just the condition check  
    Github-Issue: 540  
- Power trigger: Update spell cost on UNIT\_DISPLAYPOWER events  
    Those can happen while casting  
    Github-Issue: 547  
- Fix tooltip scanning for fullscan auras  
    We need to remove any thousand separators before tonumber.  
    Mentioned in a comment on:  
    Github-Issue: 470  
- Add the enabled state for item cooldowns  
    Github-Issue: 540  
- Fix General and Azerite traits  
    We need a deep copy there, because we add the load conditions to them  
    later  
- Fix renaming forgetting about customActionsFunctions  
    Github-Issue: 544  
- fix hiding adjusted timers on obselete timers (#541)  
- Fix profiling prints  
    Fixes WowAce issue 1155  
- Improve templates by adding General/PvP Azerite Traits  
- Fix Aspect Ratio code if height or width is 0  
- Fix setting of number values if the actual value is nil  
- Add id to Condition Functions  
- adds class+specc specific azerite traits  
- Abort the enrichDatabase in templates  
- fix microstutter by removing non-existing items  
- removed enchants that share id through name  
- added enchants  
- adds raid/dungeon/worldboss/pvp-trinket templates  
    made some notes for tank/heal specific trinkets in case you want/want me to change stuff  
- allow arbitrary return values from custom text function  
    This allows the user much finer control over custom text replacement,  
    including easily using custom text on multiple regions in a single aura  
- Add "Adjust Timer" option to DBM and BigWigs timers  
- default to ratio of 1 if the aspect ratio is undefined  
    Animation scale funcs can return 0, 0. This would set the width and height to 0.  
    But then the aspect ratio of that is NaN. So guard against that since SetTexCoord  
    doesn't like getting NaN.  
    Github issue #533  
- update luacheckrc  
- Add links to explain force pushing for rebase (#534)  
    * Adding helpful links for rebase  
    * Update CONTRIBUTING.md  
- better align search box in options frame  
- Update CONTRIBUTING.md  
    Add pull.rebase  
    Add Git identity aka "The Rivers Paragraph"  
    Change PR sync paragraph to mention topic branch instead of master  
    Fix new issue link  
- Fix Toggle Visibility for Unloaded auras not working  
    Ticket-Nr: 1151  
- Add Mythic+ Affix load option  
- Update CONTRIBUTING.md  
    mention EditorConfig  
- Fix showing of auras even though the options window was closed already.  
    We built the options via a corotinue, and as part of that show/hide auras  
    via that corotinue. If the corotinue is still running and the options  
    window is already closed, this can popup auras at an unexpected time.  
    Prevent the showing in PriorityShow by checking if the Options are still  
    open. Whether that's the best fix, or we should somehow abort at a  
    diffrent place, I can't really tell.  
    Github-Issue: 528  
- Fix setting some properties on a multi-selection  
    The error was due to trying to reload the temporary group options,  
    which doesn't work. This code is dark magic that I fail to understand.  
    Github-Issue: 524  
- Fix scrolling being stuck in the Options window  
    We use our very own special layout, because we do one optimization,  
    that used to be important: We hide childs that are outside of the view.  
    Calling LayoutFinished at the end leads to strange results, if we  
    called our layout code ourselves, so prevent that from happening.  
    Github-Issue: 525  
- Fix slowness for on clicking on "Load"  
    As always dynamic groups are slow.  
    Github-Issue: 512  
- Fix SetParent for some auras  
    In the anchor to parent mode, there's no option to enable/disable the  
    SetParent call. But the code was still evaluating anchorToFrameParent  
    for those auras.  
    Github-Issue: 519  
- Cooldown Progress: Fix Track Charges being active, even it was disabled  
    Github-Issue: 522  
- Add SetJustifyH/V to the Icon's texts  
    We artifically increase the text size to work around a Blizzard bug,  
    making the text appear not at the position where the user intended.  
    Using SetJustifyH/V puts the text to a better position.  
    Github-Issue: 520  
- hello this is the luaformatter police  
- ensure that the childID exists before using it  
    This shouldn't have been a problem, but sortHybridTable isn't  
    properly maintained and can collect clutter if an index becomes  
    no longer valid. Fix this by double checking before migrating  
    that index.  
- Use id instead of index in hybrid sorting  
    Github issue #467  
- Update HelperFunctions.lua  
    Increased buffs to check, up to 255 for now.  
- Tweak Loaded vs Unloaded Display for the Options window  
    To be more like 2.6.0, minus minor bug fixes.  
- Fix stacks condition for Cooldown Progress (Spell)  
- add format.bat to gitignore  
- Add a "Pet Specialization" trigger to the Pet Behavior trigger  
    And rename the "Pet Behavior" trigger to just "Pet".  
    Github-Issue: 509  
- Add Spell Id to Status/Cast trigger  
    With the similar mechanics as Cooldown Progress. That is a spellId  
    matches every spell that has the same name. This takes care of the  
    cases where spells get replaced by different spells with exactly  
    the same name. Even though this makes the trigger "less exact" it  
    is what users mostly expect.  
    Github-Issue: 491  
- Fix debuffClass filters for fullscan  
    By translating the debuffClass returned from UnitAura to our internal  
    naming, which is slightly different. Also fixes the Enrage and None  
    filters.  
    Github-Issue: 497  
- Add a "In Encounter" load condition and also rework couldBeLoaded  
    Auras in WeakAuras can not just be loaded and unloaded but in a  
    "could be loaded" state. This is only used for the Options window and  
    decides where a aura is shown. E.g. a aura which is only loaded in  
    combat was still shown in the "Loaded" section and not in the "Unloaded"  
    section. On the other hand, auras with a encounter id, where always  
    shown in the unloaded section.  
    Fix that by adding a second load function, which only tests those  
    load conditions that won't dynamically change.  
    Github-Issue: 483  
- Optimize Cooldown Progress(Equipment Slot) name function  
- Observe the enabled flag of GetItemCooldown  
    Github-Issue: 505  
- Fix %s showing a 1 even if the ability had no charges  
    This fixes a regression introduced in 56cba6a261b19f65fbb8c0eb0c082f57ace9bcca  
    The state of CooldownProgress now contains two very related values:  
    state.stacks is the one behind %s, which magically behaves just like the  
    user wants %s to behave. That is for abilities that have only one  
    charge, displays nothing. And doesn't display anything at all for 0  
    charges.  
    state.charges instead contains a 1 for ready abilties, even if  
    technically they aren't even charged abilities. For conditions and the  
    charges check in the trigger this value is used.  
    Github-Issue: 492  
- Workaround more Blizzard's inability to get text sizes correctly.  
    Fixes a issue where scaling a font from 50 to 72 replaces the text  
    with "...".  
- Fix IconPicker with "inf" and similar inputs  
    Those are converted to numbers via toNumber but can't be passed  
    to GetSpellInfo  
    Github-Issue: 422  
- remove unnecessary OR statements  
    The animation func string should always correspond to an animation  
    type, so no need to do a fallback.  
- reuse result from last GetSpecialization() call  
- localize table before modifying it  
    For a user with lots of animations, this can help a bit  
- debug is local to this file, no need to access the main WeakAuras object  
- delete ancient commented code, which will never be uncommented  
- make the triggerstate entry creation atomic  
    For both readability, and because users with large numbers  
    of saved auras can have this operation happen many times,  
    and also every change that a user makes goes through this function  
    Making this atomic can avoid 3 rehashes for each call of Add  
- simplify AddMany slightly  
    Probably only a small performance win, but no need to iterate twice  
- exclude additional\_triggers when copying display settings  
- increase buff loop again  
- Fix nil error in group zoneId  
    Reported in a comment on curse  
- adds zone group ID load condition (#494)  
- Actually fix trigger.itemSlot nil  
    Co-authored-by: Rehok <jambostew@gmail.com>  
- trigger.itemSlot can be nil  
- loop 40 auras  
    instead of using the Blizz constant for the max displayed buffs which is not 40  
- add a static popup to confirm deletion of auras (#478)  
    Implements [wowace issue 644](https://www.wowace.com/projects/weakauras-2/issues/644).  
- Merge remote-tracking branch 'refs/remotes/origin/8.0'  
    Conflicts:  
    	.pkgmeta  
- Add Scale option to groups  
    Ticket-Nr: 827  
- Cooldown Progress (Equipment Slot): Add Name function  
    Github-Issue: 482  
- OnHide code was run on frame creation, fix #474 (#476)  
    OnHide code was run on creating WeakAuras Options  
    move OnHide block after frame:hide()  
    Github-Issue: 474  
-   
    correct formatting of new HelperFunctions file  
- partial reversion 0128295  
    This fixes github issue 474, though why exactly i am not sure.  
    Something about the options frame is interfering with the loaded state  
    of an aura in such a way as to make triggerStates forget about auras  
    that should be loaded.  
- Add functions commonly used by custom WA authors  
    GetUnitAura, GetUnitBuff, GetUnitDebuff - mimicking functionality from pre-8.0  
    GroupMembers - Very popular in Legion.  
    ClassColorName - Colors a units name according to their class  
- Simplify stacks code for Cooldown Progress  
    I think this should do the same thing, at least the talent switching  
    and conditions still work. The Prototypes code is a bit too complex  
    to know for sure though. Someone should clean up how trigger options,  
    trigger function test, and conditions are defined.  
- Fix ESC handling  
    Github-Issue: 471  
- Make Raid Buffs not use ownOnly  
    As it doesn't matter who applies them. Keep them at "player" though.  
    That's consistent with the other entries, which also only care about  
    the player.  
    Maybe moving them to the General section and making them group < 100%  
    would be better.  
- Revert "Workaround a issue in LibSpellRange"  
- Fine tune templates  
    Crowd Control abilities should be "multi", so that they work while  
    the cc target is not the target.  
    Group buffing abilities are either "group" or "target" depending on  
    how many are expected to be up at the same time  
- LibSpellRange-1.0 is now on GitHub  
- LibSpellRange-1.0 is now on GitHub  
- Update templates for BfA  
    Missing PVP Talents and Azerite stuff.  
- include maghar orc in race\_types  
- Add initial templates for some classes  
    Needs a bit of curating, e.g. contains a few duplicates.  
    Also m,issing Warlock, Monk, Druid and Demon Hunter.  
- Fix display options for multi-selection and overlays  
    Overlays are special in that their name for the same option can actually  
    vary. The code in nameAll handling that was apparently never tested.  
    Replace it with a "combined" name.  
    Github-Issue: 464  
- Add Bar Alpha to Conditions  
    Github-Issue: 390  
- AuraBar: Add Icon Desaturate to Conditions  
    Just because someone asked for it.  
    Ticket-Nr: 1129  
- clean up a few unused upvalues  
- Bring back accidently deleted charges function  
- Fix tooltip scanning and improve the functionality  
    The tooltip text region is now at 5 instead of 11.  
    Additionally the tooltip now longer contains the debuffClass, so  
    use the one from UnitAura instead.  
    Implement a getting one of the first three numbers out of the tooltip.  
    Though the user has to choose.  
    Github-Issue: 459  
- Fix Charges not updating on talent changes  
    Github-Issue: 458  
- Merge remote-tracking branch 'origin/master' into 8.0  
- oops  
- Move Registering of Events from Add to Load  
    No need to register for events that eagerly for auras that might never  
    load. That's probably not a big win for performance, but should help.  
    Github-Issue: 461  
- Fix models not showing up  
    Something is seriously wrong with models in WoW. Somehow setting the  
    model twice does work. But not if the model is set directly before  
    or after show. So far we only set the model again on loaded auras,  
    instead do that on all of them.  
    Ticket-Nr: 1127  
- Register the Options window in UISpecialFrames  
    So that ESC closes it.  
    Github-Issue: 454  
- Document another place as a WORKAROUND around a Blizzard bug  
    To be checked at a later date.  
- Fix anchored auras in dynamic groups  
    ticket # 456 - If a child of a dynamic group has anchorFrameType of SELECT and anchorFrameFrame refers to a frame which doesn't exist, then WeakAuras will get stuck in a loop trying to anchor, which eventually causes the group to fail to control its children. We can prevent this by forcing GetAnchorFrame to detect a dynamicgroup parent.  
- Check if path is a string instead  
- add a nil check in SetTextureOrAtlas() since name can be nil sometimes  
- fix CheckPvpTalentByIndex nil index error (#453)  
    check C\_SpecializationInfo.GetPvpTalentSlotInfo doesn't return nil  
- Fix nil value error  
    Fixes #451  
- fix variable shadowing  
- Ignore Load tab when copying display  
    fixes #445  
- Merge branch 'master' into 8.0  
- Add Atlas texture support for Textures, Progress Textures and Sparks  
    Github-Issue: 431  
- Fix Aura not showing on ScanAll in certain cases  
    Gihub-Issue: 430  
- Fix showing of wrong icon in a corner case  
    Correct the active trigger mode as the first thing in Add, so that  
    the region's modify function work on correct data.  
    Github-Issue: 432  
- Fix BuffTrigger's CanHaveDuration  
    ShowOnMissing is a option for some but not all auras, so only check  
    it for those auras.  
    Github-Issue: 436  
- Fix setting glow on a aura moves it around  
    It seems that ResetMoverSizer is not needed at all. But that function  
    shouldn't move auras around, so something might be off.  
    Github-Issue: 438  
- Fix Range Trigger + Range Conditions  
    Github-Issue: 439  
- Fix charges Changed trigger  
- Update issue templates  
- Fix tooltip truncation  
    Fixes #435  
- Fix nil error  
    Closes #433  
- oops 2  
- oops  
- make the "cannot load addon" messages a bit nicer  
- change some print formats  
- Merge remote-tracking branch 'origin/master' into 8.0  
- Merge commit '8916fee54eb3e9bc0eab136f2be317178dc57340' into 8.0  
- Fix error handling.  
    Doing a find/replace all wasn't that good of a idea  
- Tweak error handling some more  
    Apparently pcall can return not ok with a empty error string.  
    Which then trips up the error handler  
    Ticket-Nr: 1125  
- Prevent actions from conditions if the auras aren't shown. Take 2  
    Github-Issue: 332  
- Add a maxCharges condition to Cooldown Progress  
    Github-Issue: 424  
- Ajust conditions to trigger reorderings automatically  
    Github-Issue: 425  
- Improve layout for merge options  
    Add a bit of space before the titles  
    Github-Issue: 426  
- Handle errors again  
    Ticket-Nr: 420  
- Merge remote-tracking branch 'origin/master' into 8.0  
- [Feature] Add HSV color animations (#408)  
    Add HSV color animations and rename old ones  
- Fix overlays not updating if nothing else changed  
    Github-Issue: 414  
- Workaround a issue in LibSpellRange  
    Ticket-Nr: 1123  
- Convert region types of clones too  
    SetRegion should cope with data.regionType changing.  
    Github-Issue: 404  
- Special case FRAME\_UPDATE event also for custom triggers  
    Github-Issue: 409  
- Fix nil error on empty nameinfo  
    Github-Issue: 410  
- Reset xOffset and yOffset on adding to a dynamic group  
    That's the right thing to do.  
    Ticket-Nr: 1121  
- Pull LibRangeCheck in via pkgmeta again since it was updated.  
- clarify that a few load conditions support more than one entry  
- re-enable zone id load condition by using the new map API  
- Merge branch 'master' into 8.0  
- move master builds to the BigWigs packager as well.  
- package 8.0 branch tags using the BigWigs packager  
- package 8.0 branch tags using the BigWigs packager  
- remove LibChatAnims  
- change to simpler url format in pkgmeta since we don't use the other options anyway.  
- use the new STAT\_STAGGER constant to translate Stagger  
- update changelog  
- add Uldir encounter ids  
- Merge remote-tracking branch 'github/master' into 8.0  
- Fix Load conditions for encounter ids  
- Fix GCD trigger after UNIT\_SPELLCAST\_SENT change  
    Blizzard going back on forth on what the events delivers.  
    Github-Issue: 401  
- fix missing orgEvent assignment  
- move prints to their function  
- fix bindings.xml, only need to create header once  
- update changelog  
- Merge remote-tracking branch 'origin/master' into 8.0  
- Fix a few bugs, remove TODOs  
- add a prettyPrint function and use it in a few places  
- add names to the profiling keybinds  
- add prints to pstart and pstop  
- Don't early return if before potentially enabling rune watching  
- Fix Overlay colors not resetting after Condition  
    GetBaseProperty returns the base data for a property. I made the  
    overlays in data a array instead of a map, and thus the keys are  
    numbers. That was a late change, which broke retrieving the base  
    data.  
    Github-Issue: 398  
- Fix issues with profiling and some animations  
- Add a "loadFunc" to Prototypes which is called on loading a aura  
    Currently, various triggers initialize various watchers from init.  
    But init is called on the aura being added, and thus we track a lot  
    more stuff than needed. Only start tracking various things if they  
    need to be tracked.  
- Add Profiling Support to WeakAuras  
- Merge RegionOptions on multi selection  
- prepare switch to HereBeDragons-2.0  
- Add another pixel to the font string automatic size calculation  
    The ticket accurately describes how to reproduce the issue.  
    For me, it showed up at font size 23. So it seems the workaround  
    is still needed for 8.0  
    Ticket-Nr: 1117  
- Update changelog  
- Replace pcalls with xpcalls everywhere where user code is called  
    Ensures that the eror dialog is shown.  
- Also force trigger state updater triggers  
- Merge remote-tracking branch 'origin/master' into 8.0-f  
- Wrap all user functions in pcall / xpcall  
    Hopefully not breaking anything.  
    Github-Issue: 391  
- Check that what we pass to IsSpellKnown is a number  
    Should hopfeully prevent the errors that several people saw after  
    accidentally upgrading to the 8.0 branch.  
    Ticket-Nr: 1113  
- Fix problem with offset being nil  
    No idea how that happened, but fix the behaviour in that case.  
    Ticket-Nr:; 1110  
- Tweak Show CD of a single charge behaviour  
- Fine tune templates GET\_ITEM\_INFO\_RECEIVED code  
    Deregister the event if no longer needed.  
- update changelog  
- Prepare Templates for 8.0  
    By throwing away 90% of the data. To be refilled.  
- Remove note in the Model that a api will change behaviour in 7.3  
- Add a comment to check if this workaround is still needed  
- Fix a small issue in the Item Set trigger  
- Remove ITEM\_INFO\_UPDATE.  
    Apparently that's neither a wow event nor a internal event.  
- Fix Swing Timer Check  
- Eat errors from RegisterEvent for custom auras  
    Having custom events there is not too uncommon, so just silently  
    ignore any errors from trying to register them with wow.  
- Review the Official BfA Addon Changes document and port more stuff  
- Fix DBM triggers  
- no longer pull in LRC as long as we ship a fork  
- Mark Swing Timer as NYI as apparently it doesn't work  
- Adjust to Combat log event changes  
- Make _ local  
- Fix RegisterEvent calls. We registered even our internal events  
    So split up our event lists into actual wow events and internal  
    events.  
- Replace Dungeon Role with Spec Role  
    This is useful in more situations than the dungeon role load  
    condition. And since it should be almost always the same as the dungeon  
    role, we probably don't need both.  
    Github-Issue: 381  
- Remove Legion Encounter IDs  
- Remvoe a unnecessary _G  
    Thanks Krazyito  
- Fix a few bugs in BuffTrigger  
- Fix UnitAura (unit, spellName, ...)  
    UnitAura does not take a spell name anymore so we have to loop over  
    all auras.  
- fix form\_types (#387)  
    GetShapeshiftFormInfo() doesn't return name  
- Fix PVP Talent Cache generation  
- ship a patched version of LibRangeCheck-2.0 for testing  
- Dry code PVP Talents  
- Disable LibRangeCheck-2.0 for now  
- Mark disabled HBD with a TODO 8.0  
    Also readd Player ZoneId Load Condition by mark it as NYI  
- the rank return from UnitAura has been removed  
- disable HereBeDragons integration for now  
- Update TOC to 80000  
- Add key bindings to open/close the options window (#385)  
    * Create Bindings.xml  
    * Added a couple of globals to enable Bindings.xml  
- Setup fallback state so that it has no duration  
    Before b3e57359e128d4e23f9f7f3bf1b9c64f6300293b would overwrite  
    the duration information in the fallback state.  
    Github-Issue: 382  
- Add Timewalking Raids to Load conditions  
- Fix importing dynamic groups doesn't reset the offset  
    Make sure the childs have the right parent id on importing.  
    Github-Issue: 378  
- Copy disjunctive and customTriggerLogic in the copy trigger part  
    Github-Issue: 375  
- Fix Copy/Paste code for Groups  
    - Don't copy controlledChildren.  
    - In the context menu for groups offer only "Copy Group"  
    - Pasting a individual auras settings onto a group paste it to  
      each child.  
- Remove code that is no longer needed  
    These options are hidden for dynamic groups, even without this code  
- Implement tracking Cooldown of a specific charge for Spells  
    Since this is probably only useful for spells and not for items, only  
    implement it for spells.  
    Required a few bigger changes:  
    - Allow number inputs without operators  
    - Allow trigger functions to directly set the duration/expirationTime  
      - Since the code for tracking a specific charge is a bit more  
      involved, I only want to have it if the user tracks a specific charge.  
    Ticket-Nr: 1102  
- Templates: Bladestorm is not a talent for Arms  
    Ticket-Nr: 1105  
- Fix a bug in reordering triggers  
- Add default value for slantMode  
    And remove unised version default value  
- Add a "slanted" mode to Progress Textures  
- Fix empty "Required for Activation" for newly created trigger  
- Fix regression for Apply Templates button  
- Add Condition Properties for xOffset and yOffset  
    So the position can change depending on conditions  
- Add offset options to auras in dynamic groups  
    Not terribly useful, but adding that feature actually reduces the amount  
    of code and makes all auras support xOffset and yOffsets  
- Add a "internal version" to auras, so that Modernize knows what to do  
    This makes the version in Transmission obsolete.  
    Importing a aura with a higher version merely shows a warning message in  
    the import window.  
    Only Modernize code that needs to be run is actually run.  
    Also this might eventually allow for removing outdated Modernize code  
    paths.  
- Fix Add Property for multi selection  
- Add a SetTexture function to Progress Textures  
    Used by the custom texture function  
- Implement TODOs  
- fix the translation script for PRs  
- adjust range check trigger text a bit  
- Fix canceling "Apply Template" picks the new option  
- Add a bit of space between Choose Trigger and "Add"  
- Fix text replacement for Texture auras  
    The ReplacePlaceHolder code requires regions to have a .values.  
    The texture didn't have that, as it doesn't have any texts, but as  
    the ticket proves it is needed.  
    Github-Issue: 367  
- Add a text explaining the range trigger to the Range Trigger  
    This doesn't change how the trigger works, but explains what it  
    is measuring. This should alleviate the concerns raised in the ticket.  
    Ticket-Nr: 1096  
- Add "Reorder" for Triggers and Conditions  
    Via small "toolbuttons" which are now possible due to a change  
    in Ace3. Also use toolbuttons for adding/removing triggers.  
    Github-Issue: 196  
- Fix editing conditions with multiple auras selected  
    No idea when that broke. I spent a lot of time making sure  
    that editing multiple auras conditions worked, so this must  
    have worked...  
- Remove debug output  
- Fix cooldown handling of "disabled" cooldowns  
    Some spells, e.g. Thunder Focus Tee enter a disabled cooldown  
    state on being used. They first give a buff and start their cooldown  
    on the buff being consumed.  
    This is indicated by the third return value of GetSpellCooldown  
    Ticket-Nr: 1095  
- Remove a workaround for GetSpellCooldown("Water Jet")  
    Apparently that works now.  
- Reimplement Copy and Paste  
    Instead of having that strange Copy from mode, reimplement copy and  
    paste via a clipboard. Also take the suggestion from a ticket of being  
    able to copy and paste parts of a aura.  
    Ticket-Nr: 767  
- Options Window: Cooldown Progress: Fix initial value  
    Reset the value of the combobox if it isn't one of the values.  
    Github-Issue: 335  
- Fix Range Check trigger  
    Actually listen to FRAME\_UPDATE  
- change some power types again  
- change range check label from `Range` to `Distance`  
- change back some power types as their format is not consistent  
- change the global strings used for power type translations to be the ones of power types instead of the resource itself  
- add some newlines to the changelog  
- fix pkgmeta  
- add the temp commit file to ,gitignore  
- Update pkgmeta  
- switch to manual changelog generation and add a script to do that  
- only push localization if master changes and ignore the script in WowAce packaging  
- add a script to automatically push translations to WowAce  
    fix casing of some files  
    switch travis language to minimal  
- `dev` instead of `development`  
- use the same version string for the window title as for the LDB tooltip  
- Templates: Add KJ's burning wish to the correct specs  
    Accidentally added it to all Healer specs, because a comment was wrong.  
    Also fix some minor issues.  
    Ticket-Nr: 1082  
- Combat Log Trigger: Fix SPELL\_ENERGIZE  
    Apparently there's a unknown parameter now (probably since the start  
    of Legion.)  
    Ticket-Nr: 1092  
- Add Allied Races to templates  
    Ticket-Nr: 1082  
- Attach legendaries/sets to each spec instead of a global list  
    Ticket-Nr: 1082  
- fix LibRangecheck path  
- implement UnitIsUnit option  
- Update Templates based on suggestions from Nighthawk  
    Ticket-Nr: 1082  
- Add Range Checker trigger  
    Github-Issue: 343  
- Transmission: Add a timeout if no data to check if we received data  
    And also add a text noting that cross-realm sharing of auras doesn't  
    work.  
    Github-Issue: 351  
- Add resizers to the bottom right corner  
    For reasons that are lost the resizer is in the bottom left corner,  
    which is rather strange.  
- Fix Stagger progress not updating  
    I couldn't reproduce the issue, but looking at what events fire for  
    stagger updates, it seems UNIT\_ABSORB\_AMOUNT\_CHANGED fires for  
    stagger. Even if that's a bit counterintuitive.  
    Github-Issue: 342  
- Fix Lua errors on Login with certain locales  
    Ticket-Nr: 1089  
- branch out to LBR for allied race translations and add zandalri and dark iron dwarves  
- Fix Mover Frame not being around dynamic groups  
    By:  
    - Revert "Tentative fix for jumping auras while moving"  
    - Making ReAnchor only resize the mover frame, as it is only called  
      from DynamicGroups DoResize method. Hopefully that's enough.  
    Github-Issue: 326  
- Fix Big Wigs Pull Timer not vanishing for /pull 0  
    Ticket-Nr: 1086  
- Add Allied Races to Race load condition  
    For now without translations. We are waiting for LibBabble-Race to be  
    updated.  
    Ticket-Nr: 1085  
- Remove autoHiding from triggers without a explicit duration  
    That doesn't make any sense, the case where we want to autoHide  
    is when we have only a duration, which is handled above.  
- Try harder to find a icon for inversed buff triggers  
    By using falling back to a icon for the buff name, even if  
    IsSpellKnown returns false  
    Ticket-Nr: 1077  
- Fix Overlay Infos not leading to aura updates  
    Ticket-Nr: 1080  
- Use GetItemInfoInstant to get the icon  
    As pointed out on discord.  
- Fix template for Ancestral Guidance  
    Ticket-Nr: 1084  
- adding region table into aura\_env  
- doc updates  
- Watch for GET\_ITEM\_INFO\_RECEIVED if GetItemInfo returns nil for a icon  
- Update Templates for a some missing ones  
    Data provided by Nightwarden\_24  
    Ticket-Nr: 1082  
- Antorus Update for Templates  
    Ticket-Nr: 1082  
- localize `Keep Aspect Ratio`  
- fix for last  
- add the version string to the options window title  
- Icon: Add a "Keep aspect ration" option  
    Which crops the icon if the icon is not square  
    Ticket-Nr: 861  
- Fix changing only trigger combination mode does not work  
    Ticket-Nr: 1073  
- Fix regression in group tracking auras if a person leaves the group  
    In f0246da4387e9a438775609cd06cd3b232a51b4f the group tracking was  
    change to be use id/triggernum as a key to various internal data  
    structures instead of just the id.  
    Add the additional triggernum parameter to one function call where  
    it was missing.  
    Ticket-Nr: 1075  
- Fix check in checkConditions for aura visibility  
    In this issue, a condition is on the remaining time of a cooldown.  
    If the aura is shown before the remaining time is up, we schedule  
    a conditionCheck for the future.  
    That code needs to then check if the aura is still visible before  
    running the conditions. Previously the code checked  
    region.state.show, but that's the state of one of the triggers and  
    not the overall visibility of the aura.  
    Github-Issue: 332  
- WeakAurasMultiLineEditBox: Remove some code that isn't necessary  
    The WidgetBase already contains a GetUserData function, there's no  
    need to override it.  
- AuraBar: Split backdrop and border z-position.  
    Currently it's impossible to have the border in front with the backdrop  
    behind the bars. Which is imho the most sensible setup.  
    Make that possible.  
    Also only create the backdrop and border frame if the border options is  
    actually enabled. (Which is probably not the case for >90%)  
    Ticket-Nr: 799  
- Tentative fix for BigWigs matching  
    Fixes: https://github.com/WeakAuras/WeakAuras2/issues/331  
- Tentative fix for jumping auras while moving  
    ref: https://github.com/WeakAuras/WeakAuras2/issues/326  
- Fix BuffTrigger: Always show  
- Add Rockbiter to templates  
- Improve BuffTrigger upgrade code  
- Options: Ctrl+Click on a selected aura deselects it  
    Github-Issue: 318  
- Limit the tooltip of groups to a good size  
    Github-Issue: 317  
- AuraBar: Add condition properties for stack text size/color  
    Github-Issue: 315  
- Fix Recenter Option for Progress Textures  
    Github-Issue: 309  
- Revert "Conditions: Add a "Active For" condition"  
    This needs a bit more work and thought. People seem to expect  
    different things.  
- Remove message box on using a spell id for the aura trigger  
    The UnitAura api takes a buff name and not a spell id, thus when  
    used with a spell id, we match on any buff that uses the same name.  
    Due to that we guided people towards using the full scan option.  
    Usually when people use spell ids, they want it because they want  
    their aura to work with all locales and not because there are  
    multiple buffs with shared names.  
    For those, the message box is confussing and probably leads people  
    astray.  
    Github-Issue: 312  
- Fix Equipment Set Trigger  
    The way the equipment set api works is rather strange. As the ticket  
    shows, 9 item sets might use the indexes 0 to 7 and 9, with 8 being  
    empty.  
    Ticket-Nr: 1069  
- Fix regions SetInverse  
    Ticket-Nr: 1068  
- Fix "Required for Activation" for single triggers  
    I apparently forgot to properly test it.  
    Github-Issue: 311  
- field 'spellCache' can be nil  
- stuff I do when bored  
- rename .DuplicateOneAura to .DuplicateAura and bump widget minor  
- Text: Fix options code to not use a unitialized variable  
- Add a "Duplicate All" option to the context menu  
    Ticket-Nr: 873  
- BuffTrigger: Add a "Show Always" option to the BuffTrigger  
    Also add a option to show the aura even if the unit does not exists.  
    Ticket-Nr: 951  
- Conditions: Add a "Active For" condition  
    Which checks how long a trigger has been active.  
    Ticket-Nr: 952  
- use WeakAurasSortedDropdown for combat log message pre- and suffix controls  
- Text: Slightly modify wording for wrap mode  
- make a few more strings translatable and dynamically size the import disabled button by it's text width  
- Tweak Reload Options to fix a few bugs  
    Toggling options with multiple auras selected related in a bug.  
    And toggling options would not always toggle the option in all auras.  
- BuffTrigger: Key aura\_cache for group triggers on both id and triggernum  
    Instead of just the id. As otherwise in a aura with two group triggers,  
    the triggers would override each others data.  
    Ticket-Nr: 1066  
- Rework ScanAll after options close/checking load condtions  
    Only send fake events to status auras and to auras whose load  
    condition actually changed.  
    This might break a few auras that relied on fake events being sent to  
    them, but it should be quite a bit faster and hopefully not break to  
    many custom auras.  
    Github-Issue: 304  
- Text: Add a options for a fixed width and word wrap  
    Github-Issue: 294  
    Ticket-Nr: 1052  
- Tweak order of options so that "Check On" and "Events" stay together  
    Github-Issue: 303  
- CodeEditors: Only enable for the scroll wheel while having focus  
    Github-Issue: 302  
- Fix missing constant factor setting for counter clockwise dynamic groups  
    I tested that the setting actually works.  
    Ticket-Nr: 1065  
- Add Heal Prediction to state  
    So that state.changed naturally gets the right value when the heal  
    prediction changes.  
- Activate Aura Environment for running overlay functions  
- RegionPrototype.lua: attempt to compare number with string  
    ```  
    Message: ...ace\AddOns\WeakAuras\RegionTypes\RegionPrototype.lua:324: attempt to compare number with string  
    Time: 11/22/17 16:11:34  
    Count: 846  
    Stack: ...ace\AddOns\WeakAuras\RegionTypes\RegionPrototype.lua:324: attempt to compare number with string  
    Interface\SharedXML\SharedBasicControls.lua:208: in function `origErrorHandler'  
    ...rface\AddOns\TradeSkillMaster\Debug\ErrorHandler.lua:317: in function <...rface\AddOns\TradeSkillMaster\Debug\ErrorHandler.lua:300>  
    [C]: ?  
    ...ace\AddOns\WeakAuras\RegionTypes\RegionPrototype.lua:324: in function `SetDurationInfo'  
    Interface\AddOns\WeakAuras\WeakAuras.lua:3611: in function <Interface\AddOns\WeakAuras\WeakAuras.lua:3593>  
    Interface\AddOns\WeakAuras\WeakAuras.lua:3695: in function <Interface\AddOns\WeakAuras\WeakAuras.lua:3687>  
    Interface\AddOns\WeakAuras\WeakAuras.lua:3790: in function `UpdatedTriggerState'  
    Interface\AddOns\WeakAuras\GenericTrigger.lua:550: in function `ScanEvents'  
    Interface\AddOns\WeakAuras\GenericTrigger.lua:890: in function <Interface\AddOns\WeakAuras\GenericTrigger.lua:888>  
    Locals: errorMessage = "...ace\AddOns\WeakAuras\RegionTypes\RegionPrototype.lua:324: attempt to compare number with string"  
    DisplayMessageInternal = <function> defined @Interface\SharedXML\SharedBasicControls.lua:191  
    MESSAGE\_TYPE\_ERROR = 0  
    ```  
- no longer needed as of VS Code 1.18  
- I hate curseforge  
- quick fix for the locale issue  
- trigger translation update  
- make a few more strings translatable  
- Cast Trigger: Reload options on toggling Inverse  
    For Conditions  
- Action Useable: Reload options on toggling inverse  
    Since the available conditions change  
- Add "on Cooldown" option to Rune Trigger  
- Add Overlays to AuraBars/Progress Textures/Health/Power triggers  
    Add support for showing additional progress to AuraBars and Progress  
    Textures. Rewrite parts of both to enable sharing code between "normal"  
    progress and additional progress.  
    Add additional progress to the Health and Power trigger.  
    The Health trigger can show the Absorb and Incoming Heal as additional  
    progress.  
    The Power trigger can show the Cost of the Spell Casts  
    The main power is that some of the custom code people use for multiple  
    overlays is now much easier.  
    Ticket-Nr: 539  
- Pet Behavior: Don't require a check for behavior  
    And return a icon  
- Templates: Correct load condition for Ice Fury  
- Squelch sounds while in the loading screen  
    Try again with a more narrow patch.  
- missed a file  
- update translations  
- Revert "Observe squelch\_actions for Sounds played from Conditions"  
- Actually load the esMX language files  
- Revert "Work around Editboxes buggyness with 7.3"  
    7.3.2 fixed the bug, so we can remove our workaround again.  
- WeakAurasMultiLine widget: Remove code slightly moving the ACCEPT text  
- WeakAurasMultiLine widget: Don't need to set the width all the time  
- Options: Set a optionTriggerChoices for all childs too  
- Code Editor extraFunctions: Use buttonLabel instead of name  
    As ther code that merges options for multi-selection treats name  
    properties in a special way.  
    Reported on discord  
- Tweak hack for text wrapping issues  
    Apparently with gigantic font sizes adding 4 pixels is not enough.  
    From what I could tell around 20 pixels would be enough. So add  
    the maximum of 2.5% and 4 pixels and hope that this whole mess can  
    be removed soon.  
    Ticket-Nr: 1052  
- Observe squelch\_actions for Sounds played from Conditions  
    Also squelch\_actions while a loading screen is enabled  
- Allow "Auto" for all BuffTrigger auras  
    We actually have a small database of name/spell id to icon mappings,  
    so make use of it.  
    Ticket-Nr: 291  
- Show "Required for activation" also for one trigger  
    It's a bit ugly but I've seen it requested a few times.  
    Github-Issue: 292  
- Change default color for Conditions to white  
    This is slightly backwards incompatible, since it changes the color  
    for people that never adjusted the color at all. That's probably  
    not too many.  
    Github-Issue: 286  
- Convert a few more TextEditors to use AddCodeOption  
    This is less code, adds a error reporting description and apparently  
    the Text one didn't show a Expand button previously.  
- Move Expand button to below text editor and make text editor the full  
    width  
- Extract common code for creating texteditors  
    There's still plenty of code duplication with start/main/finish and the  
    various animations types being very similar. But this significantly  
    cuts down on the code duplication.  
- Extract BuffTrigger and GenericTrigger options from WeakAurasOptions  
    There's still some code in WeakAurasOptions.lua that is specific to the  
    trigger system used. And the code in WeakAurasOptions very much knows  
    that there are Buff and Generic triggers.  
    But this is a step towards making triggersystems register their  
    options and the WeakAurasOptions code not being specific to any  
    trigger system.  
- Split up WeakAurasOptions.lua by moving aciton/animation options  
- Templates: Fix Savage Roar load condition  
- Recommend Color Picker Plus in the ´Enhancing WeakAuras` section  
- Add a "WORKAROUND" marker to various blizzard bug workarounds  
    Once 8.0 is in development we should try to remove some of them.  
- Fix spurious line breaks in icon texts  
    Apply the same workaround as for text auras.  
    Also extract it into its own function and add a "WORKAROUND" marker.  
    Apparently the extra adjustment needed depends on the font size.  
    With font size 288, 4 pixels were enough so for now use that.  
    Ticket-Nr: 1042  
- Dynamic Group: Sorting via index: Fix comparing with a nil state  
    Ticket-Nr: 1050  
- Fix custom functions for Actions/Chat  
    Github Issue: 282  
- protect _G lookups (#283)  
    * protect _G lookups  
    * Revert "protect _G lookups"  
    * use exec\_env instead  
    as suggested by @emptyrivers  
- adding a function to a list  
- Fix and extend Swing Timer  
    - Use the combat log events parameter to distinguish between main  
    and off hand.  
    - Implement parry haste with code provided by Hamsda  
    Ticket-Nr: 1045  
- Make the In Group load condition more powerful  
    Ticket-Nr: 1044  
- Work around Editboxes buggyness with 7.3  
    Ticket-Nr: 1041  
- Change one PlaySound to use kit ids  
    Report and patch by Exality on discord.  
- Smallpatches (#277)  
    * Revert "throttle the ScheduleTimer function"  
    * Revert "revert ScheduleTimer change for doCooldownScan"  
    * Fix hangs and strange issues with ScheduleTimerFixed  
    Because I'm a doofus  
- throttle the ScheduleTimer function  
- revert ScheduleTimer change for doCooldownScan  
- Replace PlaySoundKitId with PlaySound  
    Ticket\_Nr: 1035  
- Fix lua errors for timers with a too long duration  
    Don't start timers that are longer than a week.  
    Ticket-Nr: 1036  
    Ticket-Nr: 1034  
- Update TOC for Patch 7.3  
- Fix IsSpellKnown trigger for pet spells  
    Some doofus broke it, when he added IsPlayerSpell  
    Ticket-Nr: 1028  
- Add GROUP\_ROSTER\_UPDATE event for watching specific units  
    As that can affect whether a unit such as party1 exists  
    Ticket-Nr: 1026  
- Show the current Zone ID as a tooltip in the load options  
- Prevent aurabar's foreground to be sized too small  
    Ticket-Nr: 1022  
    Ticket-Nr: 1026  
- Fix text replacements of 2 character long strings  
    Ticket-Nr: 1027  
- BuffTrigger: Fix Bufftrigger with multiple auras  
    On interating over all buffs, don't directly update the aura\_object.  
    (Which is our tracks which group members have a buff.)  
    Instead just figure out the "best" match. And update the aura\_object  
    afterwards.  
    For consistency apply the same "best" match logic also to non-group  
    auras.  
    Github Issue: 263  
    Ticket-Nr: 322  
- at per workspace indent settings for vscode  
- Add a "remaining time" check to the Cast Trigger  
    Github Issue: 265  
- Threat trigger: Add Focus and "Specific" to the unit selection  
    This allows tracking the player's threat against more unit ids.  
    Ticket-Nr: 1021  
- Fix Minimize with Templates open  
    Reported via a curse comment  
- Circular Progress Texture: Fix background looking strange  
    Instead of using self.texture:GetSize() use region.width.  
    The former might not be up to date, due to how Blizzard's lazy  
    layouting works, whereas we can easily keep track of the size  
    the region should have.  
    Ticket-Nr: 1018  
- Delete old CONTRIBUTING.md  
- Add a CONTRIBUTING.md file  
    Based on https://github.com/XhmikosR/mpc-hc/blob/develop/CONTRIBUTING.md and https://github.com/WeakAuras/WeakAuras2/pull/249  
    Closes https://github.com/WeakAuras/WeakAuras2/pull/249  
- Fix duration info not clearing on switching states  
    Github Ticket: 248  
- Text: Work around a Blizzard bug in how text widths are calculated  
    The automatic calculation of widths in OUTLINE or THICKOUTLINE mode  
    can introduce an additional line break into the text.  
    By setting the width to 0, the automatic calculation is used.  
    We then set the text width to 1.2 times that calculated size  
    Ticket-Nr: 1014  
- Rename "Dungeon Difficulty" load option to "Instance Difficulty"  
    Since it does include e.g. LFR  
    Ticket-Nr: 1012  
- Add a Item Set trigger, which can check how many set items are equipped  
    Code mostly by Asakawa  
- Add a Version field to auras which is shown in tooltips  
    This is handled the same as the url. It's automatically filled by  
    websites such as wago.io.  
    Github-Ticket: 257  
- Whitespace cleanups  
- add mixin stuff to .luacheckrc  
- add the Antorus encounter ids  
- fix PRD hook when KNP option 'ignore personal nameplate' is used  
- Revert "Reset duration info on applying a state without progress information"  
- Custom Trigger: Don't hide the Events trigger for Custom/Event  
    Custom Event triggers always need events to trigger.  
- Smooth Progress for Aura Bars and Progress Texture  
    Using SmoothStatusBarMixin.  
    Since our Aura Bar is modeled after the Blizzard bar using  
    SmoothStatusBarMixin is easy.  
    For Progress Texture a small indirection is used.  
- Sometimes the GetCooldown()  API returns very high bogus numbers causing client freeezes, discard them here.  
    Refs: https://www.wowace.com/projects/weakauras-2/issues/1008  
- Add CINEMATIC\_STOP to movie watch frame  
    Ticket-Nr: 1007  
- Reset duration info on applying a state without progress information  
    Github-Ticket: 248  
- Fix regression in resizing groups  
- Fix texteditor for custom condition functions  
    Github-Ticket: 250  
- Amend specific unit desc (#251)  
    The current description of specific unit implies that unit tokens such as `boss1` or `targettarget` would not work, when that is not the behavior. This amends the description to properly reflect that.  
- Consider the gemcutting UI as vehicle UI (#246)  
    * Consider the gemcutting UI (and everything else behind HasOverridenActionBar()) as vehicle UI   
- Fix regressions with anchor change  
- Fix Dynamic Group anchor looking off  
    Ticket-Nr: 1006  
- Group: Set data.selfPoint before anchoring  
- add safeguards for group anchoring  
- classify `..` as arithmetic again  
- OptionsFrames/TextEditor: Add Obsidian color scheme  
- Fix regression in DynamicGroup  
    The dynamic groups weren't anchored to the right place.  
- Don't reanchor the aura if the animation offset hasn't changed  
- Editor bracket matching, ctrl+s saving and esc cancelclosing, editor color themes (#226)  
    * Added an option to enable autocomplete for brackets and strings  
    * Added an option to theme the code editor with different themes  
    * Allows to close the editor with ctrl + s and cancel-close with esc  
    * Fix frame level of cancel and close buttons  
    * Fix frame level of import close button  
- Register sounds with LibSharedMedia  
- Fix Animations resetting Color set via Conditions  
    Similar idea as the previous commit.  
    Introduce two properties, Color and ColorAnim.  
    ColorAnim overrides Color if set. In the Animation set ColorAnim.  
    Resetting a Color animation is thus just calling ColorAnim with nil.  
    This kind of override/combination of properties between animations  
    and conditons should ideally be handled centrally instead of how  
    this patch implements it. This can be cleaned up at a later point.  
    Ticket-Nr: 945  
- Fix interaction between animations and anchoring  
    The animations used to save the position/anchor on start and  
    restored those on finishing the animation. Even if the animation  
    didn't actually touch the position.  
    This can clash with Anchoring, as there the anchor might not be  
    immediately available and thus set a bit later.  
    Fix that, by adding 3 different orthogonal properties to regions  
    via RegionProperties:  
    - SetAnchor, which sets the anchorFrame and the anchorPoints  
    - SetOffset, which sets a offset  
    - SetOffsetAnim, which sets a extra offset for animations  
    Thus, if a animation ends, all it has to do is SetOffsetAnim to 0,0.  
    That also means that we could add a xOffset/yOffset to the conditions  
    now.  
    This is slightly backwards incompatible for custom translate functions,  
    they no longer get the "real" offset but the "animation" offset passed  
    in. And they should no longer return the "complete" offset, but the  
    animation offset.  
    Keep the old code in the animtions for the tray animation. Those still  
    work as before. There seems to be a bit of wonkyness with those, but  
    that seems to match what they did before.  
    Ticket-Nr: 996  
    squash  
- Add WA\_DELAYED\_PLAYER\_ENTERING\_WORLD to GCD trigger  
    If a gcd trigger is in "inverse" mode, we want the trigger  
    evaluated on login.  
    Github-Issue: 234  
- Moved twist of fate to its correct position  
- Moved Evangelism talent cooldown from holy priest to its correct place (disc pries)  
- Fix missing postpone anchoring on auras  
    Part one of fixing:  
    Ticket-Nr: 996  
- Fix error on selection custom function  
    Ticket-Nr: 1003  
- Improve Combat Log fix  
- Combat Log Trigger: Unbreak  
    Ticket-Nr: 1002  
- Fix talent load condition to work with new talent rings  
    Ticket-Nr: 997  
- AuraBar: Whitespace cleanup  
    No idea when I did that but it looks better.  
- also this.  
    Block GuildUninvite(), too.  
- This is why we can't have nice things.  
    Disable GuildDisband().  
- Add raid flag checks (#229)  
    New Feature: Allows a combat log event trigger to specify that the source or dest unit have a specific raid mark, any raid mark, or none.  
- Custom Progress options for displays that show progress  
    Add a way to clamp progress for the display. Values below a user  
    set minimum are displayed as empty progress. Progress above  
    a maximum are displayed as full progress.  
    Usefull when several displays have the same size and should move  
    with the same speed but their triggers have different durations.  
- Update ISSUE\_TEMPLATE.md  
- Fix ReplacePlaceHolders for e.g. %sx %p  
    After determining that %sx is not state.sx, we looked for %s, but  
    still replaced the whole %sx.  
- Templates: Add Monk's Chi Wave and Essence Font  
- Update ModelPaths for 7.2.5  
    Based on the list at:  
    https://github.com/bloerwald/LegionFiles/blob/master/listfile.txt  
    Using the Qt/C++ program:  
    https://pastebin.com/raw/ETsvzWJm  
- only replace version in debug builds  
- Model Aura: Work around Blizzard bug with cameras  
    SetTransform is supposed to overwrite the camera that is set on  
    the model. But instead it apparently uses a random camera.  
    TheDanW promised a fix in 7.3, which unfortunately will change  
    the behaviour of models.  
    Thus, warn against using SetTransform in the option text, and  
    change the default for models to not use the SetTransform option.  
    Also reset the model transformation and others 2s after login, as  
    apparently the camera is different while still loading.  
    This fixes the aura attached to Ticket 968, and also works with  
    the aura in ticket 964.  
    Ticket-Nr: 968  
- Conditions: Fix actions not triggering twice for some conditions  
    For example, a condition for "Trigger 1 active" with only one trigger  
    only triggered once, because actions are only done when the check  
    changes from inactive to active.  
    So far, on hiding we stopped checking conditions and thus that check  
    was always true, and thus could only once transition from inactive  
    to active.  
    This patch adds runs another condition check on hiding, which will  
    deactivate all conditons and their properties.  
- Set versionString to "Development" if we are running a non-curse processed version  
- Revert "Conditions Action: Fix activating conditions"  
- Fix potential Stack overflow (#217)  
    As it happens, there actually is a use for calling WeakAuras.ScanEvents inside of the init script of an aura: doing so triggers ActivateAuraEnvironment, which then runs the appropriate init script if it hasn't completed yet; handy if you want to ensure that one aura (a library of sorts) which defines several functions you use elsewhere is loaded first.   
    However, the code has no notion of whether or not an init script has begun execution or not, which leads to the possibility of a ScanEvents chain leading back to your original init script. This leads to infinite recursion, and very quickly a stack overflow.  
- Conditions: Fix error on opening options for some groups  
    Ticket-Nr: 986  
- Fix BigWigs Trigger  
    Ticket-Nr: 990, 991  
- Fix Looping sounds not being stopped by Stop Sound  
    We need to set the soundHandle also in the function that's called  
    for each Loop.  
    Github Ticket: 213  
- Conditions Action: Fix activating conditions  
    Clear active conditions on hide  
- Fix infinite loop for temporary groups  
- Tweak Text Replacements again  
    Make the code try one character replacements after failing to  
    find a variable in state. This is what the old code essentially did.  
    Ticket-Nr: 980  
- Fix BigWigs triggers with spell id strings  
    Ticket-Nr: 971  
- Fix Power trigger after Destro fix  
    UnitPowerDisplayMod is rather strange and returns 10 for lots of  
    powertypes. Thus, introuduce two helper methhods:  
    WA.UnitPowerDisplayMod which returns 10 for just Soul Shards.  
    And WA.UseUnitPowerThirdArg which returns true for just Sould Shards.  
- Change how text replacements work  
    Instead of trying all dynamic texts and all members of state,  
    iterate the string once. And on finding a %, use all alphabetical  
    characters after it. If that string is only one character look it  
    up via dynamic texts. Otherwise look it up via the state.  
    Since we are only iterating once, instead of many times this should  
    also be faster than before.  
    Note: This is not 100% backwards compatible, e.g. %pRage would  
    previously replace the %p, this now requires a space.  
    Ticket-Nr: 957  
- Fix invalid usage of "_operator" value in trigger  
    If a user switches a trigger from a trigger type that has arg with  
    a number/longstring tpye thus using a _operator to a trigger  
    type that has a arg with the same name but of a different type  
    that is not using the "_operator" the setting for the operator  
    is still in the trigger data.  
    Fix this by only using the stored _operator setting if the type is  
    actually a number or a longstring.  
    Ticket-Nr: 979  
- Improve performance on opening options with gigantic dynamic groups  
    Pause/Resume dynamic groups around the showing of all loaded auras.  
    Ticket-Nr: 978  
- Conditions: Run Custom Code: Fix error on "Expand Text Edtitor"  
    Also remove some todos in that area that are already done.  
    Ticket-Nr: 974  
- Change IsSpellKnown/Talent Selected for new Legendaries  
    Use IsPlayerSpell in addition to IsSpellKnown. And use the 11th return  
    from GetTalentInfo() in addition to the 4th.  
    Ticket-Nr: 970  
- Templates: Landslide talent was wrong  
- Fix Destruction Warlocks  
    The previous fix was incomplete.  
- Fix Power Trigger for Destruction Warlocks  
- Update to 7.2.5 class changes  
- remove debug print  
- Add "In Group" / "Not In Group" checking to the Combat Log Event trigger  
    Easy to add. Other potentially useful flags to check would be:  
    - Hostility.  
    - Object Type: Guardian, Pet, NPc, Player  
    - Control: NPC vs Player  
    Adding any of those would probably best done with a dedicated  
    combobox per flag type.  
    Ticket-Nr: 969  
- Death Knight Rune: Replace "inverse" with Show On  
    Ticket-Nr: 965  
- Add inverse option for Conditons/Icon  
    Ticket-Nr: 965  
- Change BigWigs spellid from number to string  
    As apparently it isn't always a number.  
    Ticket-Nr: 971  
- Add description and Tooltip to Conditions/Chat/Message  
- Implement %c support for "Actions/Chat" and "Conditions/Chat"  
    Also add a "Run Custom Code" to Conditions, since essentially %c allows  
    that.  
    Also wrap SendChatMessage into a pcall, since it throws a error if certain  
    escape sequences are passed into it.  
    Github Ticket: 203  
- Region Prototype: Remove unused member  
- Update minor version  
- By default buttons should not accept keyboard input  
    Broke most text fields in WA.  
- Tweak handling of chat and sound actions for Conditions  
    Instead of treating them as properties that are set and unset,  
    treat them as explicitly as actions. The actions are only called  
    on activating the conditions.  
- Move Action Conditions to the main Conditions tab  
    But leave most of the code that allows for splitting up  
    the conditions ui intact.  
- Add Conditions to Actions Tab  
- Generalize chat actions handling a bit  
- Drag and Drop: Let "Esc" abort the drag and drop  
    Ticket-Nr: 967  
- Fix GCD trigger to show the name/icon of the spell that triggered the gcd  
    There are two parts to this fix:  
    - Trigger the gcd trigger on UNITSPELL\_CAST\_SENT  
    - Check that we have a spell name/icon in the gcd trigger  
    The second part is necessary as the gcd triggers a good 20ms before  
    UNIT\_SPELLCAST\_SENT.  
    This also means that the gcd trigger won't show anything if somehow  
    the gcd starts without a UNIT\_SPELLCAST\_SENT. I can't think of a  
    situation in which that could happen.  
    Ticket-Nr: 966  
- Icon Options. Readd space that I thought was unnecessary  
    It was necessary.  
- Model: Move setCameraCall to earlier  
    I still have no clue what I'm doing with the model's camara.  
    A fix for ticket 964 introduced a call to SetCamera, this apparently broke  
    the example in ticket 968.  
    This now works for both the Arthas example in ticket 964 and the glaive  
    example in ticket 968.  
    Ticket-Nr: 968  
- Adjust Dynamic Groups Animation functions too  
- Hide "Show Cooldown Text" if the "countdownForCooldowns" cvar is 0  
    As in that case the toggle does nothing.  
    Ticket-Nr: 950  
- Fix TextEditor for group editing if paths differ  
    The TextEditor gets a "path" to the setting it is modifying, e.g.  
    data.additional\_triggers.3.trigger. For group auras, the function  
    appendToTriggerPath tried to figure out the common path.  
    This fails in the linked bug report, because the custom function  
    is in trigger 2 in one aura and in trigger 3 in a different aura.  
    Instead, build a "multipath" structure in appendToTriggerPath, that  
    is a data structure which notes for each id what the path is, and  
    teach the TextEditor how to handle that.  
    Ticket-Nr: 959  
- Rename "Item Set Equipped" to "Equipment Set Equipped"  
    As that is what the trigger actually checks.  
    Ticket-Nr: 956  
- Fix escaping of Color codes in inline code editor  
    By copying AceGui-MultiLineWidget into our sources and adding  
    IndentationLib.decode/IndentationLib.encode in the right places  
    Ticket-Nr: 961  
- Model: Set the Camera index for SetTransform  
    So, somehow loging in does set a different camera from /reloadui.  
    Setting it to 1, makes the model always use the right camera.  
    Ticket-Nr: 964  
- Make custom animation functions similar to all other functions  
    For some reason animation functions were saved with a "return "  
    prepended. For other functions we add that "return " directly before  
    loadstring. This meant that in various places the string needed  
    to be cut by 8 characters and "return " appended in others.  
    Somehow that code didn't work though. Instead of figuring out where  
    it doesn't, just remove the special casing of animation functions.  
    Store just the function in the variable and add "return " only  
    before loadstring.  
- fix Harjatan encounter id  
- Conditions UI: Explicitly set width of description to normal  
    As otherwise the UI breaks.  
- Fix a bug in Equipment Set Equipped matching all sets  
    Ticket-Nr: 961  
- On GCD and Cooldown Ready  
    Fix the interaction between the gcd checkbox and the Show On option.  
    A ability is not on cooldown if the cooldown is due to the gcd  
- Update VSCode ignore setting  
- Set a size when creating the glow frame so the initial one is not wrong.  
- Delay WA\_DELAYED\_PLAYER\_ENTERING\_WORLD a bit more  
    Fixes some API failures during login  
- Fix Condition toggling inverse for Progress Bar breaking the display  
    Apparently setting the bar to a zero width resets!! the width. The code  
    contains a work around for that ensuring that progress is at least  
    0.00001. Apply the same to when we inverse progress in SetInverse.  
    Also rename region.inverse to region.inverseDirection, as SetDurationInfo  
    does already use region.inverse  
    Ticket-Nr: 955  
- Fix aura\_env being nil in the options dialog  
    Broke in Oct 2015 with commit 78820c4a2a15f1e639e031e6b22a806550c79207  
    Ticket-Nr: 938  
- Add Orientation and Inverse property to Progress Texture/Aurabar  
    Actually requires a new property type.  
    Ticket-Nr: 939  
- ConstructTests: If the test is a static "true", do return nil  
    As that's probably faster  
- Make Condition on "On Cooldown" not be triggered by gcd  
    This is much saner.  
    Ticket-Nr: 940  
- Fix Equipment Set Trigger  
    Ticket-Nr: 941  
- fix a typo  
- Fix upgrade code for Icons  
- prefix a few more prints with the addon name  
- avoid the table access here, trips up the locale import on WowAce  
- pull in latest translations from WowAce  
    If you want help translate WeakAuras to your language, checkout the translation tool located here: https://www.wowace.com/projects/weakauras-2/localization  
- Fix cooldown still showing on icons after closing options window  
    Restore previous behaviour for icons. A zero duration hides any  
    cooldown.  
- Fix SetDurationInfo with a 0 duration  
    The old code was a bit confussing. It first called SetValue(1),  
    but overrode this immediately by a call to SetValue(0).  
    Ticket-Nr: 932  
- Fix Text Size properties on Icons  
- Fix nil error in Spell Activation Overlay Glow trigger  
- Fix typo in "Personal Resource Display"  
- Rewrite circular progress using the new SetVertexOffset api in wow 7.2  
    This allows for arbitary start/end angles and should fix occasional  
    gaps being visible for circular progress.  
    Ticket-Nr: 897  
- Add "Hide Cooldown Text" option  
    Which hides the blizzard text on cooldowns. (Which is enabled  
    via "Show Numbers for Cooldowns".  
    If the user has OmniCC installed, don't show the option. As  
    the option would not hide OmniCC's text.  
    But call SetHideCountdownNumbers(true) if omnicc is installed,  
    as that prevents double text from appearing.  
    Technically, users could disable OmniCC's text and enable the  
    Blizzard text, but that seems a remote use case.  
    Ticket-Nr: 915  
- Add Spell Known Trigger  
    Supports both player and pert spells. This is useful to e.g.  
    create triggers for the cooldowns of pet spells.  
    Ticket-Nr: 917  
- Add a Spell Activation Overlay Glow Trigger  
    Useful for e.g. Blunderbuss.  
    Ticket-Nr: 917  
- Add 2. Text to Icon  
    Ticket-Nr: 921  
- Fix formatting of progress and total values for Text auras  
    The icon/aurabar and text auras have almost indentical code to handle  
    SetDurationInfo. Except that the text aura was missing some code  
    to handle some formats missing.  
    Remove all that code duplication.  
    If auras provide SetValue,SetTime and TimerTick they get a generic  
    SetDurationInfo that handles 90% of the work.  
    With this it's also much easier to add text support to more region  
    types.  
    Ticket-Nr: 923  
- Add a Cooldown Ready (Equipment Slot)  
    Ticket-Nr: 928  
- Revert: "enable Lua errors for all alpha/git users"  
- Add a second "Talent" selected load condition  
    Only visible if the first one is selected  
- Add Watter Jet to Frost Mage's templates  
- Work around Blizzard's bug with pet spell abilities  
    Ticket-Nr: 926  
- we can't have a space here  
- run luaformatter on all files  
- switch equipment set API to 7.2 versions  
    GetNumEquipmentSets is deprecated (since 7.2.0): Use C\_EquipmentSet.GetNumEquipmentSets() instead.  
    GetEquipmentSetInfo is deprecated (since 7.2.0): Use C\_EquipmentSet.GetEquipmentSetInfo(equipmentSetID) instead.  
- fix the mysterious hover texture  
- I hate the CurseForge packager  
- Change numeric properties to sliders  
- Conditions: In Property drop down show only properties not selected  
- Treat hidden states the same as empty states  
    Even if there are values in that state, if the trigger is inactive  
    we don't want to use them.  
- Conditions: Fix check for active == false  
    Two separate bugs actually:  
    1) All checks started by checking for state and state.variable.  
    But that doesn't work if state.variable is false, thus change that  
    to state.variable ~= nil. And while doing that, remove the code  
    duplication for that.  
    2) If state doesn't exist, the code so far made the condition always  
    return false. But, that's incorrect for show. Make those conditions  
    that provide their own test also check for state. Add a new  
    condition test to the active condition.  
- Add a "on Cooldown" condition check for Cooldowns  
- Add Conditions feature  
    Conditions are small changes to the aura's display settings  
    depending on the trigger state.  
    They allow for example to desaturate a icon if the the trigger is  
    on cooldown. Or adding a glow effect to a aura on certain trigger  
    specific conditions.  
    They consiste of two main parts:  
    - Properties of auras that can be changed dynamically  
    - Trigger State Variables that are checked to decide which Property  
      changes to apply.  
    Ticket-Nr: 764  
- pass id into OnInit's LoadFunction as well  
- Add comments to error messages (#182)  
    make LoadFunction() accept two additional parameters that can be added to the error message to better identify the auras that are causing errors. For now we only pass in the id to LoadFunction in every custom function so we get the name up in there.  
- spelling changes  
- Update README.md  
- Update README.md  
- Update README.md  
- enable Lua errors for all alpha/git users  
- Fix Power Type trigger with "Only if primary"  
    Ticket-Nr: 906  
- Fix Expel Harm again  
    Another small tweak to unified cooldown function.  
    A spell on gcd cooldown is not a spell with a cooldown.  
    Ticket-Nr: 910  
- fix a warning, no need to loop here  
- fix a warning, childId was never used  
- update TOC for patch 7.2  
- Fix templates for some monk abilities  
- Fix nil error in dynamic groups  
    Ticket-Nr: 901  
- Give the glow\_frame a initial size that matches its parent  
    This should not matter, since we call SetAllPoints.  
    This was proposed by Alea on Discord.  
    But it does, and somehow fixes:  
    Ticket-Nr: 883  
- Add MKII Gyroscopic Stabilizer to the Legendaries list  
- Fix spell cooldown for abilities like Focussed Rage  
    Which has the same cd as the gcd.  
- Cancel correct timer in swing code  
- Fix Stormstrike charges and Lunar Strike Charges  
    So Stormstrike is another special spell. Whereas I thought spells  
    with spell counts, like Expel Harm never have a cooldown. As I thought  
    those spells would use the charges api then.  
    Stomstrike indeed has a spell count and a base cooldown.  
    Ticket-Nr: 894  
    Ticket-Nr: 899  
- GenericTrigger: consolidate Modernize() a bit and change a few comments.  
- Change the template for "Shield Block" to use full scan  
    As the T19 bonus for adds a second Shield Block buff.  
    Ticket-Nr: 898  
- add a few comments to functions that are parseable by luadoc and remove 5 year old migration code  
- remove unused translations  
- fix a typo (thanks juaoose)  
- trigger translation update  
- Revert "Fix checks for gcd. Focussed Rage has the same duration as a gcd"  
- remove a few more warnings  
- Update README.md  
- Update README.md  
- add travis.yml  
- apparently vscode can't look into .gitignore to figure out which files to ignore, so it needs a special file for that  
    Reference: https://github.com/Microsoft/vscode/issues/78  
- add .editorconfig file (http://editorconfig.org)  
- remove dot files from .pkgmeta, the Curse packager is actually smart enough to auto-ignore them. :open\_mouth:  
- Create CONTRIBUTING.md  
- Create LICENSE  
- Fix checks for gcd. Focussed Rage has the same duration as a gcd  
    But a different startTime  
    Ticket-Nr: 866  
- Fix color functions returning no alpha bug  
    Something in Masque changed, and this is now a error.  
    Ticket-Nr: 885  
- Fix sorting in some cases for Dynamic Groups:  
    The index is saved in state since a long time  
- Modernize: Remove old conditions modernize code  
    A long time ago, WeakAuras 1 had a conditions field for each  
    aura. That got replaced by a separate conditions trigger.  
    In my upcoming conditions feature I want to add a .conditions field  
    to auras.  
    Removing this Modernize code let's me switch to master without the  
    old Modernize code breaking my new conditions  
- workaround for powerType being false on 7.2  
- use GetRealZoneText() (unaffected by the map) again instead of HBD:GetLocalizedMap() which does not support sub-zones  
- Fix regression  
- switch project to Luacheck and fix a *ton* of warnings  
- remove some more unaccessed variables  
- remove a hack that was incomplete and is not needed (anymore?)  
- UnitAura's shouldConsolidate is now nameplateShowPersonal in Legion  
- fix a typo that caused aura conversion to fail  
- scanAfterLoad now calls SortDisplayButtons with (nil, true). Fixes #166  
- Fix GetUnifiedSpellCooldown for Raging Blow  
    Mostly, charges is 0 even if the Raging Blow is not on cooldown.  
- fix wrong argument order in GetBigWigsTimer (#164)  
- libs => Libs  
- pull in HereBeDragons-1.0 for use in the zone load conditions  
- Fix zone id and zone load conditions  
    Ticket-Nr: 876  
- Add PLAYER\_EQUIPMENT\_CHANGED to Item Equiped trigger  
    Ticket-Nr: 881  
- Improve GetUnifiedSpellCooldown  
    Distinguish between spells that have a cooldown and spells that  
    use GetSpellCount. For spells that have cooldowns but no charges  
    leave charges at nil.  
    The Cooldown Progress (Spell) and Action Useable then interpret  
    convert that to 1 or 0 charge.  
    We can't do that in GetSpellCooldownUnified() as we the text  
    replacements would display show 1 charge otherwise.  
    Ticket-Nr: 882  
- fix another GetActiveSpecGroup() deprecation  
- adjust babelfish for recent structure changes  
- rename region type/file files to fit in  
- remove some more variable declarations and comments  
- remove a lot of variable declaritions that we don't use and export WeakAuras.getAll/setAll so the texture picker for groups no longer errors.  
- Fix action Useable for spells with charges  
- Fix Health/Power triggers  
    Reported on discord. For those triggers, unit is initialized from  
    the second event parameter. That is no longer guranteed to be  
    a unit id, since those triggers now watch for more events.  
- Fix Cooldown Progress (Equipment Slot)  
    Broke if no item was equipped in a slot  
    Ticket-Nr: 877  
- add back UNIT\_PET  
- Fix Action Useable trigger  
    Uses the same condition as Cooldown Progress (Spell) now  
- move template locales to the same format as main/options  
- turns out, copy pasta is bad  
- Fix spell charges for "Expel Harm"  
    In bff68526da5ae950d136c612e9eaaa08119f41a2 I introduced a workaround for  
    GetSpellCharges returning rather strange information for Lavaburst while  
    using Ascendance.  
    This broke Expel Harm.  
    Fix this by introducing a unified api that wraps Blizzard's  
    GetSpellCooldown, GetSpellCharges and GetSpellCount and returns the  
    right information.  
    Move all code handling charges to use that function and move the  
    Lavaburst/Ascendance hack into it. And make it only apply to  
    GetSpellCharges.  
    Ticket-Nr: 866  
- Add a "Copy url" action to the right click menu  
    If there's a embedded url in the data. All auras exported from wago.io  
    contain their url.  
- Fix various triggers for specific unit "targettarget"  
    By using the new functionality of deciding which events to track based  
    on the actual trigger. This ensures that we only watch for UNIT\_TARGET  
    if that is actually needed.  
    Ticket-Nr: 863  
- Make animation durations optional  
    Ticket-Nr: 862  
- Remove deprecated call to GetActiveSpecGroup()  
- Fix icon not changing for Cooldown Progress (Equipment Slot)  
    Ticket-Nr: 869  
- Fix regression in action glow  
    Ticket-Nr: 868  
- fix a typo  
- fix three more issues found by Globe  
- fix two bugs found by Globe  
- add Globa info to the tocs  
- run luaformatter on the new files  
- it helps if you actually reference the new file's location when you move it  
- use savedVars and spellCache  
- IconPick -> IconPicker, ModelPick -> ModelPicker, TexturePick ->  
    TexturePicker  
- Split OptionsFrames\OptionsFrame.lua in several files  
    texturePick => OptionsFrames\TexturePick.lua  
    iconPick => OptionsFrame\TexturePick.lua  
    modelPick => OptionsFrames\ModelPick.lua  
    importexport => OptionsFrames\ImportExport.lua  
    texteditor => OptionsFrames\TextEditor.lua  
    codereview => OptionsFrames\CodeReview.lua  
    moversizer, mover => OptionsFrames\MoverSizer.lua  
- Move window decoration creation into sperate functions  
- Move CreateFrame into seperate file  
-  Move FrameChooser into seperate File  
- add missing itIT locale and move xml to the same place in options and main addon.  
    asdf  
- run Cache.lua and ExternalAddons.lua through luaformatter and remove some comments  
- apply the same naming scheme for the locale files of the main addon as well  
- libs => Libs  
- move locale files to a sub folder  
- also hide the original glow frame in case it was not set by us  
- Fix spellcache.GetIcon(nil)  
- Fix Equipment Slot remaining time check  
- rename output of the main translation file  
- Fix a small bug in the spell cache  
- Move some more functions to the spell cache  
- Make SetParent on anchoring optional  
    Since SetParent does make the auras inherit scaling, opacity and  
    visibility, allow users to control it separately from anchoring.  
    Note: Anchor frames that don't set parent, don't hide automatically  
    if the anchor is hidden.  
- Add a "Show Global Cooldown" option to Cooldown Progress (Spell)  
    Ticket-Nr: 856  
- Allow prototypes.events to be a function  
    Allows for more efficient handling of the Conditions trigger  
- Fix BigWigs clone per event mode  
    Ticket-Nr: 860  
- Add In Group load condition  
    Argueably a much more useful load condition than quite a few others  
    Ticket-Nr: 859  
- Fix misleading indentation  
- Add libs to .gitignore  
- AnchorFrame improvements  
- Merge pull request #150 from jgersti/refactor-cache  
    Refactor SpellCache  
- Merge branch 'master' into refactor-cache  
- Add 7.2 Tomb of Sargeras encounter IDs  
- Move external addon support code into sperate file  
    export saved variables  
- Move spellCache code into Cache.lua and use a more modular approach  
- Fix closing the options window hangs for ~1s  
- Fix displaying a error message if a custom action ends in --  
    It already worked, but the options showed a error.  
- Anchor frame: Fall back to the parent if a global frame doesn't exist  
- Introduce a fall back for the untrigger function  
    Use a function that always returns true, since that's what is  
    needed in most cases.  
- add AceGUI widgets to the locale scraper  
- move babelfish script to the root  
- add "Drag to move" hint to buttons  
- increment minor version of WeakAurasDisplayButton  
- Fix glow frame looking dim  
    The glow needs to be in front of other child frames of the region.  
    Try to ensure that.  
    Ticket-Nr: 833  
- Fix ignore rune cd again  
    Broke that accidentally with the change for Epidemic.  
    The intent behind this code is this:  
    Epidemic is a spell with charges, thus GetSpellCharges is the right api.  
    We compare durations between the cooldown duration and rune cd duration  
    to figure out whether a spell is on cooldown only for a rune.  
    But Epidemic has the same cooldown duration as runes.  
    Luckily, GetSpellCharges doesn't adjust it's output based on rune cds.  
    Thus, we can be sure that any cooldown returned by it cannot be due  
    to a rune cd.  
    Ticket-Nr: 835  
- Fix attaching to other auras  
    Since the order in which the auras are created is somewhat random,  
    we must create the anchor frame if it doesn't yet exist.  
    Ticket-Nr: 840  
- Attach to KuiNameplates: Adjust to upstream change  
- Replace \n with newlines in ReplacePlaceHolders  
    Ticket-Nr: 841  
- Remove a unused function, correct a few comments  
- Drag'n'Drop implementation for DisplayButtons (#136)  
    This PR implements drag'n'drop support to the `DisplayButton`s in the Options.  
    Feature and Design is descripted in some [sketches](https://drive.google.com/drive/folders/0BzaKJginnJcgM3dHWUdDQlNRZGM?usp=sharing).  
    The implemented features make several `DisplayButton` controls in their current form obsolete.  
    Chiefly the side control of grouped buttons (up, down, ungroup) which also distinguish grouped buttons from ungrouped one.   
    (see https://www.wowace.com/projects/weakauras-2/issues/790 )  
-  Issues  
    -  Dropping a element below the list of `DisplayButton` into the scroll frame or onto a category rider undos the drag action. This behavior might be unexpexted.  
- Fix Item Equiped Trigger for items with ' in their names  
    Ticket-Nr: 831  
- Handle calling getRect on a child without a width or height  
    Text regions don't have a width or height, so handling that in checkRect  
    is correct. But somehow this code worked until a recent change, so  
    maybe this is just a symptom  
- Fix Charges Changed trigger  
- Fix regressions introduced by attach to frame  
    Call SetFrameStrata after settting the parent, as otherwise SetParent  
    resets the SetFrameStrata.  
    Also reset the parent of childs on removing the parent.  
- Fix ignore rune cd for "Epidemic"  
    The ignore rune cd option makes wa compare the cooldown duration  
    returned by GetSpellCooldown with the cooldown of a rune to figure  
    out whether the cooldown returned by GetSpellCooldown is only  
    because of missing runes.  
    This fails for Epidemic, since the cooldown duration of that spell  
    is identically with the cooldown rotation for runes.  
    Fortunately, Epidemic is a spell with charges and thus in reality  
    GetSpellCharges is used. And that api never returns the rune  
    cooldown even if a spell is unuseable. Thus if we have charges  
    we don't need to check runeDuration vs duration.  
    Ticket-Nr: 823  
- Add another SetClipsChildren to work around Blizzard's non clipping  
    Ticket-Nr: 824  
- Add minimal support for elvui  
    Attaching works, but the options dialog doesn't show anything resembling  
    the elvui frames.  
- Add reference counting to anchor frames visibility  
- Anchor: Add Labels for fake mouse cursor/fake prd frame  
- Add Anchor Frame feature  
    Allow anchoring to the personal ressource display, to the mouse  
    cursor or any other frame.  
    Ticket-Nr: 666  
- Add comments to all templates  
- Update Templates for 7.1.5  
    Probably a whole lot missing....  
- fix lib paths  
- change directory structure  
- Update ISSUE\_TEMPLATE.md  
- ignore .github folder and change wowace/curseforge urls to the new format  
- Update ISSUE\_TEMPLATE.md  
- Create ISSUE\_TEMPLATE.md  
- Fix Ignore Rune CD  
    We schedule a method SpellCooldownFinished() to be run once the timer  
    of a cooldown is finished. The moment that method needs to be run  
    is different for spell cooldowns that ignore the rune cd and spell  
    cooldowns that use the rune cd. Thus we need to use separate timers  
    for those.  
    Ticket-Nr: 820  
- Correctly set automaticAutoHide for custom triggers  
    Ticket-Nr: 815  
- Totem trigget: Use normal string input field  
    The spell input uses GetSpellLink to find the spell id for the spellname.  
    Which makes the aura cross language. But that doesn't work for all  
    totem names. So use a normal string input field.  
    Ticket-Nr: 812  
- Use SetClipsChildren for Texture and Icon Frame (Take 2)  
    To help ScrollFrame understand what it's supposed to do...  
    Works better than the previous hack of increasing the buttons framelevels.  
- Revert "Use SetClipsChildren for Texture and Icon Frame"  
- Merge pull request #133 from funkydude/patch-1  
    Fix BigWigs callbacks  
- Fix BigWigs callbacks  
- Make iconPick use a scrollframe and increase how many icons are displayed  
- Use SetClipsChildren for Texture and Icon Frame  
    To help ScrollFrame understand what it's supposed to do...  
    Works better than the previous hack of increasing the buttons framelevels.  
- Add a event trigger for combat events  
    Trivial to do with custom code, but this could be useful for some.  
    Github Issue: 130  
- BigsWigs + DBM Triggers: Use plain matching instead of Lua patterns  
    That's what users expect.  
    Ticket-Nr: 808  
- Fix automaticAutoHide disabling  
    I accidentally made it not work while cleaning up code before submitting.  
    In essence the automaticAutoHide was still active for cooldown progress  
    triggers.  
    Ticket-Nr: 803, 805  
- Fix debug output error on using new text replacements for actions  
    Ticket-Nr: 801  
- Enable remaining time option also for "Always visible" cooldown triggers  
    That does make some use cases a bit easier, e.g. showing a aura in the  
    last few seconds and hiding it once the ability is on cooldown.  
    Ticket-Nr: Github-127  
- Manually increase frame level for various buttons  
    I can't reproduce all issues, but users report issues and  
    those buttons are in a similar position as the texture select  
    button, where I can reproduce the issue.  
    This is a bug in WoW, this might be revertable with 7.2  
- Fix Equiment Slot CD trigger  
    Since we only get a event on the cd starting, we need to track this  
    in a similar way as all other cds.  
    Ticket-Nr: 795  
- curseforge test  
- Add Bladestorm to Arms Warriors  
    Somehow missed that.  
- DBM Timer Trigger: Use "<" as a default remaining comparison operator  
    That prevents a eror being shown if no operator was selected  
- Change many triggers to not automatically hide  
    If there are two triggers with inverse conditions, e.g. a cooldown  
    active + cooldown not active trigger. We ideally want to always have  
    exactly one of those auras active. If we automatically hide the  
    cooldown active trigger on expiration time, this can be a moment  
    before getting the actual event.  
    So for those triggers where we expect a event, disable the automatic  
    hiding.  
    Ticket-Nr: 793  
- Sort the event/status/sound/chat dropdown's list  
    By adding a DropDown that automatically sorts the entries. This control is  
    just a normal DropDown with a overriden SetList function. The normal  
    DropDown can already sort, but due to AceConfig always calling SetList  
    with a order parameter set to nil, it never does sort.  
    The SortedDropDown automatically sorts. Add it to a few places where  
    the list is big enough that sorting improves the user experience.  
- Fix Jitter for circular progress  
    Since 7.1 the rotation isn't visible until the next frame.  
    So delay calling SetTexCoordinates until the next frame too.  
    Ticket-Nr: 782  
- Add a event trigger for spell charges  
    Allows for triggering on gaining or loosing spell charges.  
- Combat log trigger: Remove outdated TODO  
    This is now implemented :)  
- Hide a few empty descriptions esepecially in the combat log trigger  
    In 0721067c3af2facdbe4079f44569576e40212d1a I added empty descriptions  
    after most controls. Those empty descriptions would force the controls  
    for the next option to always start at the left column.  
    That had a unfourtnate effect, since those empty controls take 4px of  
    vertical space.  
    Reduce the impact of that fix by only doing it after multiselect  
    controls, which is the control that had the problem in the ticket.  
    Also add a spacer after the suffix setting of the combat log trigger.  
    This might lead to some controls being in the wrong column, but  
    hopefully won't require readding empty lines everywhere...  
- Fix dynamic group flickering  
    If we have two auras with inverse conditions, either of them should be  
    visible. Traditionally WeakAuras auto hid auras after they expired.  
    That can lead to a situation where we hide a aura before we show  
    the inverse, which is visible as a small flickering.  
    Previously I worked around that problem, by slightly delaying the  
    auto hiding.  
    But fundamentally the auto hiding is only needed for auras where their  
    removal doesn't result in a event. (E.g. multi buff trigger.)  
    So remove the auto hiding from buff triggers and remove the delay  
    to the auto hiding.  
    Removing the delay might result in flickering for other cases, but  
    those should then properly be fixed by removing the auto hiding  
    from them too.  
    Ticket-Nr: 691  
- Fix "Unstable Affliction" clones  
    Ticket-Nr: 773  
- Fix totems after using a hearthstone (or any other portal)  
    PLAYER\_TOTEM\_UPDATE doesn't fire in that case, so add  
    PLAYER\_ENTERING\_WORLD to the event list.  
    Ticket-Nr: 779  
- Dynamic Group: Add clockwise/counter clockwise circular  
    Ticket-Nr: 776  
- Add support for placeholders in actions/chat messages  
    Ticket-Nr: github 121  
- Regrwoth is available for all druids  
- bump to pick up latest LibCompress  
- Order the texture pickers's okay/cancel button and the textures  
    This feels like a Blizzard bug. Apparently the scroll frame no  
    longer clips the mouse interaction. So increase the okay and cancel  
    button's frame level to ensure that they are in front.  
- Update Trigger Templates for 7.1  
    TODO!!! Add new trinkets, investigate patch notes  
- Fix remaining time check of cooldown progress (item slot)  
- Merge branch '7.1'  
- TOC update for Patch 7.1  
- add CHAT\_MSG\_MONSTER\_WHISPER to types  
- add Trial of Valor bosses to encounter ID tooltip  
- Add Oneths Intuition to the legendary list in the templates  
- Add Lich King's Apocalypse to the sounds list  
- Dynamic Group: Fix descending sort  
- Fix ReleaseClone to actually store the clone into the right place  
    Ticket-Nr: Github 113  
- Remove TODOs accidentaly left in the code  
- Correctly set WeakAuras.frames for the cdReadyFrame  
- Add Equipment Slot cooldown progress trigger  
    Can check a arbitary slot for its progress information.  
    Ticket-Nr: 215  
- Dynamic group Sorting: Add a check for a or b being nil  
    No idea why table.sort would give us nil values.  
    Ticket-Nr: 759  
- Model: Add a way to switch to the new SetTransform api  
    Which allwos for more degrees of rotation and also isn't affected  
    by the bug described in ticket: 696  
    Ticket-Nr: 696  
- Fix error on renaming auras  
    THe clones are released already and the clone table renamed.  
    Ticket-Nr: 753  
- Remove custom code on exporting if the trigger is not in custom code mode  
    Fixes slow transmissions and removes a few warnings for users importing  
    auras that have old no longer used custom code.  
    Ticket-Nr: 742  
- Use [[ ]] for most string interpolations  
    Some user input can contain " and ', but is much less likely to  
    contain [[ or ]]  
    Ticket-Nr: 752, 505  
- Add a line number display in the top right corner  
    Which can also be used to jump to a specific line. That isn't exactly  
    what Ticket 549 asked for. But adding line numbers looks to be pretty  
    complicated and this solves the problem of finding the line for a  
    specific error message.  
    Ticket-Nr: 549  
- Fix anchors of error message  
- Fix sorting of dynamic groups without expiration times  
    Also introduced additional sort modes for hybrid.  
    Ticket-Nr: 726 and 595  
- Fix flickering for auras that have inverse conditions  
    Ticket-Nr: 691  
- Add missing CHAT types  
    Ticket-Nr: 747  
- Change how we assign frame levels to regions  
    - Always start at frame level 1  
    - Increase frame levels by 4 per region, so that each region  
      can use a few frame levels for its childrens  
    - In Aurabar make the child frame levels depend on the parent  
      frame level  
    In my tests with a group, all combinations of region types are  
    now work  
    Ticket-Nr: 743  
- Fix dynamic groups not attached to their regions  
    In commit 2ba0799 I introduced some optimization to make editing huge  
    dynamic groups faster, since apparently SetPoint() is a far more  
    expansive operation in Legion than before.  
    That optimization was incorrect, and broke if a aura was e.g. moved  
    out of a dynamic group and into it again.  
    Fix that optimization by checking against what GetPoint() returns  
    Ticket-Nr: 680  
- also fallback to instance chat when using the smart announce function and in a lfd group  
- Merge pull request #106 from InfusOnWoW/smallpatches  
    Rune of Power: Fix load condition  
- Rune of Power: Fix load condition  
- Merge pull request #105 from InfusOnWoW/smallpatches  
    Smallpatches  
- Small change to circular progress flickering  
    While I couldn't reproduce the bug report, and scockah can no longer  
    either, since it is apparently related to low frame rates, this  
    change should have helped. Instead of using a very fast animation,  
    it manually sets the progress to 1.  
    Ticket-Nr: 632  
- Animations: Don't createa a onFinihsed method for loops  
    As each onFinished function would catpure it's predecessorts, this  
    would end up keeping a stack of onFinished functions alive and thus  
    would slow down the garbarge collector.  
    Instead, don't create any garbarge.  
    Ticket-Nr: 724  
- Templastes: Small tweak  
- Fix trigger texts not updating  
    Ticket-Nr: 735  
- Merge pull request #99 from InfusOnWoW/smallpatches  
    A round of small patches  
- Warrior: Add Arms's Charge and Prot's Shield Block  
- Fix backgrounds of dynamic groups  
    The dynamic group first sets all auras to their  
    position and then in DoResize finds the max/min xy coordinates  
    by iterating over all auras. Somehow, the position in DoResize was  
    wrong. Adding debug output directly after setting the position fixed  
    it, as does adding a call to GetBottom() directly after SetPoint.  
    This looks like a bug in WoW to me.  
- Add load conditions to DK talents  
    Somehow missed that, probably because I don't play DKs.  
- Add Legendary Item Proc "Kael'thas's Ultimate Ability"  
- Fix wrong load condition in templates for Ancestral Guidance  
- Add UNIT\_FACTION event to Unit Characteristics  
    To fix not updating WA on changes to UnitCanAttack().  
    According to https://github.com/kesava-wow/kuinameplates2/issues/1,  
    UNIT\_FACTION fires for most cases and is the best event to use.  
    Even though this might not fix it in all cases.  
    Ticket-Nr: 730  
- Merge pull request #97 from InfusOnWoW/smallpatches  
    Small fixes  
- Monk Templates: Fix Sheilun's Gift and Spinning Crane Kick  
    Ticket-Nr: 713  
- Fix glow effects again  
    On login squelch glow effects for hide actions, but allow glow  
    effects for show actions.  
    Ticket-Nr: 700  
- Run CheckCooldownReady also on talent changes  
    We don't get any of the other events in those cases, but e.g. the  
    amoung of charges can change. I think this used to work in Warlords.  
    Ticket-Nr: 704  
- if there is no state, just return false instead  
- fix error when converting an aura from one type into another  
- pull in latest LibCompress  
- Merge pull request #96 from InfusOnWoW/smallpatches  
    Fix two regressions  
- Fix regression for Glow Frames  
    If the action was enabled, but no frame of that name could be found.  
    (Or the frame name was empty.)  
    Reported in curse comments  
- Fix dynamic groups again by releasing clones at a different place  
    A bit of background information:  
    Clones are allocated/released to a clone pool as needed so that  
    they are reused.  
    A long time ago, clones were released in a OnHide event handler.  
    That was wrong, because e.g. movies hide all regions, and there  
    were thus a few bugs where movies would confuse weakauras.  
    I fixed that by decoupling hiding and releasing, and made WA  
    only release the clones if WA is doing the hiding.  
    In that patch, I misunderstood the interaction with dynamic groups,  
    and thus clones from dynamic groups were never released.  
    A recent bug report reported performance problems, which I tracked  
    down to this bug.  
    This patch now moves the releasing to the right place.  
    Ticket-Nr: 674, 708  
- Merge pull request #92 from InfusOnWoW/smallpatches  
    Fix a few bugs  
- Templates: Fix two monk bugs  
    Wrong talent on Hit Combo, missing Storm, Earth and Fire.  
- BuffTrigger: Allow auto icons for auras that have spellids  
    Ticket-Nr: 381  
- Apply glow to a private frame instead of the frame the user selected  
    This fixes a incompability with Bartender, since that uses LBG too.  
    Ticket-Nr: 677  
- Collapse: Ensure that hideRegion is called  
    hideRegion releases the clone. It was only called if there was a  
    end animation.  
    Ticket-Nr: 674  
- Fix custom untriggers for all states functions  
    Same logic as for trigger functions.  
    Ticket-Nr: 604  
- Merge pull request #95 from pwfff/bufftrigger\_aura\_env  
    activating aura environment when aura triggers custom logic  
- activating aura environment when aura triggers custom logic  
- Update README.md  
- Update README.md  
- Merge pull request #91 from InfusOnWoW/smallpatches  
    Fix text font flags  
- Fix text font flags  
    Yeah, I can't code...  
- Merge pull request #90 from InfusOnWoW/smallpatches  
    text eliding and font flags for text auras  
- Fix text eliding for aurabars  
    Take icon size into account.  
    Ticket-Nr: 668  
- Readd monochrome font flag  
    This used to crash WoW. The two example cases I found no longer crash  
    wow though and after playing around with it, it seems the bug is  
    finally fixed.  
    Ticket-Nr: 670  
- Text: Add font flags combobox  
    Ticket-Nr: 670  
- Merge pull request #89 from InfusOnWoW/smallpatches  
    Add   
- For triggers with automaticrequired, ensure that trigger.unevent is "auto"  
    In the attached aura that was attached to the bug report trigger.unevent  
    was custom, even though there's code around line 5950 in  
    WeakAurasOptions.lua which sets the trigger.unevent on switching to  
    a automatic required trigger.  
    That code works. Importing the aura, switching the prototype away  
    and back does fix the users aura.  
    Ticket-Nr: 667  
- IsSpellKnown Load condition  
- Merge pull request #88 from InfusOnWoW/smallpatches  
    Fix setAll for colors  
- Fix setAll for colors  
    In a recent commit to correct how groups and multiselection work,  
    I broke that by calling set(info, ..., not before), set gets passed  
    only the first value of in ...., but for colors 3 values need to be  
    passed.  
    So special case multiselection, and only pass the third value in  
    for multiselection.  
    The reason we need to pass in the third value for multiselection,  
    is that the set functions for multiselections by default only toggle  
    a value. If different auras in a group had different initial values,  
    toggling them leads to interesting behaviour.  
- Merge pull request #86 from InfusOnWoW/smallpatches  
    Fix a few bugs  
- Adjust templates to Divine Stead changes  
    It's now baseline  
- Text display type: Change initial value from "New" to %p  
    That's probably more useful.  
- Icon: Fix not displaying any text without %  
    Ticket-Nr: 663  
- Apply glow effects even if squelching actions  
    Ticket-Nr: 641  
- move the old Tutorials modul into it's own repo  
    https://github.com/WeakAuras/WeakAurasTutorials  
- Merge pull request #84 from InfusOnWoW/smallpatches  
    Various small fixes  
- Add in Combat Condition Trigger  
    Trivial to add, and more flexibel than a load condition. The Conditions  
    already react to PLAYER\_REGEN_(ENABLED|DISABLED)  
    Ticket-Nr: 656  
- Fix group auras after closing Options  
    Closing the options would not correctly update the group auras  
    if not in a group at all and only group auras where used.  
    Noticed while fixing related bug.  
- Remove recent\_chages code from BuffTrigger.lua  
    This caused some auras to not show up on loading.  
    In the bug reports case, the code was tracking buffs only  
    outside of combat.  
    The sequence of events:  
    - Apply the buff  
    - Enter combat, unloading the aura  
    - Leave combat, loading the aura  
    Loading a aura causes a ScanAll(), in the bug reports case  
    this would call AssertAura, but due to the data being identical  
    to the data gathered before combat, the aura\_cache would indicate  
    no change. Yet, after a load we want to update everything.  
    I think this has been always broken, as I don't recall changing this  
    logic.  
    The fix is, ignoring whether the aura\_cache already knew that buff.  
    Since the return value of AssertAura/DeassertAura is the only place  
    where recent\_changes is used, purge it from everywhere.  
    Ticket-Nr: 645  
- Never disable icon/choose icon in the icon options  
    They are hidden if the icon is on automatic mode.  
    Ticket-Nr: 649  
- Don't call ReplacePlaceHolders if there can't be any text replacemnet  
- Merge pull request #80 from InfusOnWoW/smallpatches  
    Add a valuesAll function that combines the values() functions  
- Add a valuesAll function that combines the values() functions  
    Ticket-Nr: 621  
- Merge pull request #79 from InfusOnWoW/smallpatches  
    Options Dialog fixes  
- Make tooltip, blue text, clicking work for multi selection  
    Ticket-Nr: 561  
- Options: Ensure that certain ui elements start on a new line  
    By inserting a empty description before them.  
    This can happen if a group has two auras:  
    Aura 1, the spec selection is in single selection mode.  
    Aura 2, the spec selection is in multi selection mode.  
    That is if the user selects aura1, the combobox is show,  
    the group of checkboxes hidden.  
    If aura2 is selected, the combobox is hidden and the checkboxes  
    are shown.  
    If now a group of those auras is selected, the "hiddenAll" function  
    checks for each widget if the widget is visible for all auras.  
    => Both widgets are hidden and no widget is shown in the right column.  
    Thus the next widget which should be in the left column is shown in the  
    right.  
    Ticket-Nr: 562  
- Fix changing load conditions for groups is very slow  
    Ticket-Nr: 601  
- Merge pull request #78 from InfusOnWoW/smallpatches  
    Fix two tickets  
- Totem Trigger: Add icon for inverse  
    Inverse requires a totem name, so try fetching the icon from that.  
    Ticket-Nr: 635  
- Setup the aura\_environment before creating fallback state  
    Since it could be for a custom function.  
    Technically not a regression, but surfaced due to a recent change.  
    Ticket-Nr: 633  
- Merge pull request #77 from InfusOnWoW/smallpatches  
    Fix regressions  
- Fix Action Useable not showin the stacks  
    Needs to be even more similar to Cooldown Progress Spell.  
    Ticket-Nr: 627  
- Fix totem trigger again  
    I should really remember to retest things after I polished something.  
    Ticket-Nr: 624  
- Merge pull request #76 from InfusOnWoW/smallpatches  
    Another round of fixes  
- Fix Rune trigger for counting runes  
    In 6c3069e4c4d8bf7ddc47dfe874a50578c4455de9 I correctly fixed  
    that the code would not watch the runes if the the rune trigger  
    is in "counting" mode. But instead of watching runes 1 to 6,  
    I made it watch rune 0 6 times. Oh well.  
    Ticket: github #75  
- Action Useable: Fix spells with the same name but different id  
    Same idea as the cooldown progress trigger got a few days ago.  
    In the init function get the localized spell name and in the trigger  
    use that to fetch all information.  
    IsUseableSpell("Shadow Word: Death") returns the right information  
    with all talents selected.  
    Ticket-Nr: 626  
- Fix totem triggers for "Inverse" all slots  
    This would trigger if any of the slots didn't contain the totem, which  
    is clearly not of much use. This needs a separate but rather easy code  
    path.  
    Ticket-Nr: 624  
- Make sure that activeTriggerMode has a sane value  
    The aura in the ticket had a activeTriggerMode of 1, that is use the  
    information from the second trigger, but only had the trigger  
    number 0. Thus all the dynamic information was bogus.  
    Ticket-Nr: 622  
- Add Owlkin Frenzy to Moonkin's buff  
- For the fallback state, also run the duration function  
    No idea, why I forgot that. This fixes a regression introduced by  
    the trigger state branch.  
    Ticket-Nr: 605  
- Merge pull request #74 from InfusOnWoW/smallpatches  
    Fix cooldown progress for Void Bolt + Tottem Trigger Remaining time check  
- Fix Void Bolt Cooldown  
    Void Bolt seems to be diffrent but works with the version.  
    If we have a ability on cooldown, and we get a new cooldown, that  
    while being the gcd still results in a expirationTime that is less  
    than the current expiration time, then the ability was reset.  
    Ticket-Nr: 613  
- Totem trigger: Fix remaining time check  
    Only check remaining time, if the totem is actually active.  
- Merge pull request #73 from InfusOnWoW/smallpatches  
    Various fixes  
- Treat GCD correctly  
    So the basic logic is:  
    If we have a duration > 0 and it's different from the gcd, we have  
    a genuine cooldown.  
    If we either have a duration of 0, or equal to the gcd, the ability  
    could have reset its cooldown.  
    If the old cooldown was already less than the gcd, we don't want  
    to reset it to 0 though.  
    Ticket-Nr: 613  
- Fix region.state.trigger for additional triggers  
    Which caused a bug where additional triggers showed no tooltip.  
    Ticket-Nr: 615  
- Fix that using templates would break Duplicate for that aura  
    The DisplayButtons save a reference to the table for the aura,  
    so for existing auras we need to modify it directly.  
    We don't need to a DeepCopy of this table anyway.  
- Entering Obliteration in any spell input would uppercase it  
    Reported on Ticket 584  
- Fix Texture functions no longer working  
    Regression introduced in the trigger state patch.  
    Patch by ChrisEater  
    Ticket-Nr: 607  
- Templates: Correct various small errors  
    - Add Light of the Protector for Protection Paladins  
- Fix multi auras that are created via combat log  
    Ticket-Nr: 596  
- again  
- fix an error with Ignore RuneCD  
- Merge pull request #71 from InfusOnWoW/smallpatches  
    Various fixes  
- Fix BigWigs trigger  
    Ticket-Nr: 603  
- Fix Ignore Rune CD  
    Similar idea to previously. If the cooldown's duration matches  
    the duration of the spell then ignore it.  
    Instead of harcoding 10s as the rune cd, use the duration that  
    actualy runes have.  
    Ticket-Nr: 599  
- Fix Rune Trigger do watch all runes if that is needed  
- Fix lua error triggercount being nil after editing auras  
- Fix Importing hiding explicitly shown auras  
    Transmissons.lua wants to make sure that the WeakAurasOptions addon  
    is loaded. OpenOptions has the side effect of potentially hiding  
    the window though, which we don't want.  
    So introduce a function LoadOptions which only loads the plugin.  
    Ticket-Nr: 598  
- fix a typo  
- GetSpellCount support + Primary Power Type check (#70)  
    * Add GetSpellCount support for e.g. Expel Harm  
    Ticket-Nr: 586  
    * Add "Only if primary" checkbox to Power trigger  
    Can be used to check that the primary power type is the selected  
    power type.  
    Ticket-Nr: 592  
- properly embed LSM  
- test loading AceGUI-3.0-SharedMediaWidgets differently  
- remove frameLevel hacks, 7.0.3 is supposed to handle this better  
- remove print  
- Fix Action Useable not update cooldowns correctly (#69)  
    If we get a SPELL\_COOLDOWN\_EVENT and a ability is now on the gcd,  
    we need to treat that as if the ability is not on cooldown. So that  
    if it was on cooldown previously, a event is sent.  
    Ticker-Nr: 589  
- Merge pull request #68 from InfusOnWoW/smallpatches  
    Power Triger: Readd stacks function that some of the old triggers had  
- Power Triger: Readd stacks function that some of the old triggers had  
- Merge pull request #67 from InfusOnWoW/smallpatches  
    Dynamicgroup: Fix error if child had no color.  
- Dynamicgroup: Fix error if child had no color.  
    Ticket-Nr: 588  
- Merge pull request #65 from WeakAuras/7.0  
    7.0  
- silence a global  
- Merge pull request #66 from InfusOnWoW/smallpatches-legion  
    Make gigantic dynamic groups editable in the options  
- Make gigantic dynamic groups editable in the options  
    Add a PauseAllDynamicGroups() and ResumeAllDynamicGroups() which  
    temporarily delays all ControlChildren calls.  
    The dynamic groups are paused before mass editing, such as importing,  
    clicking the view icon, deleting the group. This makes it significantly  
    faster to edit those auars.  
    Ticket-Nr: 581  
- OCD formatting  
- fix a typo  
- Merge pull request #64 from InfusOnWoW/smallpatches-legion  
    Two more fixes  
- Fix Equiment Set Trigger toggle -> "toggle"  
- Fix Action useable interaction with gcd change  
    A duration of 0 means that the spell is not on cooldown. All other places  
    already check for duration > 0.  
    Ticket-Nr: 580  
- Merge pull request #63 from InfusOnWoW/smallpatches-legion  
    Fix recent issues  
- Linked a "deleted" WeakAura shows a error  
    Steps to reproduce:  
    1. Link a aura  
    2. Delete it  
    3. Click on link  
    Apply fix suggested by MaXiMiUS.  
- Fix icons for spells that only other specs have  
    A recent change made Cooldown Progress use the spellName instead of  
    the spellId to fetch information. This works better because, for  
    some classes the "same" spell has different spellIds depending on  
    spec.  
    But if a spec doesn't have that spell, using the spellName returns  
    no information. So fall back to the spell id in that case.  
- Fix another animation problem with states  
    Ticket-Nr: 572  
- Add Templates to the locale miner and run it  
- Merge pull request #50 from InfusOnWoW/triggertemplates  
    Trigger Templates  
- Add Shaman Totem triggers, change Rune of Power to use Totem trigger  
- Adjust to Survival Hunter talent reshuffling  
- Adjust to review comments part 1  
- Add Templates to WeakAuras  
    This adds a new button "From Template" to the New display, which can be  
    used to create auras from a list of display templates and trigger  
    templates.  
- Merge pull request #62 from InfusOnWoW/smallpatches-legion  
    Various small patches  
- Use a check against the actual gcd instead of > 1.51  
    Also don't check for startTime as that might contain a value even  
    if the spell isn't really on cd. Instead check for duration.  
- Fix aura\_env.state being empty on first run of custom code  
    Also set it if we are creating the aura\_env.  
    Ticket-Nr: 577  
- Fix Ascendance + Lava Burst Cooldown trigger  
    If Lava Burst is on cooldown and Ascendance is triggered, which  
    resets the cooldown of LavaBurst the following information is returned  
    by GetSpellCharges:  
    StartTime: the old expiration time  
    Charges: 0, MaxCharges: 2  
    Duration: 0  
    So apparently a duration 0 spell has to be treated as if it's not  
    on cooldown.  
    Override charges to return 1 in that case. As the Spell Cooldown  
    trigger has a condition on Charges and I think it's saner if  
    checking for charges >= 1 shows the aura even if charges is  
    apparently 0 in that case.  
    Ticket-Nr: 571  
- Fix Error with state for custom animation  
    Again, while the options are open region's don't have a valid state.  
    Ticket-Nr: 572  
- Merge pull request #61 from InfusOnWoW/smallpatches-legion  
    Be consistent what a nil sound\_channel means  
- Be consistent what a nil sound\_channel means  
    Ticket-Nr: 567  
- Fix GenericTrigger.GetNameAndIcon for custom triggers  
    Make it check that the type is "event" or "status" similar to  
    every other function.  
- Merge pull request #60 from InfusOnWoW/smallpatches  
    Fix GenericTrigger.GetNameAndIcon for custom triggers  
- Fix GenericTrigger.GetNameAndIcon for custom triggers  
    Make it check that the type is "event" or "status" similar to  
    every other function.  
- Merge pull request #59 from InfusOnWoW/smallpatches-legion  
    Fix combat log trigger and rewrite totem trigger  
- Rewrite Totem trigger for Legion  
    Previously each totem slot could have a totem of a specific type.  
    Now totems have no types anymore and simply take the lowest free slot.  
    And e.g. Elemental Shamans can put multiple earthquake totems at  
    the same time.  
    The new totem trigger now can:  
    - Display the totem in a specific slot  
    - Or check all slots for a specifc totem name  
      - And display all matching totems  
    - Or display all totems  
    There's a hardcoded limit of 5 totems in the Blizzard api and no  
    way to even get that constant. So put a limit of 5 into the code.  
- Fix combat log trigger not showing the right duration  
    The state for generic triggers is updated in two steps. 1) By the trigger  
    function and 2) by ActivateEvent which adds all the other dynamic  
    information. If a trigger function is a "all" trigger function,  
    that is it supports cloning it needs to indicate on which states  
    ActivateEvent must be called on. Do that by setting changed to true  
    in those cases.  
    Ticket-Nr: 564  
- prettify the tooltip, sort it the same way as the EJ does and display instance name headers  
    Thanks for the help with the EJ API, neb <3  
- remove the need to translate boss names  
- Merge pull request #57 from InfusOnWoW/smallpatches-legion  
    Fix aurabar display for "Always Show" and fix spells with multiple ids  
- Aurabar: Switch progress of no duration triggers  
    Makes the aurabar more useful for triggers with "Always Show".  
    Ticket-Nr: 523  
- Make Cooldown Progress work better with spells that have multiple spellIds  
    For example Ascendance has 3 different spell ids depending on the spec:  
    114050 Elemental  
    114051 Enhancement  
    114052 Restoration  
    Using any of those ids will now correctly show the progress information  
    from any of them.  
    Ticket-Nr: 148  
- remove old comments  
- fix a leaked global and remove some old comments  
- Merge pull request #56 from InfusOnWoW/smallpatches-legion  
    Fix Modernize for Combo Points  
- Fix Modernize for Combo Points  
- Merge pull request #55 from InfusOnWoW/smallpatches-legion  
    Various bugs  
- Fix icon cooldowns having the wrong frame level  
    If multiple icons are in a group, their frame level are adjusted so  
    that they each get a unique frame level.  
    For icons we need to also adjust the frame levels of the cooldown  
    and stacks frame.  
    See https://youtu.be/51l5gqQIi7k for what it looks like before and  
    after.  
    This seems to be new in Legion.  
- Fix rotation of texts on aurabar and circular progress  
    Animations with 0 duration no longer work, and something is  
    very strange with Scrollframes. Moving them around seems to not  
    properly clip.  
- Make the linter happier at least in a few files  
- Fix Custom actions ending in a -- comment not working  
    Since that comments out a "end". Fix that by adding a newline.  
- Add a stacks function to DK rune triggers  
    All the other power triggers have a stack function. For DKs make  
    it return the avaible runes.  
- Fix nil error in pendingTracks  
    I can't recall what exactly I did, but it must have been something like.  
    a) Use a multi buff trigger to add a guid to the pending tracks,  
       that is don't target it.  
    b) Delete it  
    c) Target the unit, which calls uidTrack, calling updateSpell  
- Fix name display of Multi buff trigger  
- Fix specific unit text field not appearing  
    The bug shows up on changing a aura trigger to "specific unit" and then  
    changing and then switching to Status/Health. The unit combobox shows  
    specific unit, but the specific unit text field is missing.  
    The cause for that is, that the specific unit text field for the  
    Status/Health trigger is created in WeakAurasOptions.lua around line 900  
    and checks for trigger.use\_specific\_unit. The set function of the  
    Status/Health/Unit combobox sets trigger.use\_specific\_unit.  
    The specific unit combo box for the Aura trigger is created around line  
    4570, and this one just sets trigger.unit but does not set  
    trigger.use\_specific\_unit.  
    Fix that by making the aura trigger also set trigger.use\_specific\_unit.  
    Ticket-Nr: 559  
- Fix DK rune count trigger  
    Ticket-Nr: 560  
- Fix typo in GenericTrigger.lua  
- BuffTrigger: SpellId triggers should match all auras with the same name  
    That is for non fullscan auras and given a spellId, the buff trigger  
    should only match the name of the spellId.  
    This makes some use cases easier, e.g. a cross-language trigger for  
    a boss ability that has multiple different spell ids.  
    On the other hand matching on the spellId in addition adds no benefit.  
    Ticket-Nr: 554  
- Fix text position if the text is empty on loading  
    Ticket-Nr: 556  
- Remove various power type triggers in favour of the Power trigger  
    Also add Stagger to the Power trigger  
- Multi Buff trigger: Use NAME\_PLATE\_UNIT\_ADDED/REMOVED  
    Track the guids of nameplates, making the multi trigger being able  
    to determine progress information for units with nameplates.  
    Also add handling for focus.  
- used GUID for source in the combat log triggers, too  
- Make spec selector return the class specs even if on a diffrent class  
    Also fix that the load condions behaved strangely on multi selection  
- Merge pull request #54 from InfusOnWoW/7.0  
    Fix mismerge  
- Fix mismerge  
- Merge pull request #53 from InfusOnWoW/7.0  
    master into 7.0 merge  
- Merge branch 'master' into 7.0  
- Merge pull request #52 from InfusOnWoW/smallpatches  
    Two small adjustments to the trigger state patch  
- Fix SPELL\_AURA\_APPLIED\_DOSE resetting the icon and progress information.  
    This readds code, that I accidentaly removed in the trigger state  
    commit.  
- Combat Log Trigger: Add sourceGUID to aura\_env.state  
    Probably useful for someone and trivial to do. destGUID is alredy there  
- Merge pull request #51 from InfusOnWoW/smallpatches  
    Fixes for trigger state bugs  
- Fix combat log trigger condition for sourceUnit  
    Need to rename source to sourceName also in the sourceUnit's test.  
- Fix typo preventing group auras from hiding  
- Fix bug with trigger states  
- Merge pull request #37 from InfusOnWoW/triggerstate  
    Add Trigger States to store information  
- Also change the tooltips from #word# to %word  
- add alternate mana as a trigger for classes that use it (druid, shaman, priest)  
- In modernize for combat log trigger, check that trigger is not nil  
- Change #word# to %word  
    Rename a few combat log variables.  
- forgot a slash  
- forgot a slash  
- Add a new custom trigger function that directly modifies trigger states  
    This allows for custom triggers to create clones. Documentation is  
    at http://www.wowace.com/addons/weakauras-2/pages/custom-triggers/  
- BigWigs: Add clone support to both messages and timers  
    Also BigWigs messages now have a proper icon and store the message  
- DBM: Add cloning support to both timer and announce  
    Also add the right icon for the announce trigger and make %n return  
    the message.  
- Add clone support to the chat message trigger  
- GenericTrigger: Improve combat log trigger  
    By adding additional text replacements for pretty much every parameter.  
    Also add clone support to it.  
    Also add "level" and "class" text replacements to the unit characteristics  
    trigger.  
- Add additional text replacements for BuffTriggers  
    Add #spellId# and #unitCaster# that show the caster.  
- Add Trigger States to store information  
    Those store all information of the triggers, e.g. duration, icons.  
    This allows for e.g. showing the information of the second trigger if the  
    first trigger is not active.  
    This is the basis of more to come.  
    Also first evaluate all triggers before applying change, fixing:  
    Ticket-Nr: 501  
- Use our new logo in game, too.  
- Use our new logo in game, too.  
- Merge pull request #49 from InfusOnWoW/smallpatches  
    Fix undead load condition and add timewalking  
- Add Timewalking dungeon difficulty  
- Correct load condition for Undead  
- Happiness => Combo Points  
- Merge pull request #48 from maximumpanda/master  
    Add Insantity to Power\_Types.  
- Add Insantity to Power\_Types.  
- Merge branch 'master' into 7.0  
- Merge pull request #45 from InfusOnWoW/smallpatches  
    Make pasting huge import strings lightning fast  
- Make pasting huge import strings lightning fast  
    Use code provided by Semlar to make pasting a lot faster.  
    The edit box no longer shows the full contents of the pasted text,  
    but that's not a huge loss.  
- Merge pull request #44 from InfusOnWoW/smallpatches  
    Fix editing multiple auras with multiple triggers  
- Fix editing multiple auras with multiple triggers  
    Testcase that shows the problems:  
    Import http://pastebin.com/rS4S5ePq, that is a group with two auras.  
    Both auras contain 3 identical triggers.  
    Bug 1:  
    Select the group, switch to the trigger tab. Notice that only  
    two triggers are listed in the choose trigger combo box.  
    Bug 2:  
    Choose both auras (not the group), switch to the trigger tab,  
    in the choose trigger combo select the second or third trigger  
- Merge pull request #43 from InfusOnWoW/7.0  
    Tweak spell scanning so that it finds more spells  
- Tweak spell scanning so that it finds more spells  
    Reported by nevcairiel on irc  
- Merge pull request #42 from InfusOnWoW/7.0  
    Ups didn't rename callers  
- Fix another two image functions  
- Ups didn't rename callers  
- Local a Blizz API  
- Merge pull request #41 from InfusOnWoW/7.0  
    AceConfig image functions should return a string  
- AceConfig image functions should return a string  
    So make them return a string instead of a fileId  
- Merge pull request #40 from InfusOnWoW/7.0  
    Icon cache, SetColorTexture and Modelpath update  
- Rework icon cache for Legion  
    The icon "paths" are now fileIds in legion. Also while working in that  
    area, make the iconCache key the name and spellId, thus fixing that  
    duplicated spell name would overwrite the icon for each other.  
    Ticket-Nr: 526  
    Ticket-Nr: 228  
- Replace SetTexture(r, g, b, a) with SetColorTexture  
- Update ModelPaths list for current 7.0 state  
    List provided on reddit by Bladeleaf  
- Merge pull request #39 from InfusOnWoW/7.0  
    Rune trigger and pvp talent load condition  
- Update talents load conditions for Legion  
    Add PvP Talents  
    And make talent\_cache spec specific, there's little overlap between specs  
    nowadays.  
    Also fallback to the current class/spec if no class/spec load condition  
    is set. Feels a bit nicer.  
- Fix Rune trigger for Legion  
- Merge branch 'master' into 7.0  
- Merge pull request #38 from InfusOnWoW/smallpatches  
    3 small fixes  
- Clean up region:OnShow handlers  
    Since the options dialog does not set the OnShow or OnHide handlers,  
    it shouldn't reset them to nil.  
    While trying to prove that this causes bugs, I found out that the  
    existing OnShow handler seems to not have any purpose.  
    The original intent behind is iirc the following case:  
    - A aura shows a buff trigger  
    - A movie is played, which hides all regions  
    - The buff ends, the region should be hidden  
    - The movie ends, reshowing all regions that were hidden in  
      the second step.  
    I can't reproduce that case anymore without a OnShow handler.  
- Power Trigger: React to UNIT\_DISPLAYPOWER  
    Used to signal that e.g. druids shape shifted.  
- Fix WeakAurasOptions find box to not use lua patterns  
    And a few other places where lua patterns would clearly be wrong.  
    Ticket-Nr: 541  
- Merge branch 'master' into 7.0  
- Merge pull request #36 from InfusOnWoW/smallpatches  
    Fixes for BigWigs  
- BigWigs: Fix remaining time check  
    Ticket-Nr: 532  
- WeakAurasOptions: Fix a hardcoded 9 additional triggers limit  
    Should be data.numTriggers instead.  
- Merge branch 'master' into 7.0  
- Merge commit '83aed10518ed128e96e05486a60b5cf2f1eb06c7' into 7.0  
- add translation scraper by nebula  
- Merge pull request #35 from InfusOnWoW/smallpatches  
    A round of fixes + new features  
- Fix Agony multi trigger  
    Don't reset the expirationTime/duration and icon if just the stack  
    amount changed.  
    Ticket-Nr: 521  
- Fix Health bars for temporary pets  
    WA needs to watch for UNIT\_PET that is fired on pets appearing and  
    disappearing. Due to UNIT\_PET's first parameter being the owner's unitid,  
    there's a invisible frame that simply replaces that with "pet".  
    Ticket-Nr: 525  
- Add a Item Set Equipped Trigger  
    Allows for checking if a specific item set is equipped, or to  
    display which item set is equipped.  
- Update Health more often  
    By using UNIT\_HEALTH\_FREQUENT. Reported on reddit.  
- Add READY\_CHECK trigger  
    Trivial to do, and I have a use case.  
- Fix encounter load condtion resetting on zone change  
    Only reset the encounter\_id if the player is also  
    not in combat. This should fix the load condition for  
    Archimond last phase.  
    Ticket-Nr: 524  
- add translation scraper by nebula  
- move from UNIT\_POWER to UNIT\_POWER\_FREQUENT to track ressources  
- remove the timer region type; it has been replaced by texts ages ago.  
- remove the fontSize > 35 hack, the new font engine in 7.0 can render text at any size perfectly fine  
- remove UNIT\_COMBO\_POINTS, it is gone  
- bump the TOC to 70000  
- add Fury and Pain power types  
- add Arcane Charges power type  
- add Maelstrom power type  
- add Astral Power; no idea why the global is called Lunar Power, but it is.  
- remove demonic fury and burning embers  
- Shadow Orbs => Insanity  
- remove eclipse support  
- remove glyph support  
- 4 spaces => 2 spaces in Transmission.lua  
- Update README.md  
- local a function  
- Fixes for Tickets (#34)  
    * Fix Full Scan auras  
    The removeSpellNames patch used as a logic that a trigger.spellId  
    always trumps a name. For that to work, the full scan auras need  
    to reset the spellId.  
    Apparently in the past importing full scan auras was broken,  
    since this is now done always changing full scan auras broke.  
    Ticket-number: 516  
    * Fix load events happening before the auras are loaded  
    This broke again with the fix for the Archimonde radar,  
    because the WeakAurasOptions registers the WeakAuras.ScanForLoad  
    function too. Change that code to be a bit more explicit and fix  
    the bug again.  
    Ticket-number: 515  
    * Glyphs: Add a tooltip listing the current glyphs  
    That's the best we can do  
- Add spark hidden on "Full/Empty"  
    Not my brightest hour, that should have been a obvious option.  
    Ticket: 512  
- Fix ordering of registering for events  
    The load frame should handle events before the generic trigger system.  
    Ticket: 510  
- Various small fixes and features  
    * Load Conditions: Add mystic dungeons  
    * Add vehicle and hasVehicleUi load options  
    Ticket-number: 254  
    * Add glyph load option  
    Just a minimal text field, since legion is changing how glyphs work  
    anyway.  
    Ticket-number: 140  
    * Aurabar: Fix Spark being visible even if spark was not enabled  
    Ticket-number: 508  
    * Don't process load events before the auras have been added.  
    This broke by the preparation for the stop motion addon.  
    Ticket-number: 509  
- Merge pull request #32 from InfusOnWoW/smallpatches  
    Patches  
- Circular Progress: Fix pulse animation  
    Scaling needs to scale the wedge too.  
    Ticket-number: 503  
- Implement spark visibility option  
    Add options to hide the spark on full or empty progress.  
    Since the spark options are hidden by default this adds very little  
    clutter.  
- Circular Progress: Full Progress should be start-end visible  
    So, this goes back to the very first version I wrote. Full progress  
    should be that the progress angle is equal to end angle.  
    I confussed myself by mainly testing with buff triggers. Those go  
    from full progress to no progress, thus confusingly but correctly  
    they must from full to empty and move in the opposite direction.  
    That is a clockwise buff trigger must move anti-clockwise.  
    So that a resource trigger going from empty to full moves in  
    clokcwise direction.  
    This changes behaviour, but that's better in the long run.  
    Ticket-number: 486  
- Texteditor: Split combined texts after edit  
    If multiple auras (or a group) is selected, the texteditor combines  
    the text. This patch adds code that splits the code after editing  
    again.  
    Ticket-number: 419  
- Fix aura trigger that use spellids after changing language  
    Some time ago, I added support for using spellids instead of spell names  
    to the aura trigger. Those spellids were only converted to spellnames  
    in Transmission.lua, and thus on importing a aura.  
    That meant that changing the language wouldn't update the spell names  
    for those spellIds. By moving the code from Transmission.lua to  
    WeakAuras.Add, we always do that and thus fix:  
    Ticket-number: 269  
- Fix error on adding a trigger with a group selected  
    I'm not 100% sure that this is the right fix, but it seems inline  
    with what the other trigger\_options are doing.  
    Ticket-number: 45  
- Merge pull request #30 from InfusOnWoW/smallpatches  
    WeakAuras: Prepare for StopMotion Addon  
- Revert "Backwards compat for 6.2.4; will be reverted on Thursday"  
- WeakAuras: Prepare for StopMotion Addon  
- Backwards compat for 6.2.4; will be reverted on Thursday  
- disable nolib zip creation  
- Account for 6.2.4 Battle.net changes  
- Fix combat log trigger  
    Ticket-number: 496  
- Add PlaySoundKitId option to actions  
    Ticket-number: 500  
- Merge pull request #28 from InfusOnWoW/smallpatches  
    Circular Progress: Fix a few reported issues  
- Circular Progress: Fix a few reported issues:  
    - 0% Progress showing like 100% progress  
    - Background Offset not working correctly in the top left corner  
    - Inverse not allowing a non 90° end angle  
- block macro creation  
- Indents  
- add LibSpellRange-1.0 to the optdeps  
- Revert "Fix a typo"  
- Fix a typo  
- Circle dynamicgroup: Fix placement of children  
    Before afbce7f696587552b0dace3650006e2a992435f6  
    numVisible was counted by code inside a  
    "if data.grow == "HORIZONTAL" or data.grow == "VERTICAL"  
    That patch moved the code to be always run, but forgot to remove  
    code for the CIRCLE case that counted the children.  
    Ticket-number: 491  
- derp  
- add LibSpellRange-1.0 to pkgmeta  
- Use LibSpellInRange to check for spell in range  
    Checking with the spell name doesn't actually work reliable,  
    the library contains a map from spellnames to spell book ids,  
    which works better.  
    Ticket-number: 484  
- Merge pull request #27 from nekizalb/ticket-480-custom-trigger-logic  
    WeakAura Ticket 480  
- WeakAura Ticket 480  
    Add capability to specify a custom trigger combination function that will be run to decide whether the overall aura is triggered based on the status of the individual triggers. This enhances the current funcitonality of ANY or ALL triggers to allow complex logic, such as "Trigger 1 AND (Trigger 2 OR Trigger 3)"  
    http://pastebin.com/Dw1nVVJs is an example aura using this change.  
    Additionally, this change REMOVES the checks in Tranmission.lua:scamCheck that only showed code int the code review if the code was enabled. With this change, if their is custom code present in the WA when transmitted, the code is shown.  
    remove checks in scamCheck that only showed enabled code. All code is shown in the transmitted aura  
    http://pastebin.com/ki2heZzx is an example of an aura that (in today's client) would show as having no code, but after this change, exposes it has a large number of functions defined, but disabled.  
- Merge pull request #26 from nekizalb/ticket-488-selfx-nil  
    CancelAnimation has a different signature now  
- CancelAnimation has a different signature now  
- also block hash\_SlashCmdList  
- also block DevTools\_DumpCommand  
- fix indenting  
- Fix a leaked global  
- Block SlashCmdList, too  
- Merge pull request #25 from InfusOnWoW/smallpatches  
    Circular Progress: Fix various bugs  
- Circular Progress: Fix various bugs  
    Also make the background use start and end angle  
    Make the options code use the exact same code as the texture  
    And lots of tweaks I forgot  
- Circular Progres: Fix display of 100% duration  
    Ticket-number: 486  
- Bump minor of the widget  
- Merge pull request #22 from nekizalb/ticket-482-wrong-texture-name  
    WeakAuras Ticket 482  
- WeakAuras Ticket 482  
    correct the texture name for disabled from UI-GuildButton-OfficerNote-Down.blp to UI-GuildButton-OfficerNote-Disabled.blp  
- Merge pull request #18 from InfusOnWoW/circularprogress  
    Progress Texture: Add circular progress  
- Fix Show Code Button Stuck on ItemRefTooltip After Aura Import  
    Ticket: 481  
- Merge pull request #21 from InfusOnWoW/smallpatches  
    Fix for dynamic groups not showing border/background  
- Progress Texture: Add circular progress  
- Fix for dynamic groups not showing border/background  
    Ticket-number: 474  
- Merge pull request #20 from InfusOnWoW/smallpatches  
    Fix border and background issues for dynamic groups  
- Fix misaligned background and border if space was non zero  
    And grow was either horizontal or vertical center  
- Fix border and backgrounds not working for groups  
    We never show/hide groups and dynamicgroups, so hiding all regions  
    after creation would hide them.  
    Ticket-number: 474  
- Merge pull request #19 from InfusOnWoW/smallpatches  
    fix position of centered dynamic groups  
- fix position of centered dynamic groups  
    So that it is based on the center of the group rather than the  
    top/left for VERTICAL/HORIZONTAL dynamic groups  
    Ticket-number: 467  
- add a space  
- Merge pull request #17 from InfusOnWoW/smallfixes  
    Smallfixes  
- Aurabar: Set width of text based on data.width not region:GetWidth()  
    The later can return 0 making the text essentially invisible.  
    Ticket-number: 472  
- Load: support multiple comma separated zone ids  
    Ticket-number: 470  
- Fix text cut of for aurabars in some cases  
    Strangely the two texts don't behave the same.  
    This fixes the reported bug, without touching the code too much.  
- Update README.md  
    remove WA1 to 2 instructions  
- change it so that when codereview is already open, clicking "show code" again closes the window  
- fix a typo, also adjust localizations to match  
- fix opening code review page when options haven't been opened before  
- make "Show Code" button translatable  
- remove OnUpdate script that broke the divider in the config  
- WeakAurasOptions: Don't show the codereview window again  
    Feels nicer. The user can hit the "show code" button to show  
    the code again anyway.  
- Add code formatting to Show Code  
    And fix a small copy paste error.  
- Implement show code for importing  
    Ticket-number: 459  
- Fix checking for custom code  
    Ticket-number: 459  
- Improve custom lua code checking  
    By checking more places for custom code, and improving how visible it is.  
- Block getglobal from breaking out of the environment  
- Hide() regions after creation  
    Fixes a regression for  
    Ticket: 156  
- Rewrite visibility checking  
    In Expand() and Collapse() set a flag region.toShow, which indicates  
    whether the region should be visible. Subsequent calls to Expand() or  
    Collapse() that don't change toShow just return without performing any  
    actions. (That fixes 402). While at that remove toHide as it is the  
    inverse of toShow. Also introduce a region.animatingHide, indicating  
    that a aura is in its hide animation.  
    In the dynamic group simply check for region.toShow || region.animateHide.  
    Since that removes the isVisible() check, this fixes Ticket 453.  
    Also since auras that animate it's hiding are still positioned as  
    visible auras, this fixes 156.  
    Somewhere in this rewrite 454 is fixed too.  
- Fix DBM trigger with a non empty id and use\_id false  
    Namely the icon and progress functions  
    Ticket: 458  
- Add more functions and objects to the blacklist  
    A few obvious ones, there are probably more.  
- fix untranslated option  
- Add some more trade functions to the blocked list  
    Might be the fix for  
    Ticket: 459  
    Or it might be a different isssue.  
- Text: Fix text sizes over 35 for initial aura  
    I have no idea why moving SetTextHeight fixes that ticket,  
    but it does.  
    Ticket-number: 456  
- DBM Timer: Fix spellId condition  
    Ticket-Nr: 457  
- Fix encounter id check  
    We need to start the search on the next character  
- fix a typo  
- Merge pull request #15 from InfusOnWoW/smallpatches  
    Fixes for various small tickets  
- WeakAuras: Fix bars not being hidden after cinematic  
    Ticket-Nr: 230  
- BigWigs Timer Trigger: Replace matching existing timers  
    On getting a StartBar message, search for a bar that has the  
    same addon, spellId and text and replace that.  
    It seems that's what should happen on a second StartBar message,  
    though I'm a bit unsure on whether that's correct.  
    Ticket-Nr: 449  
- BigWigs Timer: Fix addon being intially nil  
    Ticket-Nr: 446  
- Support multiple values in the encounter load condition  
    Ticket-number: 447  
- Merge pull request #14 from InfusOnWoW/smallpatches  
    Smallpatches  
- Fix models not working in dynamic groups  
    Ticket-Nr: 444  
- Add Potrait Zoom option to region type "Model"  
- Fix realm being unknown on log on.  
- Merge pull request #13 from Faithmelter/patch-1  
    Dialog as a Sound Channel  
- Dialog as a Sound Channel  
    Not sure if this has been left out for a good reason or not?, but I updated Types.lua to include the "Dialog" sound channel as a selection during WeakAura creation.  
- make Unit Characteristics trigger work again  
- fix order so the faction load option actually works  
- Hack for neutral pandas  
- Add Faction load condition  
- Eclipse Power: Remove "unit" option  
    As no other power type trigger has a option for that.  
- Fix various power triggers to use 'player' instead of trigger.unit  
    We can't check the ressources of other players anyway and the user  
    can't actually change trigger.unit without changing to a diferent  
    trigger type.  
    Ticket-number: 435  
- Combo Points: Check UnitHasVehicleUI() in addition to UnitInVehicle()  
    And presume only show vehicle combo points if both are true.  
    Ticket-number: 420  
- trigger alpha build  
- Fix to aura\_env change  
- Ship our own version of a font for the advanced options editor, a slighly bolder one than we used before when the user had Prat installed  
- EnsureClone: Only mark regions as justCreated, if they were created  
    Ticket-number: 428  
- Fix renaming auras with animations using aura\_env  
    Don't use a id upvalue, but upvalue data, so that on renaming the  
    right id is used.  
    Ticket-number: 427  
- upvalue IsPlayerMoving  
- BuffTrigger: Fix Unknown affected players  
    Sometimes GetUnitName returns UNKNOWN for some players in the raid/group,  
    in those case just recheck the rost in 0.5s. And adjust the rest of the  
    code, so that we always update the name, even if we alread know the guid.  
    Ticket-number: 417  
- Revert "BuffTrigger: Fix Unknown affected players"  
- Revert "Internal => WeakAuras"  
- Keep a stack of the aura\_env tables, so that they can be restored after using WeakAuras.ScanEvents().  
- Internal => WeakAuras  
- BuffTrigger: Fix Unknown affected players  
    Sometimes GetUnitName returns UNKNOWN for some players in the raid/group,  
    in those case just recheck the rost in 0.5s. And adjust the rest of the  
    code, so that we always update the name, even if we alread know the guid.  
    Ticket-number: 417  
- re-enable frameLevel iterator in group and dynamicgroup, without resetting frameLevel to 0 before iterating for now, we'll see if we need it.  
- Fix typos in comments  
- touchup FAIAP lib  
- cleanup and start the frameLevel iteration in FixGroupChildrenOrder() at 1 instead of 2, also disable the frameLevel iterators in dynamicgroup and group region types  
- frameLevel seems to be capped at ~128, so let's never set a value higher than 100, maybe this works!  
- More work on the frame level issue  
    From the feedback I got, the workaround in the FixGroupChildrenOrder() call is not enough. So we now set the frameLevel to zero before increasing it one by  
    one and also apply the double SetFrameLevel() workaround in all the other  
    places where we have been using it.  
- Instead of using the Jack Input font (when it is available) we now use the Fira Mono font (when it is available)  
- pull updated translations  
- Revert "Disable WeakAuras.FixGroupChildrenOrder() completely to see if we even need it and further fight strata bugs/taint."  
- Animate: Don't use a new table in WeakAuras.Animate  
    Reusing the table leads to less garbage  
    Ticket-number: 410  
- Merge pull request #12 from InfusOnWoW/smallpatches  
    Fixes by Infus  
- BigWigs Timer trigger: Fix addon option  
    Ticket-number: 412  
- Fix duplicate moving the list around  
    WeakAuras.NewDisplayButton() in addition to adding a new button  
    also scrolled to that button and started the renaming.  
    Since in the duplicate code path we first call NewDisplayButton and  
    then add the new aura to the right group, we first scrolled to  
    a mostly random position.  
    Fix that, by removing the code to pick and edit a button from  
    NewDisplayButton and move that to a separate new function  
    WeakAuras.PickAndEditDisplay.  
    Call that function at the end of duplicate.  
    It might be necessary to add a call to WeakAuras.PickDisplay or  
    WeakAuras.PickAndEditDisplay from other code paths, I checked  
    the common ones like New/Import/Add to group and remove from  
    group and they seemed to work.  
    Ticket-number: 404  
- WeakAuraOptions: Check for data.trigger.names being not nil  
    Ticket-number: 408  
- Dbm Timer: Change Spell Id to Spell/Encounter Id  
    And change the type to a string.  
    Note: new locale string.  
    Ticket-number: 409  
- Dbm Timer: Fix id trigger option  
    Ticket-number: 407  
- BuffTrigger: Cope with GetUnitName(guid) returning nil  
    By keeping the name unknown and rechecking next time again.  
    I wonder whether we should remove the player from self.players  
    if we repeately can't get their name.  
    Ticket-number: 406  
- Disable WeakAuras.FixGroupChildrenOrder() completely to see if we even need it and further fight strata bugs/taint.  
- typos and text formatting, remove the msg parameter of the ShowOptions() call in options  
- cleanup and reindenting of WeakAuras.lua, marked one global in WAOptions as todo  
- Fix load condition tab  
    Broke in 6dfb997413dcafd5113f1ca87a0fe4dc91362a26  
    Ticket-number: 403  
- BuffTrigger.lua: GetNameAndIcon()  
    Document why that function returns nil, nil for now  
- Fix BigWigs message trigger  
    The spellId needs a type.  
- IsMoving trigger: Work around PLAYER_*_MOVING being sent to often  
    Channeling spells, e.g. Mind Flay results in lots of  
    PLAYER\_STARTED\_MOVING, PLAYER\_STOPPED\_MOVING events.  
- DBM Trigger: use new callback api  
    Gets us a icon and adds another potentially useful condition in  
    the spellId.  
    The api also provides us with "colorId" and "timerType", which I  
    have choosen to ignore for now. Both are somewhat useful, e.g.  
    showing a timer that matches the colorId "phase", would be  
    useful to some  
    But I'm keeping it simple for now and this can be easily extended  
    at a later date.  
- Fix bufftriggers for arena1-5  
    Ticket-number: 363  
- cleanup and a TODO for Infus  
- and translations again  
- pull in updated translations  
- Merge pull request #10 from InfusOnWoW/smallpatches  
    Various small patches  
- Add DBM and BigWigs Trigger  
    A event trigger for announces and a status trigger for timers.  
    The dbm api is rather limited, so there's no automatic icon possible.  
    Also I'm not sure I handle everything correctly, but this works with  
    the test bars.  
    The BigWigs api has more finesse, so we have a automatic icon.  
    Also there seems to be a priority parameter on the timers, which  
    I'm ignoring for now.  
- GTFO: Fix logic for hiding GTFO trigger  
    Broke in ef5e52e1339280ae454a98625ad9ff06a53ea82f. We want to hide  
    the GTFO trigger if neither a aura uses it nor the addon is loaded.  
- Add Player Moving to "Conditions"  
    But only watch for PLAYER\_STARTED\_MOVING, PLAYER\_STOPPED\_MOVING  
    if we have a trigger actually using that condition.  
- Cooldown Progress (Item): Make "inverse" a tristate  
    Same as for Cooldown Progress (Spell)  
    Ticket-number: 393  
- Add ZoneID load condition  
    Ticket-number: 396  
- Fix GenericTrigger.GetNameAndIcon  
    Actually return a name and a icon.  
    Ticket-number: 401  
- Change name to "Weapon Enchant (Old)"  
    As far as I can tell there's no clas that should be using this trigger.  
    shamans weapon enchants, rogues' poisons, sharpening stones and wizard oils  
    are long gone.  
- Remove some unused upvalues  
- Refactor CreateTalentCache()  
    Thanks to the patience and help of the great people in #wowace (especially nebula) for making this happen. Most of this code existed because you used to query for talents of other classes, since 6.0 you can't do that anymore though. We noticed that db.talent\_cache in the SV is actually never used anywhere but could, in the future, maybe hold a list of icon paths of all talents across specs so you always have icons for those up. I still removed the code for it now, in case we never do it.  
- Remove parts of pre6.0 compat  
- load LibCompress by the lua, not the xml  
- alter toc info  
- add italian locale file  
- more safeguarding before calling :Collapse on a clone, will be reworked in a later patch.  
- Try to fix our strata problem  
- cleanup, list some todos and globals for the linter  
- Merge pull request #9 from Tercioo/master  
    Load Init script if the aura has EncounterID trigger  
- less double local'ing and a bit of cleanup  
- no need to double local every function  
- typo fixes  
- not sure if intended that way but we'll see  
- derp  
- list globals for the linter and mark a few spots with XXX GLOBAL for Infus  
- Add some more comments to WeakAuras.lua  
- TestForLongString: Guard against the variable being nil  
- Slightly simplify WeakAuras.ConstructFunction by removing inverse  
    Since the function is only used to create the load function now and  
    that doesn't use the inverse option.  
- Duplicate ConstructFunction into GenericTrigger.lua  
    No code changes except renaming it to Internal.ConstructFunction.  
    This is in preparation of several rounds of changes.  
- ScanForLoads: Iterate once over all displays  
    Instead of once of auras and once over events.  
- Remove aura\_cache:Reloading and aura\_cache:DoneReloading  
    Simplifies the code and as far as I could tell this had no effect  
- Simplify EnableTrigger by always providing EnableTrigger  
    Which just calls Expand if there's only one trigger  
- Move WeakAuras.me and WeakAuras.myGUID to BuffTrigger.lua  
    As it is only used in that file and can be made internal then.  
- Remove unused pending\_aura\_scans  
- WeakAuras.Rename: Remove unused local temp  
- WeakAuras.CanHaveAuto: Use it only to mean automatic icon  
    There was some confussion on the exact meaning of CanHaveAuto.  
    E.g. for custom triggers, if either a nameFunc or a iconFunc  
    existed, CanHaveAuto returns true. Most of the regions would  
    check CanHaveAuto also in the SetName function.  
    In the options dialog though, CanHaveAuto just means the automatic  
    icon.  
    Thus e.g. having a custom name function would lead to  
    CanHaveAuto returning true and thus the automatic icon  
    checkbox being enabled, yet just having custom name function  
    is not good enough for a icon.  
    So make CanHaveAuto mean only one thing: Whether this trigger can  
    have a automatic icon. Also cache the value of CanHaveAuto in the  
    region's modify functions and use that cached value.  
- RegionTypes: Introduce WeakAuras.ReplacePlaceHolders  
    Which dedeuplicates the various percent replacements  
- Add WeakAuras.GetNameAndIcon  
    But only implement it partially. For the generic trigger, having a  
    implementation, makes it easier to make a few things local to  
    GenericTrigger.lua in a future patch.  
    The buff trigger code is harder to abstract,  
    and since I don't plan on similarly reworking WeakAurasOptions.lua,  
    I leave it as is. Event though this looks somewhat strange.  
    No logic change in this patch.  
- Move GTFO check code to GenericTrigger.lua  
    As it belongs there. Some small logic changes, iterate over events  
    instead of db.displays. Don't check the GTFO version number.  
    (GTFO 4.2 is now 2 years old.)  
- Split up ToolTip handling code  
    Some small logic changes, but no behaviour change.  
- BuffTrigger: Simplify CanHaveDuration/CanHaveAuto  
    No logic changes.  
- GenericTrigger: Remove unused properties from internal data structure  
- BuffTrigger: Remove unused properties  
    I could not find any usage of those properties  
- Introduce a table loadFuncs in WeakAuras.lua  
    Instead of storing the data in the trigger specific data structures.  
- Split WeakAuras.CanHaveTooltip  
    Slight simplification of the resulting code, without any changes in  
    behaviour.  
- Fix BuffTrigger.Rename  
    loaded\_auras is keyed on the unit or spellName.  
    Also add aura\_cache.Rename to make sure everything is renamed  
- Split up WeakAuras.Rename  
- Split up UnloadAll  
- Split up WeakAuras.ScanAll() for each trigger system  
    Rename WeakAuras.ForceEvents() to GenericTrigger.ScanAll()  
- GenericTrigger: Use UnloadDisplay() in Delete()  
    Fixes a bug where for combat log triggers delete wouldn't properly  
    clean up.  
- Split up UnloadDisplay() for each trigger system  
- WeakAuras.lua: Split up WeakAuras.HandleEvent  
    Now uses one frame for auras and one for other triggers and make  
    aura\_scan\_cooldowns local, since it isn't used outside of  
    BuffTrigger.lua.  
    Otherwise identically code.  
- Transmission.lua: Make almost every function local  
    And document the remaining global functions  
    Also slim down WeakAuras object by not embedding Serializer and Comm  
    into it. The libraries are only used in Transmission.lua  
- fix clones error  
- Split up WeakAuras.pAdd and move it to the trigger system files  
    Only code change: The check for the trigger type being wrong went missing.  
- Split up WeakAuras.Delete() and move parts to individual trigger systems  
- BuffTrigger.lua: Actually save the combatAuraFrame into WeakAuras.frames  
- Move various functions to BuffTrigger.lua  
    The functions themselves are almost unchanged  
    Only relevant code change Instead of direct usage of db.tempIconCache in  
    BuffTrigger.lua, use a wrapper function SetTempIconCache  
- Split up LoadDisplay function and move them to the trigger system files  
- WeakAuras.lua: Fix indentation in load function  
- Split up scheduled scans and move to the trigger system files  
    Instead of storing scheduled scans for cooldowns in a nested table,  
    store them in its own table.  
- Move various functions to GenericTrigger  
    No logic changes, only e.g. paused => WeakAuras.IsPaused()  
- Move CanHaveClones into individual trigger system files  
- WeakAuras.lua: Move CanHaveAuto into trigger system files  
- WeakAuras.lua: Move CanHaveDuration into the triggersystem files  
    No changes to code  
- WeakAuras.lua: Move CanGroupShowWithZero to individual trigger systems  
    No code changes in the actual code  
- Add BuffTrigger.lua and GenericTrigger.lua  
    Split up WeakAuras.Modernize(). The code is moved without any changes.  
- WeakAuras.lua: Remove WeakAuras.RegisterMany  
    It was unused and called a non existing fnction  
- WeakAuras.lua: Comment on a few global variables  
- WeakAuras.lua: Clean up aliases for global functions  
    None of those functions were actually used  
- Font Size for Icon and Aurabar  
    Harmonize max to what the text region is using, meaning switch from  
    max = 24 / max = 25 to softMax = 72.  
- Cast Trigger: Add inverse option  
    Ticket-number: 344  
- Update combat log trigger to include isOffHand and Multistrike  
    See http://wow.gamepedia.com/COMBAT\_LOG\_EVENT  
    I have tested multistrike for healing and damage and it worked.  
    Ticket-number: 350  
- Don't show all buttons on loading finished (if the options are hidden)  
    Ticket-number: 360  
- Load Init script if the aura has EncounterID trigger  
    Auras with EncounterId load condition now has their Init script (if any)  
    run immediately upon entering on a raid instance.  
- add the remaining ones and add a local for _G  
- list some globals so lua-linter-globals shuts up about them.  
- Fix GenericTrigger.Rename()  
    loaded\_events doesn't always contain the id on the first level. Also  
    rename the ids in the update\_clients table.  
- Fix affected player being unknown sometimes.  
    As far as I can tell, sometimes after logging in GetUnitName returns  
    unknown for some players. So check directly before returning the name  
    if the name is equal to UNKNOWNOBJECT and then fix our cached name.  
    Ticket-number: 378  
- Fix AssertMemberList not including the player on the first call  
    Ticket-number: 378  
- Avoid the creation of a new table for every WeakAuras.GetAuraTooltipInfo() call by avi90  
- Revert "embed LibStataFix"  
- Close the options dialog on entering combat  
    Since Warlords of Draenor WoW simply interrupts addons that take  
    to long while in combat. Since especially importing takes quite  
    long, WoW can interrupt us in the middle of importing. That then  
    might leave our internal data in a inconsistent state.  
    I could reproduce the issues reported in ticket number 183 after  
    3 tries in trying to import in combat.  
    So on entering combat we close the options dialog and reopen it  
    afer combat.  
    Ticket-number: 183  
- whitespace  
- Fix appendToTriggerPath/appendToUntrigger path being nil  
    Ticket-number: 324  
- fix typo in CanHaveAuto()  
- Move name arg for UnitAlternatePowerInfo() by one to the right (6.2 change) thanks to Lombra for the hint!  
- Fix wrong spell charges fix  
    Make sure we set the charges before calling ScanEvents  
- Fix incorrect spell charges after logging  
    Ticket-number: 345  
- Model: Reset model on UNIT\_MODEL\_CHANGED and a few other events  
    We used to set the model everytime the trigger triggered, but  
    that lead to frequent stuttering of the model animation.  
    This patch watches UNIT\_MODEL\_CHANGED and checks if the event  
    is for the unitId we are watching. It also wathces  
    PLAYER\_TARGET\_CHANGED and PLAYER\_FOCUS\_CHANGED if the unitId is  
    target or focus.  
- Rewrite import to use a dynFrame  
- Try to fix corrupted entries  
    Since I know the root cause now, I'm pretty sure that data.id is the  
    one that is to be not trusted.  
- Prevent users from corrupting their settings  
    So I was always baffled on how users could end up with a corrupted entry,  
    where db.displays[id].id was different from id.  
    What is happening is this:  
    - We decompress the data for a aura.  
    - This table gets added to db.displays: db.displays[data.id] = data;  
    - The script is interrupted, so the import window is never hidden  
    - The user clicks on import again  
    - This detects that data.id is already existing so it changes data.id  
    - This actually also changes the data.id of the table already added  
      to db.displays  
    - Prevent that by hiding the import window first  
- embed LibStataFix  
- dummy commit to pull in updated translations  
- Aurabar: Fix typo otherwise displayTextRight is never set at all  
- Update TOC for Patch 6.2  
- OptionsDialog: Sort the buttons delayed  
    If a event happened and the options window is hidden.  
    Ticket-number: 251  
- Combat Log trigger: Check destUnit via GUID instead of destName  
    That should be more reliable and fixes:  
    Ticket-Number: 311  
- Don't restart models on each WORLD\_MAP\_UPDATE  
    This breaks with NPCScan.Overlay installed. Instead hook into  
    the world map hide function. As that is where we need to reset  
    the models.  
- ConstructFunction: Simplify interface  
    - Remove unused parameters subPrefix and subEvent  
      The function doesn't use those parameters, so remove them from all  
      callers. Also removes some special handling for the combat log trigger.  
    - Pass in the trigger table directly  
      Instead of data, triggernum and the field.  
- Text: Check that the font was set before SetText  
    Ticket-number: 305  
- avoid two division by zero errors on the PTR  
- revert font change, will now use your custom font again  
- Pet Behavior trigger: Fix to changes in WoD  
    Don't stop at a empty button and active is a bool now.  
- Auracache: Key it on the aura id and not on the auraname  
    Otherwise the count condition of two auras that check for  
    the same auraname gets confussed.  
    Ticket-Number: 281  
- Progress Bar: Add zoom option  
    Because the icon has it and it's easy to add. Not particular  
    useful..  
- Progress Bar: Hide icon color if icon is deselected  
- Text: Check that the font was set before SetText  
    Ticket-number: 305  
- revert compat removal  
- whitespace change to pull updated translations.  
- remove some MoP compat, rename Encounter ID list translation entry and translate "Encounter ID" maybe the CurseForge translation system likes to pick up the changes this time...  
- remove comment  
- convert indenting to what is used in the files (spaces - sigh) and localize the encounter id tooltip values, see http://www.wowace.com/addons/weakauras-2/localization/phrases/1144-current-encounter-ids/ if you want to help translate it, not sure this is the best way to do that but it will have to do for now.  
- Merge pull request #8 from Tercioo/master  
    Ticket #4 - Load Condition on ENCOUNTER\_START  
- Ticket #4 - Load Condition on ENCOUNTER\_START  
    Add an extra option on Load panel to type the Encounter ID.  
    Tracks ENCOUNTER\_START/END to load and unload the aura, also has  
    protection agaisnt disconnect and combat leave by zone change.  
- Add aura ID to the aura\_env table.  
- Init cooldowns after 0.5s  
    As if abilities are changed by talents, that information is not  
    available on PLAYER\_ENTERING\_WORLD  
    Ticket-number: 283  
- Global Cooldown: Use the global cooldown spell 61304  
    And remove the code asking for a reference spell.  
- Improve performance of dynamic groups again  
    Check if we need to resort. Should fix  
    Ticket-number: 290  
- Fix models being hidden by cinematics  
    Model auras are hidden by cinematics, which can be easily reproduced  
    either in Dalaran with the Lich King cinematic or in the Garnisson on  
    watching a zone end cinematic.  
    Listen to PLAY\_MOVIE and call setModel() on the model auras that  
    are loaded works around the bug.  
- Fix minimum size for Texture and Model  
    Ticket-number: 289  
- Add system messages  
    Ticket-number: 224  
- Resort after setting duration info  
    Fixes Ticket-number 276  
- GetPetActionInfo() returns true/false instead of 1/0 now, thanks to Extremity for the discovery!  
- Guard against yOffset being nil  
    Can apparently happen.  
    Ticket-number: 278  
- Fix %p display  
    If we are called with a remaining time of 0, we still need to update  
    region.values, otherwise %p will return a wrong value.  
    Ticket-number: 250  
- Fix ownOnly aura, unitCaster can be nil  
    Ticket-number: 279  
- Update TOC for Patch 6.1  
- Added table "aura\_env" for all custom functions of an aura.  
    An aura-specific table, "aura\_env", has been added for use for all  
    custom functions of an aura.  
    Additionally, an "On Init" section has been added to the Actions  
    tab, which provides another custom function and is guaranteed to be  
    executed before any other custom function defined for that aura.  
- Import: Disable import button while in combat  
    Since Warlords of Draenor WoW simply interrupts addons that take  
    to long while in combat. Since especially importing takes quite  
    long, WoW can interrupt us in the middle of importing. That then  
    might leave our internal data in a inconsistent state.  
    I could reproduce the issues reported in ticket number 183 after  
    3 tries in trying to import in combat.  
    So on entering combat we disable the import button.  
    Ticket-number: 183  
- Make specific unit work for combat log event triggers  
    The text entry for specific unit has a derived its hidden function  
    incorrectly from the parent's hidden function.  
    The two changes:  
    a) Pass in the trigger to the hidden function  
    b) If hidden was a function the "or hidden" part would always be  
       true, since a function is a true value.  
    Making those options visible seem to be enough to actually fix  
    the ticket 247.  
- Aurabar: Add color option for icon  
    Allows for separately making the icon transparent, since every  
    other part has a color setting, this kind of makes sense.  
    Ticket-number: 245  
- Import tooltip: Truncate on more than 30 auras  
    Ticket-number: 182  
- Rewrite Ignore Rune CD  
    Apparently a spell cd due to a rune has always a duration of 10.  
    So, rewrite the ignore rune cd option to use that fact. And track  
    the spell cooldowns but disregard any update that has a duration of  
    10 for those spells.  
- Fix remaining time check for some auras  
    Ticket-number: 68  
- Fix sorting in dynamic groups  
    We need to set the duration information in the region before we  
    call expand, as expand will call controlChildren, which sorts  
    according to the duration info.  
    Ticket-number: 156  
- Merge pull request #5 from sbWoW/master  
    change dungeon difficulty load condition from select to multiselect  
- Add tristate "aggro" to threat trigger  
    Ticket-number: 243  
- Improve performance of dynamic groups  
    Calling expand on a already visible aura called region:EnsureTrays  
    and region:DoControlChildren, which is excessive and unnecessary.  
- Fix none sorting in dynamic groups  
    Ticket-number: 213  
- Cooldown Progress for Spells: Replace inverse with a tristate option  
    The option allows has the options: Show On Cooldown, Show On Not Cooldown,  
    and AlwaysShow. This combines nicely with the charges support to for  
    example show a icon if we have at least one charge. That is "AlwayShow" +  
    charge > 1.  
    Ticket-number: 170  
- Guard against custom duration functions returning nil  
- remove debug print  
- Embers: Fix conditions on number of embers to use 0-40 scale  
    Instead of 0-4. Upgrade old auras.  
- Guard against custom text functions returning non-strings  
    Lua's tostring formats nil as "nil", so special case that.  
    Previously returning tables or functions could lead to errors, this  
    ensures that we instead show e.g. "table XXXXX", which should hopefully  
    point out that the custom text function returns a table.  
- pick up updated/reverted libcompress  
- Use LibButtonGlow-1.0 to avoid potential taint from using the template  
- Add spellId matching for combat log trigger  
    Helps in creating cross-language triggers.  
- Remove whitespace before importing  
- Deleting a aura should stop its animations  
- change dungeon difficulty load condition from select to multiselect  
- Fix taint while deleting auras  
- cleanup  
- Fix cooldown not showing if show was triggerd by a secondary trigger  
    This seems to be caused by OmniCC. That is I can't reproduce the bug  
    without OmniCC enabled. Poking around OmniCC didn't produce any clue  
    on why it is buggy. Calling SetCooldown immediately prior to calling  
    show does though, fix the bug without apparently breaking the non  
    OmniCC case.  
    Ticket: 210  
- Fixed a bug that would cause the WeakAurasOptions window to get stuck forever in a "minimized" mode under some circumstances.  
- let the cache overwrite name<>icon mappings when there is a newer (higher id) icon for an old spell.  
- Fix talent multi selection  
    The code trying to upgrade use\_talent ensured that it was always true or  
    nil. That's actually not required and prevented the false state, which  
    is multi selection.  
- Merge pull request #2 from stewunknown/master  
    yOffset still bugged for invisible auras  
- yOffset still bugged for invisible auras  
- Check if pet is alive for "Pet Active" trigger  
    After a pet dies UnitExists("pet") still returns true until the  
    pet vanishes. That's unlikely to be what anyone actually wants  
    out of that trigger.  
- Fix ignore rune cd interaction with inverse  
- Aurabar: Fix modify to correctly apply text/timer font changes  
- Fix type check  
- Stop leaking "trigger" variable  
- whitespace commit to get the packager going  
- Changes SetTexCoord calls to work with Masque skins that do SetTexCoord calls themselves.  
    With this patch, WeakAuras' SetTexCoord calls use the Masque's skinned values as base values, which are then modified for the Zoom levels set in the WeakAuras options.  
- make sure ItemEquip auras untrigger when item is unequipped  
- Add misssing Blizzard Textures  
    Also rename the group from Catacylsm Alerts to Blizzard Alerts,  
    which is more accurate.  
- Replace commented ButtonFacade support with working Masque support.  
- Add replacement functions for ActionButton_(Show|Hide)OverlayGlow to avoid taint caused by using them.  
- Add a mechanism to override functions for scripts  
- Fix renaming auras  
- Aurabar: Fix vertical progress bars to not shrink, but crop textures  
    Ticket-Number: 169  
- Pet battles: Actually listen to the events  
    Ticket-Number: 107  
- DK: Fix ignore rune cd  
- Fix upgrading broken by multi-selecting talents change  
- Always initialize charges in WatchSpellCooldown  
    Instead of only doing it if the ability is on cooldown, since that  
    then meant that the WeakAuras.GetSpellCharges returned a wrong  
    value until the ability was used.  
    Ticket-Number: 147  
- Load options: Also merge class setting if multiple auras are selected  
    With one aura selected the talent spec/talents load conditions show  
    the specs/talents of the selected class. This didn't work if  
    multiple classes where selected. This patch fixes this if all auras  
    have the same class selected.  
- Multi select talents  
    Patch by pnutbutter  
- Guard against nil custom text functions  
    Ticket-number: 44  
- Fix another nil error in new layouting code  
    This simplfies the code to immediately pick the display, so  
    that it is guranteed to exist. The old code tried to also work  
    in cases where we are still loading auras. This now doesn't work  
    anymore, but the code is also much simpler.  
- Fix yOffset being nil error for invisible auras  
- Fix creating new auras while loading is in progress  
    Pick the display after loading has finished.  
- Fix swing timer for ranged attacks  
    Ticket number: 139  
- hopefully fix translations, once and for all  
- ButtonsScroll: Use a smarter layout that hides children  
    Hiding them drastically improves performance for both scrolling  
    the list and moving the window around.  
- Remove function IsChildInView  
    Can't find any caller anywhere.  
- add WA\_DELAYED\_PLAYER\_ENTERING\_WORLD to a few triggers, also locale update  
- fix init  
- fix durationFunc  
- good morning, let's make more sense now.  
- vehicles still use GetComboPoints()  
- looks like the frame can be nil here.  
- Add custom trigger funtion to dynamically change the texture property of displays.  
- Fix spellname  
- more indenting and trying to get localization to work  
- new enUS export  
- import base (enUS) locale from Wowace, too  
- indent change to trigger translations  
- Never lose an end, this time it's okay.  
- Use LibBabble-Race-3.0 for race translations.  
- Add more support for spellIds in buff names  
    SpellIds are now also supported without a full scan.  
    Since this still uses UnitAura mutliple spells with the same name  
    will trip up without full scans. On importing triggers with spellIds  
    the spellName is reset, so that sharing auras with spellIds works  
    across languages.  
    Note: We might want to reset the spellname also if the client  
    language changed, (If we can detect that.) but this patch doesn't  
    do that.  
- Load option for realm  
    The name by itself is not necesarily unique.  
- Add a load option for race.  
    E.g. useful for racial abilities  
- Fix UnitPower triggers not working on initial log on  
    E.g. for me shadow orbs, runic power and monk's energy bar would  
    not correctly show up after logging in. Add the same event that is  
    used by stances to trigger all UnitPower related prototypes 0.5s  
    after login.  
- ModelPaths: Update to 6.0 models  
    Used the file list from  
    http://www.zezula.net/en/casc/main.html  
    and converted it via a small Qt/C++ program, source at  
    http://pastebin.com/ETsvzWJm  
    Adds tons of new models. :)  
- just set the frame height to 500 when being <= 40 before when unminimizing so people can't end up stuck in mini mode anymore.  
- don't change from a generic name to a correct one for now so user configs don't reset.  
- Fix hiding auras in rare cases  
    The problematic case was reported via a wowace message thread and  
    involved a Cooldown Progress Dark Soul aura in a dynamic group,  
    which wouldn't hide even though the progress was done.  
    See: http://pastebin.com/1KPwbrt3  
    Collpase should also reset region.show so that a previous Expand,  
    that hasn't yet happened is canceled. Do the same for Expand after  
    Collapse.  
- Next round of indenting fixes  
- more indent fixes  
- indenting fixes  
- Simplify the rest of the secondary ressources  
- Simplify Holy Power tracking and actually use UNIT\_POWER for ComboPoints  
- Whitespace cleanup  
- Tentative fix for transitioning animations, nobody understands this code, it's sad.  
- Switch ComboPoints over to UnitPower() so they can be tracked without having at target  
- Revert "Add the ability to dynamically change Texture via custom triggers by JTF195"  
- Add the ability to dynamically change Texture via custom triggers by JTF195  
- Fixes ticket #100 (Remaining Time Precision - Dynamic 12.3 incorrectly displaying)  
- unbreak some more PowerAuras media  
- fix cooldown swirl  
- Load locales after init  
- Enable Packager  
- Remove spark textures that look bad  
    With the rotation option the standard beam textures are useable,  
    and good enough for a start. So remove my rather medicore textures.  
    The community will hopefully provide better graphics once the  
    feature is released.  
- Spark more options: Rotation and Mirror  
- Font Flags: Add Monochrome Outline and Monochrome Thick Outline  
- Font Flags: Remove monochrome option  
    Found out while testing a realted change that this is a widely known  
    issue. Google finds several bug reports that indicate that this affects  
    many addons.  
- Added a always condition trigger that's always true  
    Trivial to do and has some uses, e.g. for showing artwork or for  
    temporarily replacing one trigger by a always true trigger.  
- Better names on duplicate auras  
    Instead of simply appending a " 2" on each duplication, which  
    leads to aura names like "xxx 2 2 2 2" on repeated duplicates,  
    increment the number if there is a number, leading to the much  
    nicer name "xxx 5"  
- typo fix  
- add locales.xml  
- Move locals to their own folder and load them via xml, also use no-lib-strip.  
- Don't package README.md  
- Merge remote-tracking branch 'wowace/master'  
- removed gitattributes  
- Merge branch '6.0'  
- fix line endings  
- remove gitattributes lines  
- Change folder structure  
- fix importing strings without an additional\_triggers table  
- Update README.md  
- Update README.md  
- Update README.md  
- Update README.md  
- Create README.md  
- reword the german addon description  
- Merge branch 'master' into 6.0  
- bring back some aura files from PowerAuras that somehow lost their alpha channel of the years  
- packager test, we are now on git, guys!  
- fix indenting and bump sync version  
- apply remaining patches by Infus  
- Adds a option for a spark to aurabars. The spark's texture, color and size can be configured. (by Infus)  
- Hardcode compression to Huffman, fixes the export/import of big groups (by Infus)  
- Add support for abilities with charges (not backwards compatible, by Infus)  
- More clean up. This combines all symbol related options. Note, that this does introduce a difference between aurabar and icon configuration. (by Infus)  
- Similar to the previous patch hides various settings if they aren't enabled and also renames the misnamed "text" and "timer" settings. (by Infus)  
- Hides the border options iff the border checkbox is unchecked. This cleans up the interface a little bit. This is in preparation of adding more options later. (by Infus)  
- Fixes a nil error on importing (by Infus)  
- Fix wrong label on import page in rare cases (by Infus)  
- Model: Guard against non existing models (by Infus)  
- Models: Disable choose model when unit is enabled  
- Totems: Add remaining time check (by Infus)  
- convert mp3s to ogg  
- fix playing sound files on the correct channel (by elvador)  
- Improve loading time for lots and lots of auras (by Infus)  
    Layouting hundreds of buttons takes time, the old code layouted all  
    buttons each time a aura was loaded. That's quadratic and for me  
    loading ~850 auras took 30s. Delaying all layouting until the end  
    did work but resulted in a frozen game for too long. Instead layout  
    every 50 auras. This still misses a few frames each time the layout  
    is updated, but decreases the total runtime to ~6s  
- revert hack for GetAddonInfo, Blizzard changed it back  
- Increases the x,y,z sliders for model coordinates from -2  +2 to -20 +20. This more closely matches what users are actually using. (by Infus)  
- Fixes the default text for for the bounce function animation. Clearly both x and y should use bounceDistance (by Infus)  
- 0 progress aurabar still needs a positive because a 0 width bar is shown in a weird way. Instead of using 0.1 it's better to use a smaller value to decrease the chances that it shows up. That happened to me with a unfortunate aura that was just positioned at the edge. (by Infus)  
- Fixes changing the orientation for aurabars which resulted in a lua error due to 2 missing parameters (by Infus)  
- apply Infuses patch for specifing a unit for a model  
- simpler check  
- adjust to use addon index instead of name  
- revert that and add Ambiguate'ed senders to the safe list  
- remove old Ambiguate() in the filterFunc and add Ambiguate'ed senders to the safe list  
- send the server name with the WA link, too  
- fix druid eclipse triggers (update condition) + add icon / name support  
- comments  
- remove 4.1 and 4.0 compat code (...)  
- don't show destination unit options for 'spell\_cast\_start'  
    add some code to debug generated functions  
- [Stanzilla] div by zero protection  
    [Stanzilla] move tutorial button a little more to the left  
    [Stanzilla] Refix 6.0 GetTalentInfo  
    [Stanzilla] TOC 60000  
- Re-apply changes lost in WA1 -> WA2 transition  
- port back transmission changes from 6.0 branch  
- Refix 6.0 GetTalentInfo  
- Revert .toc bump, if u want it to work in beta, just change interface version to 60000 in all tocs (load out of date doesn't work)  
- Added patch 6.0 compatibility. Note that wow beta is currently not eating any external textures/fonts/sounds.  
- Cleanup after nebula169..this guy... (<3)  
- clean up on aisle Stanzilla!  
- clarify tooltip and move button further to the right.  
- Tooltip for Import disabler now works.  
- missed a table level  
- check all triggers for custom code on import  
- wrap the assert in a pcall so nothing breaks  
- add pcall to blocked function list  
- add custom functions to the restricted environment before assert()  
- fix showing name in transmit tooltip  
- check the button if the setting is enabled.  
- clean up some globals/typos  
- Import disabled function now works, just need to fix the tooltip  
- don't spam the custom code message  
- changes, yes I like Tupac.  
- needs more end  
- more working, less retard  
- Check for pcall in imported auras, warn when imported code contains a custom trigger, more work on disable/save import feature.  
- handle-subnamespaces="none" for all the other locales as this seems to be working.  
- Try to fix deDE localization keyword substitution by adding the missing comma.  
- try handle-subnamespaces="none" to see if it fixes #29  
    /me glares at Torhal  
- localize In Pet Battle  
- add pet battle option for auras, thanks esiemiat  
- add a nil-check for unitCaster  
- Make the tooltip scanner "size" parser understand "1,234" not just "1234". Groumf Blizzard.  
- Less drawing, more useful stuff. :)  
- Added 'Dynamic' to the Time Precision options. This will return 1 or 2 digits after the comma when the "Time" of an aura is less than 3 seconds. This value is hardcoded. Code can probably be written in a cleaner way.  
- Added font outline option for the "icon" region type. Defaults to "OUTLINE".  
- Add an "interrupt" word - same style as others (Hobo font with shaded outline)  
- Global fixes  
- ambiguate player name in transmission  
- More helpful error on corrupted savevars  
- Don't check public channels for aura links (gen/trade).  
- copy over the realid checking from badboy to allow aura links from realid friends not in your group/guild.  
- Filter out aura links sent by players not in our group or guild.  
- add save import button, hidden and non functional atm  
- Transmission: Don't filter transmission requests.  
- Transmission: Only accept aura transmissions from players you have requested them from by clicking the chat link. Prevents malicious spammers sending people auras and invoking a popup to accept them.  
- more scam checking  
- warn for every aura that is sent by other players and uses a custom trigger.  
- cosmetics, by nebula169  
- update safeguard  
- make the error print more informative  
- nil check and more blocked functions  
- forbid SetTradeMoney and SendMail, patch by nevcairiel  
- make the print red  
- add a scam protection against nasty gold thiefs  
- Use Full Scan auras can now use a Specific Unit as their unit. I didn't get a chance to test this extensively but it seems like it should work correctly.  
- Added a Pet Behavior (Assist, Defensive, Passive) trigger  
- Fixed a bug with multi-target auras trying to get GUIDs for some targets that do not return them (why do they not return them? I do not know)  
- Talent and Specialization loading options are now more intelligent - they will display class-specific information in their dropdowns if a single Class is selected as a load option  
    Also, the Specialization load option dropdown will no longer display information about the current character even if the display is only loaded for another class  
- Fixed a bug with the duration info cache for custom Event triggers that should allow them to work properly with relative-duration animations  
    Except it didn't look like a bug but rather something I did intentionally but forgot why, so this change will probably break something else =S  
- Fix stan being bad  
- second commit featuring the name change and the inclusion of flex difficulty  
- AddOns should not call debugprofilestart() because this breaks the functionality of debugprofilestop() for everybody else (the timer gets reset). There is no reason to call debugprofilestart() because you can get the same effect with an initial call to debugprofilestop() that you subtract from the value from subsequent calls of debugprofilestop().  
- Update 5.3 (live) difficulty check  
- Let's escalate some TOCs! (5.3 Update)  
- update instance code for difficulty index 10 and 11 (normal scenario and heroic scenario)  
- Fix for ticket 353: lua error attempt to call method ControlChildren.  
- Better totem icons  
- embed libchatanims  
- I'm in your toc, updating your Interface Version to 50200.  
- fix toc  
- add optional GTFO addon integration  
- fix for the last commit  
- apply smcn's patch to allow entry of display ID for models  
- re-enable button glow  
- preferredIndex = 3 => STATICPOPUP\_NUMDIALOGS  
- break button glow feature for now because it causes severe taint issues  
- Fix for removal of BATTLEGROUND chat type.  
- Fix Display Ordering and Frame Strata within a Group  
     http://www.wowace.com/addons/weakauras/forum/39635-display-ordering-and-frame-strata-within-a-group/  
- replace chat hook with chat filter, avoids potential issues with chat mods.  
- mind your commas.  
- added missing spell activation overlays as reported by chrohe. thanks!  
- SPELL\_POWER\_CHI is the new SPELL\_POWER\_LIGHT\_FORCE  
- 5.1 TOC  
- - Fix so WeakAuras options can't get shown off-screen (wasn't likely in normal play but could happen if the user changed resolution or ui scale between logons)  
- - Tweak icon browser layout in options so the scrollframe doesn't overlap the buttons (Custom Icon).  
    - Fix/pretify user information messages for optional modules failing to load.  
    - Fix tutorials so they work from a fresh login and not only after a /reload.  
- - Remove player pet from combat check (it looks like UnitAffectingCombat doesn't return proper value for pets in PLAYER\_REGEN\_ENABLED)  
    - Change initialization of non-static game data like specializations, to PLAYER\_LOGIN (ticket 372)  
    - Do the same for forms instead of creating an unthrottled OnUpdate that likely never stops for some users (1.4.7.5 and previous?)  
    - Get specialization info from classid not player.  
    - Apply the in combat options handling to Imports started from WeakAura chat links as well.  
    - Fix and pretify the info message when an optional module can't be loaded.  
    - Attempt to fix the "Ignore Rune CD" option not working (needs verification)  
- - Fix ticket 365 (blank vertical progress bars) and guard against missing textures.  
- - Fix corrupted data for time remaining / stacks (ticket 366)  
    - Fix some tonumber() sanity checks to perform the intended function of number check and not type check.  
    - Validate numeric input controls in options so this particular user error can't happen again.  
- Added ASCII art to the source code. Most useful commit ever!  
- - Fix Aura Filter error when opening options in combat using the LDB display instead of command-line.  
- - Fix for ticket #366; confirmation by the submitter would be good, can't reproduce it on my end.  
- - Prevent "script ran too long" errors from trying to load the options module in combat.   
    (Inform the user and finish on combat exit; only affects initial load)  
    - Prevent errors from trying to use actions dependent on LoD addons if they're disabled or removed by the user.  
- - Player guid take 2.  
- - Don't try to cache the player guid before P\_E_W.  
    - Add a couple checks for other units requested guids.  
- this can still be nil  
- - Fix a silly mistake with party/raid units. Should be ready for user testing now.  
- - Add an overlooked localization string and see if we can get a package.  
- - Prevent errors from trying to show tutorials with a tab-less display selected   
    (eg. Group display with no children)  
    - Add monk detection to the beginner tutorial   
    - Tweak some of the messages so that they don't show raw format specifiers   
    (some messages are still incomplete/obvious placeholders)  
- - Long standing bug with Auras disappearing from Options fixed and changes made to catch similar easier in the future.  
    (coroutines are not guaranteed to fire in the order created, or produce errors when the added function fails)  
    - Some more divide by zero protection in options  
- - Group scanning reworked to 5.x standards  
    - Improved role detection  
    - RangedSlot remnants removed  
    - Class descriptions and colors un-hardcoded  
    - Tiered talent detection (tier1 - 6) forward compatible  
    - Scenario added to group types, LFR to raid difficulties  
    - Monk stances added to stance options  
    - Some divide by zero prevention (is that still necessary in live)  
- - Fix missing translation for fourth talent treeeeee  
    - Fix Ticket 336, missing group auras in party (thanks Gragagrogog)  
    - Fix Ticket 306 by adding an option to check for currently active talents (thanks ccKep)  
- fixes ticket 332  
- Refix it, without fatfingering extra keys  
- Fix nil instance types  
- let's try Expf's patch for taint free aura linking  
- final SETGLOBAL cleanup. variables named Debug earn someone a special place in hell  
- second pass SETGLOBAL cleanup  
- first pass SETGLOBAL cleanup.  taint is bad, mkay?  
- fix a typo  
- fix some global leaks  
- First rule about difficultyIndex == 9 is that we do not talk about difficultyIndexx == 9  
- fixed typo, thanks to nebula169  
- Druids have four specs now.  
- Merged revision(s)  from branches/5.0:  
    modified   WeakAuras  
    modified   Localization-enUS.lua  
    modified   Prototypes.lua  
    modified   RegionTypes/aurabar.lua  
    modified   RegionTypes/dynamicgroup.lua  
    modified   RegionTypes/group.lua  
    modified   Transmission.lua  
    modified   Types.lua  
    modified   WeakAuras.lua  
    modified   WeakAuras.toc  
    modified   WeakAurasModelPaths/WeakAurasModelPaths.toc  
    modified   WeakAurasOptions/Localization-enUS.lua  
    modified   WeakAurasOptions/RegionOptions/dynamicgroup.lua  
    modified   WeakAurasOptions/RegionOptions/group.lua  
    modified   WeakAurasOptions/WeakAurasOptions.toc  
    modified   WeakAurasTutorials/Localization-zhCN.lua  
    modified   WeakAurasTutorials/WeakAurasTutorials.toc  
- Show emberbits instead of only full embers  
- Remove ranged slot and add a hyrid sort mode for dynamic groups  
- minus typo  
- fix up difficulty detection and rename Harmony Orbs to Chi Power  
- add support for burning embers and demonic fury  
- add support for harmony orbs (are they really called like that? :O)  
- add support for shadow orbs  
- don't error here, bro  
- Add missing translations and challenge mode detection  
- let's divide by zero at little bit less  
- ching chang chung  
- Update TOCs and fix the nasty green texture without adding a hack to LSM like other people  
- More API fixes  
- and some more API changes  
- hello monks  
- some 5.0 api changes, instance loading does not work yet  
- branch  
- Forgot to alpha reduce icon =)  
- Reduce complexity of graphics alpha channels. Remove another big chunk of zip file size.  
- Some more image compression...  
- Shave a meg or two off of the zip size by actually using tga RLE compression on images. Derp.  
- Ninjachange: the wrench icon really doesnt need to be 256x256  
- Reduced sample file sizes by loads. Who needs stereo + 44khz + 320kbps for dings & blips & meows?   
- fix for ticket #252, Mikk might come up with a better one but this works.  
- try to avoid some UI taint by setting preferredIndex to 3 for StaticPopupDialogs  
- let's try this madness only when fonts are set to be bigger than 35  
- fix dynamic load options for heroic/normal instances based on ticket #254  
- fix groups erroring while being moved.  
- Fixed a bug that prevented Icon tooltips from displaying properly  
    Fixed a bug that caused graphical weirdness on Progress Bars at 0% fullness  
- .toc updates to 4.3  
- Fixed a bug which caused an error at log-in for users with any Text displays in non-dynamic Groups  
- * Fix for group border alignment when content is not aligned to group anchor point  
    * Fix a bug in model display  
    * Added border options to model display  
- * Some code cleanup  
- * Fix for r199 broken commit  
    * Added borders to groups (dynamic groups, text, model under dev.)  
- - Removed old timer code from packager (still in SVN)  
    - Updated Progress Bar with a lot of new options (Border Color, Individual Text options)  
    - Fixed Tutorial localization bug (zhCN & enUS)  
- * Moonkin eclipse power should now be more consistent with the default UI bevavior.  
    * Fixed a bug that prevented eclipse-displays from hidding  
    * Another PTR 4.3 update to increase options performance on low FPS systems  
- * Another fix for moonkin power bar  
    * Added another feature to Death Knight Rune triggers (Rune count).   
    NOTE: If your rune trigger stops working, make sure to enable the rune-type checkbox. (Formerly it was "required" thus auto-selected)  
- * Tried to fix Moonkin solar power  
    * Multi-Target displays should now update more probably (Aura refreshes by spell-casts that don't trigger an SPELL\_AURA\_REFRESH event)  
    * Applied a fix for the PTR 4.3 (Note: GetTime() does not seem to update inside one OnUpdate event anymore. Moved to using coroutines for throttleing instead)  
- * Recommiting. Somehow TortoiseSVN did not recognize moved files.  
    * Fixed a small Full Aura Scan error  
    * Hopefully fixed the lunar eclipse trigger  
- * Added UnitCanAttack/UnitLevel to Unit Characteristics trigger  
    * Added an inverse option to the stance trigger  
    * Added some new sound effects  
- * Moved some files to the Options addon, icnluding:  
     * ForAllIndentsAndPurposes  
     * Few Localizations  
    * Added Tutorials localization  
    * Made missing wowace.com localizations (esMX, koKR, ptBR, zhCN)  
- * Fixed another Trigger: Aura, Unit: Group related bug  
    * Rewrote Trigger: Aura, Unit: Group code to internally use GUIDs instead of raid ids and names!  
- * Fixed equipped item trigger  
- * Test code before commiting!  
- * Another 4.3 PTR fix regarding UnitMaxHealth()  
- * Another 4.3 PTR fix regarding UnitPowerMax  
- * Did some code cleanup  
    * Shapeshift triggers will now be avaluated delayed after login to make sure data is available  
    * Small PTR fix for UnitPowerMax  
- * Fixed combination of inverse and name setting of totem trigger  
- * Fixed last-minute bug introduced into last rev.  
    * Addition to last commit:  
     * Fixed several TOC issues (re-added version-supstitution, added missing OptDeps)  
- * Fixed options for cooldowns progress not requiring spell/item id  
    * Added "Battleground emotes" to the chat trigger (battleground notices)  
    * Fixed aura trigger, Unit=group option should now work in battlegrounds  
    (Please post comments/ticket if there are still any quirks left)  
    * Minor (tiny) optimizations  
- * Fixed DK-Rune cooldown trigger  
    NOTE: There is a slight wow-related delay between rune cooldowns and rune type changes. The only way to compensate is to use start animation-tab to hide the display for a few (mili)seconds before showing it.  
    * One can now potentially use unlimited numbers of triggers for one display instead of 9  
- - WeakAuras now support events (messages) send by AceEvent-3.0 addons  
    - Death Knights: Spell Cooldowns can no differ between own and rune enforced cooldown. (Option added)  
    - New condition: Player has pet (alive)  
    - Fixed possible problem when running with disembed libs without using SharedMedia  
- - Fixed item cooldowns not working  
- - Fixed DK rune trigger  
- - Added new chat output "location". Battleground>Raid>Group>Say  
- - Reworked Death Knight rune cooldown trigger (now works similar to spell/item cooldowns)  
- * Added role-load options (Ticket 184)  
- * Added desaturation option to texture and dynamic texture  
    * Rearranged desaturation options  
- - Fixed issue that made custom picked icons display "?"-Icon when shown without any trigger involvement (Ticket 191)  
- - Fixed localization typo  
- - Icons/Bars can now be desaturated (gray-scale) without requiring custom code  
- Fixed Multi-target Auras for 4.2 Combat Log Events  
- Updated .toc's to 4.2  
    Added localized Notes to all .toc's  
- Updated Combat Log Event triggers for 4.2. If you have Custom Triggers that use the COMBAT\_LOG\_EVENT\_UNFILTERED event, you will have to update them manually. Instructions on how to do so can be found in the WeakAuras forum on WoWAce.  
    Fixed a bug where Item Count triggers were not updating correctly with items with charges.  
    Fixed a bug where Action Usable and Cooldown triggers were not updating correctly in some circumstances involving Death Runes.  
    Fixed a bug where Death Knight Rune triggers were not getting proper icons on login.  
    Fixed a bug where the Glow Frame Choose button (in the Actions tab) was not working with groups.  
    Fixed a bug which prevented Custom Trigger code fields of additional triggers from being edited in the Code Editor.  
    Fixed some buggy behavior related to resizing the configuration window.  
- - Action Usable triggers should now work more consistent for Death Knights  
- - Added missing Power Auras textures (Aura46, Aura47, Aura51, Aura131)  
- The Specific Unit option for auras should now work again.  
- Made Death Knight Rune triggers work a little better with Progress Bars.  
- Inverse option added to Action Usable triggers  
    Group aura tooltips now correctly apply class colors to cross-realm names  
- Fixed .pkgmeta typo  
- Improvements to the Beginners Guide tutorial:  
    Added auto-advancing to some steps  
    General proofreading  
    Changed the closing step to indicate that more advanced tutorials will be released later (instead of implying they already exist)  
- Updated .pkgmeta to automatically copy WeakAurasTutorials out of the WeakAuras folder  
- Fixed a bug in configuration which would occasionally cause errors related to additional triggers  
- Fixed a bug which would cause errors upon selecting the "Multi-target" Unit option without specifying any aura name  
    Updated WeakAurasModelPaths to a fresh listfile scan, and removed many superfluous paths  
- Some files didn't seem to commit properly in r152.  
- Improved the capabilities of the WeakAurasTutorials (specifically, added functionality to automatically advance the tutorial based on changes made in the configuration)  
    Added a New Features tutorial.  
- Removed a memory leak from some Status triggers that would update every frame (e.g. Power triggers)  
    Fixed a bug which prevented Icon displays from using Custom (%c) dynamic text codes  
    Added support for Progress-based animations to auto-cloned displays  
    Fixed a bug which caused Translation Animations to not work properly with auto-cloned displays  
    Rewrote custom dynamic text (%c) update code to be somewhat more efficient  
    Added an option to custom dynamic text (%c) fields to choose how often they update  
    Improved the aesthetics of Group aura tooltips  
    Tooltips should now update while open whenever their display's dynamic info is updated  
    The Icon Picker should now accept spell IDs (although they will not necessarily give any enhanced accuracy)  
    Added Bounce and Bounce with Decay animations  
    Added an option to the Weapon Enchant trigger to specify the name of the enchant  
    Added Blizzard's Spell Alert Impact texture to the default texture list  
- Resolved much buggy behavior related to importing Groups and Dynamic Groups from addons  
    Added localization files for French, Russian, and Chinese  
- Using bossN UIDs with Specific Unit options will now work properly with Aura triggers and will update more reliably with other Status triggers.  
    Fixed a bug which would cause many triggers to throw errors due to not being initialized properly.  
    Wrote an actual tutorial for WeakAurasTutorials.  
- Made improvements to bossN UIDs for Aura triggers.  
    They probably still don't work, though.  
- Added indicators on the tooltips of sidebar display buttons that are defined by addons, showing by which addons they are defined.  
    Added an "Export to Lua table" option to the right-click menu of all displays. This is meant to be an aide to WeakAuras addon developers.  
    Improved support of importing displays with parents through the Addon import UI. Importing groups is still quite buggy.  
- Added a "Tooltip on Mouseover" option to Progress Bar and Icon displays. The option will only appear for valid triggers (Aura trigger or Event/Status triggers that are based on Spells or Items). Full-scan auras have more accurate tooltips than others.  
    Fixed many circumstances where the configuration would attempt to access a display's option table when it did not yet exist (and thus throw an error).  
- Improved the accuracy of sidebar button tooltips (they now distinguish between regular and Full Scan auras, and display a special line for auto-cloning displays)  
    Changed displays that only Load In Combat to remain in the Loaded section of the configuration sidebar  
    Improved the ability of tutorials to point to specific options in the configuration UI - this is demonstrated in the third step of the placeholder tutorial, as it points to the Trigger -> Aura Name option of a display named "Armor"  
- Added a "Player(s) Not Affected" choice in the Name Info option for Group Auras  
    Updated the Group Aura trigger configuration screen to more accurately reflect the options that are used by auto-cloned and non-auto-cloned settings (i.e., removed Inverse from non-auto-cloned, removed Name Info and Stack Info from auto-cloned)  
    Improved the behavior of Group Aura auto-cloning using the Inverse option, and added a new tooltip to the Inverse option to indicate how it interacts with auto-cloning  
- Did much work on WeakAurasTutorials. The framework is now mostly finished. The ability for tutorials to point to specific options in the configuration still needs work and testing.  
    There is currently only one tutorial defined and it has no actual value in its content, but it serves as an example of the tutorial framework.  
- Very minor bug fixes to the configuration  
- Started work on WeakAurasTutorials, an in-game tutorial player for WeakAuras.  
- Implemented much more support for addon-defined displays.  
    Added a UI for managing addon-defined displays.  
    API for addon-defined display registration is forthcoming.  
- Fixed an error related to Event -> Combat Log triggers.  
- Made a tiny change to Duration Info that is passed to displays during configuration.  
- Fixed a bug where auto-cloned displays would not hide properly when unloaded  
- Added a dialog box mechanism which prompts the user to rename displays based on a list of id collisions. There is no actual user-accessible functionality that makes use of this yet, but it will be important for Addon-defined displays.  
- Added a dialog box that appears when an Aura trigger is specified by spell ID that will ask the user if they would like to switch to a Use Full Scan trigger (which can match that specific spell ID).  
- Fixed an compile error in r132.  
    Added Button Glow effects to the Actions tab. Any display can now show or hide a Button Glow animation on any arbitrary frame with a global name or any WeakAuras display.  
- Removed all evidence of a dirty little COMBAT\_LOG\_EVENT\_UNFILTERED work-around. Oh, it's still there; it just (hopefully) won't affect the use of the addon anymore.  
- Implemented an integrity checker for synchronization between Group child and parent relationships. This should prevent the SavedVariables file from entering a corrupted state when a grouping error occurs.  
    Created a new AceGUI-3.0 layout function to use to position all buttons in the configuration sidebar relative to the parent frame instead of relative to each other. This should improve WoW's framerate while moving the configuration window or scrolling through the sidebar, especially when you have lots of defined displays.  
- Enabled the German localization file. Whoops!  
    Fixed a small bug in configuration which caused displays with non-time-based progress values (such as Health triggers) to display as timers.  
    Fixed a bug which would cause an error if a multi-target auto-cloned display would attempt to hide after the configuration UI was opened.  
- Added a GCD trigger to the Status category  
    Added a Swing Timer trigger to the Status category (supports offhand and ranged timers, but these have not been tested, and dual-wield swing timing especially is likely to be very buggy)  
- Added "Specific Unit" options to all triggers that have Unit options. This allows your to specify any arbitrary UID or Name (but only works on friendly group members).  
- Made several improvements to Circular Dynamic Groups, including better animations  
    Spent quite a lot of time making Circular Dynamic Groups work well with the configuration's mover/sizer, backgrounds and borders, animations, etc.  
- Added a Circular growth option to Dynamic Groups.  
    Group animations for Circular Dynamic Groups need a little work, and thumbnails for Circular Dynamic Groups (and Dynamic Groups with auto-cloned displays) need updating, but most of the functionality works well.  
- Improved the sorting of full-scan auto-clone display groups (auras will now be sorted by their UnitAura index by default).  
    Removed a debug message from Model display creation  
- Improved the "jiggliness" of Text displays, and improved their justification property.  
    Fixed a bug which caused group aura auto-cloned displays to update improperly sometimes.  
    Changed the creation of options tables in WeakAurasOptions to greatly increase the loading speed of the configuration window (and reduce memory usage somewhat).  
    Fixed a bug which would cause an error when a new user first opens the configuration.  
    Fixed a bug which would cause an error in Dynamic Group sorting on login.  
- Added Unit Characteristics trigger  
    Added Frame Strata options to all display types  
    Added an inverse setting to Aura triggers' Own Only option which matches only auras cast by someone *other than* the player  
    Changed Transmission.lua to allow WeakAuras to accept links and imports from previous versions (but not vice-versa)  
- Fixed multi-target auto-cloning for 4.1  
    Improved the efficiency of group auto-cloned displays  
    Improved the behavior of auto-cloned displays with Dynamic Group animations  
    Added a dialog box that appears whenever you enable auto-cloning that asks if you would like to automatically add the display to a Dynamic Group  
    Added an option to Dynamic Groups to sort their children by expiration time  
    Moved ModelPaths.lua to a separate LoadOnDemand addon to prevent its loading from causing some people's WoW clients to freeze  
    Re-added some code that ensured model displays would always show up correctly that I deleted recently because I forgot what it did  
- Fixed the fix in r117 to actually fix the thing that needed fixing  
- Fixed a bug which prevented display links from transmitting correctly  
- Fixed a bug which sometimes caused an error when opening the configuration when using clones with Dynamic Groups.  
    Fixed a bug where clones in Dynamic Groups would not hide correctly.  
    Fixed a compatibility issue with AceComm-3.0 which caused an error.  
- Updated Event -> Combat Log Triggers to automatically play nicely with 4.1's new Combat Log Event Unfiltered argument.  
    Added a warning that will display to inform users with Custom COMBAT\_LOG\_EVENT\_UNFILTERED Triggers to update them fro 4.1 (and provides a link with instructions on how to do so).  
- Fixed a very subtle bug in Dynamic Group handling that was causing problems with the "Animated Expand and Collapse" option.  
    Completely rewrote the backend for clone handling, to improve efficiency and allow clones to be compatible with Animated Expand and Collapse of Dynamic Groups. Group-animated clones are still fairly buggy, but they at least work somewhat.  
    Changed the dynamic text fields on Progress Bar and Icon displays to show nothing instead of "?" when no value is defined.  
    Incremented the version number in Transmission.lua, which will cause displays linked from a post-r111 version of WeakAuras to a pre-r111 version of WeakAuras to show an Incompatble Version error. This is because Model displays are not backwards compatible and will cause errors in older versions.  
- Fixed a bug which would cause errors when creating Icon displays.  
- Fixed the problem of Model display thumbnails not displaying correctly with a rather clever workaround.  
    Added a Model picker screen to the configuration.  
    Added a huge (over 2MB) list of Model paths! The model path list is not entirely up to date for Cataclysm, but it should be for the final release.  
    Fixed a bug which would cause table indexing errors when using Full Scan Aura triggers.  
- Versioning might be fixed now.  
    Also added some CPU Profiling code that won't really be useful to most users.  
- I've made a huge mess of things due to poor using version control. Trying to get it all sorted!  
- Added a new display type: Model. Models displays use 3D models from the game files.  
    Currently, the only way to change the model file is to specify a path manually. In a later version, there will be a model picker.  
    Currently, thumbnails for Model displays are buggy in a very strange way. I have no clue why it's happening, and I can't figure out a way to fix it. If anyone has any knowledge about this behavior, please tell me!  
- Deprecated Timer displays. All existing Timer displays should automatically convert to identically-appearing Text displays.  
    Added code that should automatically retain the custom Display Text option of Progress Bars, but only when upgrading from r99 or earlier to r104 or later.  
    Changed all display types to color themselves with their own Color function as display settings are applied. This should fix a bug in the animation system which caused the color of displays to be unchangeable while animating.  
- Fixed a bug with Group positioning  
- Added borders and backgrounds to Dynamic Groups  
    Added borders to Progress Bars  
    Made cloning work better with configuration (any display that can be cloned will now show 2 clones while in configuration, to demonstrate what the cloned effect will look like)  
- Improved the efficiency of the loading sequence, and eliminated "bunching" during the loading sequence.  
    Added a search box above the configuration sidebar  
    Changed the configuration window to be resizable  
- Changed the Timer and Text fields of Progress Bars, and the Stacks field of Icons, to more generic dynamic text fields (they default to "%p", "%n", and "%s" respectively to make the transition invisible to the end user).  
    Added decimal precision options for the dynamic text fields of Text, Progress Bar, and Icon displays.  
- Added ForAllIndentsAndPurposes to the built-in Lua editor, to accomplish syntax coloring  
    Added "Expand Text Editor" buttons to all multi-line edit boxes in the configuration  
    Added a "Required For Activation" option for multiple triggers to choose between "All Triggers" and "Any Triggers". Due to limitations in the WeakAuras core, only the Main Trigger can pass dynamic information to the display, even in "Any Triggers" mode.  
    Added a Sound Channel option to the Actions Tab  
    Put in better garbage collection for multi-target aura triggers. Multi-target aura triggers are now considered fairly stable.  
- Fixed several bugs related to multi-target auras  
    Added a new tooltip feature to Aura trigger input field icons - shows all possible spell IDs and icons that could be matched by the input name  
    Added a full-window text editor to the configuration - currently it can only be invoked by Actions tab Custom options (this will be expanded later)  
    German localization thanks to CommanderSirow!  
- Added auto-clone options to Full Scan and Group Aura triggers - this will automatically clone the display as necessary to display multiple matches  
    Added Multi-target unit option to Aura triggers - another auto-clone option, which uses a combination of Combat Log events and UnitAura tracking to track auras on anything  
    Fixed a bug which caused Cast triggers to misreport the interruptibility of channeled spells  
- Changed Holy Power, Combo Point, and Soul Shard triggers to send information about their current value through Stack Info in addition to Duration Info.  
- Added an option to rotate the text of Progress Bars.  
    Changed Progress Bars to use StatusBar frames (StatusBar frames were initially avoided to prevent some buggy behavior that has since been fixed by Blizzard). This should reduce the CPU usage of Progress Bars while they progressing.  
    Optimized the memory and CPU usage of some functions.  
- Aura triggers set to "Inverse" will no longer display when their specified unit does not exist  
    Aura triggers in general will update more promptly on Load condition changes (most importantly, entering and exiting combat)  
    Fixed a minor option ordering bug in the Animations tab  
- Fixed a bug which sometimes caused item-based triggers to wipe their specified item on log-in  
- Fixed a bug which prevented timed custom event triggers from hiding correctly.  
    Fixed a bug which would cause an error if a Power trigger was created without specifying a unit.  
- Fixed a stupid typo  
- Added many Cataclysm Spell Alert textures that have been added since Cataclysm release  
    Rewrote icon cache creation code so that (theoretically) it will add new icons as new spell ids are added to the WoW client  
- The Stealable option of full scan auras now works properly.  
- Fixed a bug which would occasionally cause Totem triggers to throw errors  
    Fixed a bug which would cause displays with multiple triggers to work poorly with the load conditions  
    Greatly reduced the number of times Conditions triggers are checked in certain circumstances  
    Greatly reduced the number of times some functions are called during log-in  
- Fixed a bug which prevented Combo Point triggers from properly updating on target change  
    Fixed a bug which caused errors when using strings containing apostrophes in some triggers  
- Text displays can now have font sizes larger than 25px (although they will be pixelated)  
    Fixed a bug which kept Name from being displayed on the Add Dynamic Text option of Text displays  
    Updated Spanish localization for 1.3  
- Added CommanderSirow's enhanced Progress Texture code. Progress Textures can now be subjected to all sorts of transformations, including rotation.  
    Added an Inverse option to Totem triggers.  
    Fixed a bug which caused some configuration options to throw errors after their displays had been renamed.  
    Fixed a bug which prevented Weapon Enchant triggers from getting proper duration information.  
- Added a right-click menu option to convert a (non-group) display to a different (non-group) display type.  
    Added a "Remaining Time" option to Aura and Cooldown Progress triggers.  
    Added support for ranged weapons to the Weapon Enchant trigger.  
    Fixed Weapon Enchant triggers to update more accurately.  
    Added an Inverse option to Weapon Enchant triggers.  
    Added a "Gradient Pulse" color animation type.  
    Added SharedMedia sounds to the Actions tab sounds list.  
    Fixed a rather pernicious bug which would cause displays with multiple triggers to occasionally get stuck as visible after closing the configuration window.  
    Fixed a bug which threw errors when trying to use the texture picker with multi-selected displays.  
- Added Color animation functions to Texture, Progress Texture, Progress Bar, and Text displays (Timers were ignored because they are deprecated)  
    Added Color animation support to core and options  
    Added an Import button to the New display window, which allows users to import the strings given by the "Export to String..." option in the right-click menu.  
    Added the ability to define a custom description for any display. This description is shown as "flavor text" on mouseover tooltips in the configuration UI and on linked and imported tooltips.  
- Fixed a bug which kept Combat loading from working.  
    Fixed a bug which kept displays from being checked immediately on load for visibility.  
- Fixed a bug which allowed you to rename displays to the same name as other displays (which would cause them to be overwritten, and do other bad things).  
    Added a right-click menu option to export a display to string. There is not yet any way to use this string to import.  
- Added several new textures - squares and circles with varying shading - courtesy of CommanderSirow  
    Added Spanish localization, courtesy of xxavx  
    Removed the Conditions section of triggers. Conditions are now their own trigger in the Status category. Data from previous versions should be updated in compatibility with this change.  
    The Combat condition was moved to the Load tab instead of the new Conditions trigger. This can be slightly annoying for configuration, but is worth it for CPU efficiency - it allows high-CPU triggers (such as Aura triggers with Unit set to "Group") to be used outside of combat without in-combat performance being affected at all.  
    Increased the time accuracy of Mounted condition checks  
    Added "Full aura scan" option for Aura triggers - allows name and tooltip text matching, spellId, debuff type (curse, magic, etc.), and the ability to use the first number appearing in the tooltip text as Stack Info (useful for tooltips that denote size, like Tyrande's Favorite Doll).  
    Added Cast trigger, and added the ability for Duration Info to pass an argument to force a Progress Bar or Progress texture to animate in reverse (needed to differentiate casts from channels). Icon cooldown overlays are not supported.  
    Added Dynamic Info (Duration, Name, Icon, Stacks) fields to Custom triggers.  
    Added an LDB display. It doesn't have many features, but it changes color if you mouse over it, which is better than real features.  
    Added Character Level to the Load tab  
    Optimized the showing and hiding of the configuration UI.  
    Fixed a bug which would occur when a display was renamed  
- Rewrote rename code - renaming displays is now more efficient and produces much less garbage. This also fixes several bugs:  
    - Renaming a group no longer causes config sidebar buttons to overlap  
    - Renaming a group that has just been imported no longer causes terrible errors and possible database corruption  
    Fixed the sneakiest and most persistent WeakAuras bug - the dreaded Phantom UI Buttons bug (ticket 32)!  
- Fixed a bug which prevented Action Usable triggers from updating as often as they should  
    Added options for Actions to send messages to Chat Frame or Blizzard Combat Text  
- Rewrote Text displays to be able to display dynamic information (progress, duration, name, icon, stack)  
    Also added a Custom field to Text displays which allows for a custom function to return a string value to be included in the display as dynamic info  
- Added a Duplicate option to the right-click menu for non-group displays  
    Added support for selecting multiple displays at once in the configuration UI  
    Added a right-click menu for multiple display selections with the following operations: Add to group, add to dynamic group, delete all  
- Fixed a bug regarding cooldown timers and event forcing (logins & exiting config)  
    Fixed a bug which occasionally caused inverse cooldown timers to emit errors  
    Optimized non-cooldown timer usage; this should fix a bug which would cause the number of timers being used by WeakAuras to spiral out of control  
- Countless bugs squashed regarding display links and the new config UI code.  
    Both are working reasonably well now.  
- Completely rewrote much UI code to make it faster and more responsive:  
      The configuration window now loads displays dynamically (with breaks for frame drawing), which greatly reduces the lag that occurs when the configuration window opens  
      Many operations, such as grouping and copying, were rewritten to eliminate the lag that would occur when they were used. This makes handling groups, group ordering, etc. *much* more responsive, especially when you have lots of displays  
      Delete, copy, and rename operations no longer have their own buttons; instead, those operations can be accessed with a right-click dropdown menu. This menu will be expanded with more operations.  
      Due to the rewrites, some sidebar operations may be buggy, error-prone, or nonfunctional. If UI bugs bother you, just stay away from this release.  
      The infamous phantom buttons bug should be fixed now.  
    Removed a stray debug message from cooldown timer code  
- Rewrote cooldown handling (again!)  
    Cooldowns no longer confuse themselves with GCDs when they have very little duration remaining  
    Item cooldowns (might be) fixed  
    Cooldown Progress (Item) triggers have an Inverse option  
    Ignore GCD options removed - cooldown triggers ignore GCDs by default  
- Fixed some (but not all) bugs related to importing groups of displays using spell links  
- Implemented display link transmission and tooltips (almost) completely (more files)  
- Implemented display link transmission and tooltips (almost) completely  
- Added new libraries to embeds.xml  
    Added Transmission.lua which contains linking and Import/Export code  
- Added a "Hide" option to Alpha animation types. This will simply cause a display to be hidden for the duration of the animation.  
    Fixed progress-based animations for triggers with custom duration info (Power/Health/etc.)  
    Removed debug messages from ChatFrame3  
    Added basic support for display Links and Import/Export functionality  
- Fixed a bug with Combat Log triggers which kept SPELL\_CAST\_SUCCESS events from working.  
- Alternate Power trigger added (can be used for Atremedes' Sound mechanic)  
    Some minor optimizations for timer usage  
- Added Weapon Enchant trigger.  
    Removed some choices the Play Sound option whose related sound files no longer exist.  
    Fixed a bug which would cause groups containing Progress Bars to throw errors.  
- Fixed a bug where Totem triggers would not hide correctly.  
- Removed debug messages.  
- Fixed some instances where displays would magically hide themselves during configuration without permission.  
- Fixed a bug which caused cooldown overlays on Icons to display incorrectly for Icons with 0 duration.  
    Fixed a bug which caused animations to unzoom zoomed Icons.  
    Fixed a bug which caused Progress Textures with certain trigger types to display incorrectly.  
- Fixed a bug which caused the cooldown tracker system to abuse AceTimer-3.0 worse than a gnome with a "Punt Me" sign on his back.  
    Fixed a bug which caused the cooldown tracker frame to be recreated for every registered spell.  
- Added Stack Info and Name Info options to group-based Aura triggers  
    Added "Crowd Controlled" trigger - tracks whether you have control of your character  
    Fixed Totem triggers  
    Added Stack visibility and Icon positioning options to Progress Bars  
    Fixed bugs related to Inverse Cooldown Progress (Spell) triggers  
    Made Stance/Form/Aura triggers work more consistently  
    Added information for multiple triggers to configuration sidebar button tooltips  
    Fixed a bug where mixing Auras and Events/Statuses with multiple triggers would not work correctly  
- Added Eclipse Power and Eclipse Direction triggers  
    Fixed thumbnails for Centered Horizontal and Centered Vertical Dynamic Groups  
    Bug fixes  
- Added a mechanism by which custom Actions can reference the unit of the aura scan which caused the custom Action to be called (WeakAuras.CurrentUnit)  
    Fixed some instances where On Hide Action sounds would play at inappropriate times  
- Fixed many (but not all) bugs concerning custom triggers  
    Implemented "Centered Horizontal" and "Centered Vertical" growth types for Dynamic Groups  
    Fixed a bug where displays would re-load on zone changes (which would play their Start animations)  
- Minor organization fix  
- Made the Icon picker's search function case-insensitive  
- Fixed a bug when displays were set to 0 width  
    Switched the positions of "Okay" and "Cancel" buttons in texture and icon picker screens  
    Added a tooltip to load options that can have multi-selects to indicate that they have three modes  
    Fixed multi-select load options to work with Group settings  
    Fixed a bug involving "phantom" frames appearing on the screen after being deleted (spooky!)  
- Rewrote Spell Ready triggers so that more than one at a time will work per Spell/Item.  
- O wond'rous be this bounty, fill'd with text  
    That whereby shall your feature set be grown  
    And whenst I shall be moved to update next  
    Thy tangled body, truth, cannot be known  
- Dis-embeded SharedMedia and SharedMediaAdditionalFonts  
    Shard trigger (similar to Holy Power)  
    Many Load tab options can now be changed to multi-select mode  
    Inverse option added to Cooldown Progress triggers  
    Fixed a bug where Action Usable's Valid Target option was not working correctly  
- Fixed a typo which would cause Aura triggers to generate errors.  
- Added SharedMedia optional dependencies in .toc  
- Group-wide auras that are *able* to trigger when 0 people are affected by the aura can no longer have "Auto" icon and name.  
- Changed the default color of Texture displays to match the new default texture path  
    Added global references to Icon displays' cooldown frames so OmniCC can blacklist them  
    Rewrote the group-wide aura code - group auras now give duration info old "Raid" or "Party" triggers need to be changed to "Group"  
- Fixed errors in Cooldown triggers  
- Fixed a bug regarding improper handling of nil returns of GetSpellCooldown calls  
- Fixed a bug in a tooltip for group-based aura triggers  
- Removed a stray debug message  
- Integrated all media  
    Changed spell-based triggers to use spell IDs internally (should fix some bugs)  
    Fixed Icon cooldown overlays  
    Smoothed demonstration cooldown overlays in Options  
    Added an option to zoom Icon textures (to crop borders)  
    Fixed a bug involving a phantom Progress Bar on creating a Dynamic Group  
    Changed the default texture for new displays  
    Made the Main animations of displays in a group automatically sync to each other  
    Fixed a bug which prevented displays from properly showing and hiding during talent changes  
    Forced overlapping displays in a group to overlap in the same order as their group order  
- Groups fixed  
    Multiple triggers completed (still not well tested)  
    Multiple trigger options and groups work together  
    Other minor fixes  
- Added Pets to unit options for auras and other triggers  
    Added Happiness to Power trigger (untested)  
    Added Holy Power trigger (untested)  
    Added Mirror option to Progress Textures  
    Improved Progress Texture tooltips and scale animations  
    Re-enabled Cooldown (Item) - Renamed to Cooldown Progress (Item)  
    Added Cooldown Ready (Item)  
    Changed Action Usable trigger to not show when the spell is on cooldown  
- Small bug fix  
    Trying to wrangle revisions  
- Cataclysm spell alert textures  
    Multiple triggers per display (incomplete)  
    Group options broken (temporarily)  
    Sticky Duration option for Progress Bars, Progress Textures, and Icons (keeps durations from resetting to lesser values, which seems to happen a lot on aura refreshes in 4.0)  
    Icon cache moved to Options addon, which cuts memory usage of core addon by 75%  
    Icon cache builds much faster  
- I suck at revision control  
- Mana/Rage/etc. trigger changed to Power  
    Power values will update much more often  
    Added a check for non-existant trigger types  
    Fixed a bug regarding trigger function creation  
    Removed "Cooldown (Item)" triggers until I can figure out a way to support them  
    Improved functionality of Health/Power triggers when unit is set to target or focus  
    Cooldown (Spell) trigger renamed Cooldown Progress (Spell)  
    Cooldown Ready (Spell) trigger added  
    Load option Talent Specialization changed to choose primary talent tree instead of dual spec  
    Fixed a bug which caused Scale animations to displays incorrectly on Progress Bars  
- Added a check to prevent displays from being named with an empty string  
- Forgotten localization string  
- Aura inputs now accept incorrect capitalization, partial matches, and spell ids  
    Item inputs now accept incorrect capitalization and spell links  
    Aura, item, and spell inputs no longer accept incorrect inputs  
- Changed the order of embeds.xml so AceGUI-3.0-SharedMediaWidgets would load correctly  
- Added AceGUI-3.0-SharedMediaWidgets as a library  
- Fixed a bug which prevented the texture picker from displaying textures  
- Changed the order of embeds.xml so LibDataBroker would load properly  
- Added LibDataBroker as a library  
- embeds.xml file added  
    .toc updates  
- .pkgmeta file added  
- Initial commit  
- "weakauras/mainline: Initial Import"  