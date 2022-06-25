# BugSack

## [v9.2.4](https://github.com/funkydude/BugSack/tree/v9.2.4) (2022-06-01)
[Full Changelog](https://github.com/funkydude/BugSack/commits/v9.2.4) 

- bump toc  
- Workflow: move to checkout@v3  
- bump toc  
- bump toc  
- Update zhCN (#58)  
- update ruRU localization  
- add missing strings to localization  
- Update zhCN (#52)  
- Add separate toc files  
- Move back to a single build  
- Test checkout v2  
- bump toc  
- Add option to play error sound over the 'Master' audio channel, closes #44  
- Clamp the error window to the screen  
- Fix click handling for the error window title (#51)  
    Closes #26  
- Add option to enable alt-click wipe (#50)  
    Closes #46  
- bump toc  
- Update workflow  
- Bump toc  
- Set up multi-build environment  
- Remove the alt-click to wipe errors functionality from the minimap button and update the button tooltip accordingly.  
    For reasons unknown, some people habitually click this right after an error occurs to the point they are "automatically" doing it even when they actually need the error to provide to an author.  
- Import locale from curseforge  
- bump toc  
- bump toc  
- Update workflow  
- bump toc  
- Add github directory  
- Replace the search backdrop with a texture (#31)  
- bump toc  
- fix curse link  
- Simplify messages with no stack or locals.  
- Register the error callbacks earlier.  
- Update CallbackHandler embed.  
- Update pkgmeta  
- bump toc  
- update travis file  
- Force display refresh, closes #3 (#4)  
- Merge pull request #2 from Resike/master  
    Several bug fixes, closes #1  
- GUI fix  
- remove compat code  
- bump toc  
- Temporarily remove a wowi specific packager entry.  
- cleanups  
- Update PlaySound usage for 7.3  
- update metadata  
- update metadata  
- update metadata  
- bump toc  
- Fix button layers  
- Use texture IDs instead of texture paths.  
- bump version  
- bump toc  
- fix embeds  
- cleanups  
- open the sack with /bugsack show  
- Revert, apparently there are people that use bug sending, who would have thought. Will simplify it later.  
- Remove bug sending functionality.  
- bump version  
- Sack window is no longer a UIPanel. Horrible idea. It forces all other UIPanels (even the main menu!!) to close when it pops, so if something is erroring nonstop, you can't even get to bugsack's settings to make the window stop popping up!  
    We now simply use regular :Show() / :Hide() calls.  
- bump toc  
- Newer libVorbis, saves 0.7KB!  
- Revert addition of svn:externals, sorry but no thanks.  
    Revert addition of X-Curse-Project-ID, this is automatically added by the Curse packager so it would end up in the file twice, and is otherwise useless.  
    I've left X-WoWI-ID as it may serve some form of purpose? (I doubt it)  
- - Fixed error when clearing a search  
    - Add project ID to TOC  
    - Add svn:externals for developer convenience  
- Attempt to compensate for the beginning of errors sometimes being trimmed with ... when removing "Interface" and "AddOns" from the display.  
- Remove "Interface\AddOns" from the locals stack.  
- tweak coloring and remove "Interface\" from showing.  
- Slightly higher quality ogg file, tweaks.  
- Remove AceLocale.  
- Re-arrange config and cleanup dropdowns to prevent taint. Fix right-click the minimap icon to open config. Add itIT localization.  
- bump toc  
- bump toc  
- bump toc  
- Update toc for 5.0  
- Fix the UIPanelButtonTemplate2 MoP issue in config.lua.  
- Changed UIPanelButtonTemplate2 to UIPanelButtonTemplate under MoP builds  
- Add ptBR from the wowace localization system.  
- Bump TOC.  
- Show the Mute option even if LSM is present because sometimes it's easier to click a checkbox than to find the 'None' sound in the dropdown.  
- TOC bump...not for the whiners, but so that the embeds vers packages the latest AceSerializer-3.0 that's fixed (from October) for WoW 4.3.  
- Fix .pkgmeta tags.  
- toc bump  
- TOC bump for the whiners.  
- Fix bug 22/21.  
- First stab at a filter/typeaheadfind type interface a la Bagnon. Doesn't quite work; window will jump around sometimes and prev/next buttons fail in search results, etc. I am AFK next 5 days so fixes welcome.  
- Plug an error happening when you mouseover the bugsack LDB widget  
- Fix the LDB tooltip.  
- At least works with the latest BugGrabber, but it's not nearly done. Still need options for syntax coloring and the chat link bug sending stuff, etc.  
- Clean up some of the color highlighting and concat the new .locals error object property onto the sack contents if available.  
- Don't heed the autoshow option if the player is in combat. Noone wants that.  
- Make sure that the current error object is always set, even if the sack is open while a new error occurs and we can't find the currently viewed error in the new sack content.  
- Fix error when autoshow is off.  
- Bugfix.  
- * Mostly code restructuring  
    * Clean up the options slightly  
    * Note that the tabs on the sack don't function 100% at the moment  
- fix framexml.errors  
- Don't use the locale before it's defined, doh.  
- Convert to using the localization system.  
- HideUIPanel instead of :Hide(), yay.  
- * Make some more strings localizable  
    * Set preferredIndex on our StaticPopupDialog  
- Revert this stuff for now I need to redo the whole sack updating.  
- Decrement the currently shown error index when a new error occurs if the sack is open so that we properly stay put on the current error.  
- Don't change the current error if the sack is open while we catch a new one.  
- Fix font size dropdown.  
- Use the flashy new blizzard tab styles.  
- Toc bump.  
- Convert to ogg for 4.0.  
- ## X-Compatible-With: 40000  
- Add font size option.  
- Fix error for people without LSM3.  
- Make sure we register our Fatality sound when LSM is eventually available.  
- Re-try LSM3 in :OnError because a 3rd party addon with embedded libs might have it laying around, which confuses our interface option screen.  
- zhTW Update  
- Reorganize the options a bit, not happy with the way we present sliders, dropdowns or checkbox+button pairs at this point, need to figure out something sensible.  
- - Shift-click on previous/next buttons to jump to first/last bug  
- Updating frFR locale.  
- Fix the minimap option.  
- Reset sack session on login.  
- Make the tabs work, they're still a bit funky.  
- Oops, accidental global.  
- deDE update.  
- Get rid of the hidden option button, don't need it any more with these tabs.  
- Add some tabs to the bottom of the sack for selecting All/Current/Last session bugs, not hooked up to anything yet since I'm not sure I'm happy with them. Feedback welcome.  
- Make /bugsack open the interface options.  
- Remove AceDB and add back the option to disable the minimap icon.  
- Make sure there's a mute option available if LSM isn't.  
- Bugfix.  
- Bump up the text size a bit.  
- Hide the flyout button until we actually have something to open with it.  
- Spice up the sack a bit.  
- Don't ReqDep on BugGrabber any more but simply print a huge warning when you log in if it can't be found. Users don't look at the addon window at the character selection screen anyway, so the dependency listing there is useless.  
- deDE update.  
- BugSack:  
    - zhCN/zhTW update.  
- BugSack:  
    - zhCN update.  
- More unused code nuked.  
- Remove some unused code.  
- Make AceComm/Serializer optional and remove AceAddon.  
- Delay frame creation until needed.  
- Added frFR locale from Balreign. Thanks\!  
- Make the sack a UI panel so that we can easily close it with the Esc key. Not sure if this is a good idea or not, we'll see.  
- Remove a unused locale entry.  
- * Make sure the LDB only displays session bugs.  
    * Update the english locale file, translations are welcome now.  
    * Don't stop the BugGrabber chat messages when bug grabbing is throttled, since the LDB no longer displays information about this.  
- Right-clicking the LDB opens options and clicking it hides the sack if it's already open.  
- Starting to look decent.  
- Expose the widget descriptions with tooltips.  
- Get rid of dewdrop - the new options look like crap at the moment, but they should work.  
- Started option panel work, not even half-finished, but time for work.  
- Add a 'Send errors' button to the sack and remove it from the dropdown.  
- Fix time display.  
- New look for the sack.  
- Add in some xxx comments so I don't forget things later.  
- -- ruRU update (fix typos,rectification translation)  
- - zhTW update  
- Add a heading stating the current errors session ID and which number the error is in the set.  
- There's just one action to open the sack now, I\'ll let the user navigate the sessions from the sack instead.  
- Received errors no longer exists, they are put into your current session with a .source set to the senders player name.  
- Some more minor cleanups.  
- Add in a note about a new frame design and some ascii art.  
- koKR Update  
- Fix the LDB.  
- Get rid of the old school XML UI. Hopefully I can clean up this mess soon.  
- Now scrolls to top of errors instead of to bottom.  
- Remove 4000 char limit to accommodate locals.  
    Colourise locals output in style of Ace2 print output.  
- Overdue for a TOC bump.  
- TOC bump.  
-   
-   
-   
- Fix .pkgmeta, toc, and svn properties  
- Add AceAddon-3.0.  
- BugSack:   
    - zhCN update.  
- Add LibDBIcon-1.0 support.  
- Update Interface Version to 30000 (per Rabbits request)  
- BugSack: Fix small glitch in the .toc  
- We don't need LS+CBH since \!BugGrabber hard embeds them.  
- Fix embeds.xml  
- Add locales again.  
- Initial conversion to Ace3/LDB. A few things not implemented.  
- BugSack: Update .pkgmeta and remove svn:externals.  
- Hopefully fix .pkgmeta  
- Facilitate WowAce-on-CurseForge transition  
- Importing old repo data under /trunk  
- BugSack: Remove Tablet.  
- BugSack: update to LSM3  
- BugSack:  
     * Updated to work with the latest !BugGrabber.  
     * A lot less table creations and some tuneups all around.  
- BugSack: If the frame is open, clicking the fubar plugin will hide it.  
- BugSack: updated zhTW localization  
- BugSack: Removed bindings.xml  
- BugSack: minor deDE fixes  
- BugSack: Nuked the keybindings, they have been nonfunctional for a long time anyway.  
- BugSack: Use LibSharedMedia-2.0 instead of SharedMedia-1.0.  
- .trunk: Bump toc for various addons and libraries working on the PTR  
- BugSack: Just package AceComm-2.0 with BugSack. I guess strings should be changed to not mention it, but I'm too lazy to do it now.  
- BugSack: Attempt to use RockComm-1.0 instead of AceComm-2.0 if available.  
- .trunk: various toc updates of ptr working addons  
- BugSack: updated zhTW localization  
- BugSack: update zhCN local .thanks biggate@CWDG  
- BugSack:   
    - updated zhTW localization  
- BugSack: use embeds.xml  
- BugSack: Bugfix.  
- BugSack: update zhCN local file  
- BugSack: updated zhTE localization  
- .Bump to 20100.  
- BugSack: Add Note-zhTW  
- BugSack :  
     - Updated localization koKR  
- BugSack: Be more descriptive when we receive an invalid bug stream.  
- BugSack: Possible bugfix.  
- BugSack:  
    - updated zhTW locale  
- BugSack: esES updated  
- BugSack: deDE Update  
- BugSack: Work through some AceConsole oddities.  
- BugSack: Use SharedMedia-1.0 for the sound if available.  
- BugSack: Nuking a few functions.  
- BugSack:  
    - Updated zhTW locale  
- BugSack : Added keyword in koKR  
- BugSack : Updated localization koKR  
- BugSack: deDE Update  
- BugSack: Add some local output when we send errors to another player, and disable some menu options when they're not available.  
- BugSack: deDE Update  
- BugSack: Forgot to uncomment this at the last commit.  
- BugSack:  
     * Slightly better version coloring, although it will color the \.  
     * Type-check AceComm input.  
- BugSack:  
     * You can now send your current session database to another BugSack user, for inspection (not all player know what to do with these errors or how to fix them).  
     * Scoped a lot of variables and cleaned out functions only used in the option table from BugSack and made them local.  
     * Slight menu restructure, options are now grouped in some arbitrary fashion. FuBar options put into their own "Menu" submenu.  
     * Clicking Escape when the BugSack is open will no longer close it, instead, it will clear the focus from the edit box, so that having the BugSack open while talking to people is actually possible.  
     * Translators please update your languages.  
- .Line ending fixups: trunk/  
- BugSack:  
     * Add an option to toggle the BugGrabber throttling, defaults to on.  
     * Display the bugs in the tooltip even if we're paused.  
     * Add Double-Click to resume.  
- BugSack: When BugGrabber is paused, display a countdown on the fubar and a nice tooltip hint, also suppress the default BugGrabber output.  
- BugSack: Make sure the addon action events are unregistered if we have the filter on.  
- BugSack:  
    - Rabbit has been keeping this up, I am MIA  
- BugSack: 20003.  
- BugSack: FuBar icon turns red when you have an error, thanks Sariash for the icon!  
- BugSack: Always set the fubar text, even if we have 0 errors, so that people can safely hide the icon if they want.  
- BugSack: Relicensed as GPL v2 or later.  
- BugSack:  
    - updated esES  
- BugSack: Updated koKR Translation  
- BugSack: Updated deDE Translation  
- BugSack:- fixed misspelled deDE locale  
- BugSack: Drycoded attempt to unregister the addon action events when they're not needed.  
- BugSack: Fix the plugin hint.  
- BugSack: fixed koKR syntax error  
- BugSack - update koKR locals  
- BugSack:  
    - Updated deDE Translation  
    - Changed deDE Format to UTF-8  
- BugSack: Added "Alt + Click" option to the FuBar plugin to reset errors... approved by Fritti  
- BugSack - update koKR  
- BugSack: Added Shifr-Click/ReloadUI to the Fu  
- BugSack: Make sure to declare any variables we use.  
- BugSack: Color version/revision numbers and ().  
- BugSack: Color the tablet hint.  
- BugSack: Turn the addon mistake filter off by default.  
- BugSack: Support more than 100 errors.  
- BugSack: Bump version.  
- BugSack: Spanish translation, thanks shiftos.  
- BugSack - now supports !BugGrabber's tablized messages.  
- BugSack - made BugSack now show up to 99999 letters instead of 4096  
- BugSack: ZIP script, plx.  
- BugSack: Don't list events in the tablet if the filter is active.  
- BugSack:  
     * Fix error printing to chat.  
     * Fix libs.  
- BugSack: 2.0 updates.  
- BugSack: Preliminary support for the type field. Not complete.  
- BugSack - update koKR  
- BugSack - fixed pipe char in error messages  
- BugSack: Stop spamming "An error has been recorded" and throttle it by 2 seconds with a count of errors recorded in that timespan instead.  
- BugSack: Reset the dupe counter when clearing the database.  
- BugSack: Move the load error database clearing back to OnInitialize and don't update the tablet display if we're not done with OnEnable yet.  
- BugSack: Register events in OnEnable.  
- BugSack: Add X-License tag.  
- BugSack: Added X-RelSite-WoWI and X-AceForum tags.  
- BugSack: Errors should no longer be truncated when stuff doesn't match our syntax coloring regexps.  
- BugSack: bump version to 2.1.0 to get rid of $Rev$  
- BugSack: - add ckknight to the credits for porting BugSack to TBC  
- BugSack:  
    - license updates: wordwrap to 80 characters, remove Rowne's email address,  
      clarify my own contributions  
    - update Author & X-Credits in the TOC  
- BugSack: Set svn:eol-style, svn:keywords and update license to point to #wowace.  
- BugSack: Since FBP-2.0 for some reason calls :UpdateDisplay before OnEnable, we have to initialize stuff early ... ><  
- BugSack: Bugfix.  
- BugSack: FuBar text shows "<uniqueErrors>/<totalErrors>".  
- BugSack: Attempt to fix the quoting bug.  
- BugSack: Color the entire bug when shown in the sack. Also adds string coloring.  
- BugSack: Updated to the latest BugGrabber changes.  
- BugSack: TOC updates.  
- BugSack: For now, stop those "last message repeated" messages from showing in the tablet at all. I'll probably work on moving that stuff to just using a counter field on the first error instead of actually adding a new error to the sack tomorrow.  
- BugSack:  
     * Random cleanups  
     * Tablet is clickable again  
     * Some parts of tablet bugs are now colored, I'd like to color everything some day  
     * Lines in the tablet wrap, since making them clickable again prevented truncating the errors, and hence the tablet became unbelievably wide.  
     * Max. 5 errors are shown in the tablet.  
- BugSack - Add koKR  
- BugSack: AceLocale-2.2.  
- BugSack: AL-2.2-ready.  
- BugSack - upgraded for lua 5.1  
- Sigh.. more reversions.  
    ~lart svk for not merging when told to  
- Continuing the adjustment to use svn:eol-style of native on files to avoid line ending issues.  
- Changed externals to the new path.  
- Externals: Yay the Beeeees  
- BugSack - Translated new Options to deDE  
- BugSack:  
    - Add a toggle whether to print messages to the chat frame, and default it to off. The sound & FuBar plugin count should be enough.  
    - Update to the new AceLocale-2.0 L["foo"] translation style.  
    - Translations for deDE and zhCN will need to be updated for the new menu option, it'll default to english for now.  
- BugSack:  
    - Updated .toc for 1.12 and to get on svn files page.  
- BugSack:  
    - Please don't overwrite Button text w/o doing a check to make sure you're in the proper locale.  
    - Hopefully I've not damaged the Chinese character codes with this fix.  
- Added German Translation  
- BugSack: - add zhCN translation by Thomas Mo  
- BugSack:  
    - fix load time error with BugSackFu  
    - properly make the options table separate for the chat command and the FuBar plugin  
    - always indicate what errors we're viewing  
    - update translateable strings  
    - make FuBar plugin able to run without FuBar  
    - fix scaling and order of buttons in the sack frame  
- BugSack: - make the FuBar plugin tooltip detachable, and make the errors in it clickable.  
- BugSack: - Catch up with !BugGrabber FormatError removal  
    - Register our bug grabber event in OnInitialize to cut down on the time load errors will be stored  
    - Make the frame a bit bigger to fit the backtraces in the editbox  
    - Show only one bug at a time in the frame, and add prev/next/first/last buttons to go through the errors  
    - Make sure we list the earliest recorded error first  
    - Fix BugSackFu not to bug out if FuBar failed to load  
    - Switch BugSackFu to display the current session errors on click instead of the current error  
-  r7854@tangaloor (orig r7282):  elkano | 2006-08-08 11:18:17 +0200  
     FuBar\_FactionsFu - initial import  
     r7855@tangaloor (orig r7283):  moonsorrow | 2006-08-08 11:18:30 +0200  
     XRS:  
     - fix for ghosts !  
     r7856@tangaloor (orig r7284):  elkano | 2006-08-08 11:19:45 +0200  
     FuBar\_FactionsFu - set externals  
     r7857@tangaloor (orig r7285):  moonsorrow | 2006-08-08 11:21:58 +0200  
     XRS:  
     - fix for frame height when rejoining a raid  
     r7858@tangaloor (orig r7286):  neronix | 2006-08-08 11:23:48 +0200  
     MobHealth3 - Syncing docs to wiki  
     r7859@tangaloor (orig r7287):  ckknight | 2006-08-08 11:45:06 +0200  
     FBP-2.0 - added :OnReceiveDrag()  
     r7860@tangaloor (orig r7288):  ckknight | 2006-08-08 11:51:43 +0200  
     FuBar - removed some dead methods  
     r7861@tangaloor (orig r7289):  ammo | 2006-08-08 11:54:05 +0200  
     CandyBar:  
     * Should nolonger complain about bad gradients.  
     r7862@tangaloor (orig r7290):  neronix | 2006-08-08 11:55:08 +0200  
     MobHealth3 - Tweaked description of the precision option  
     r7863@tangaloor (orig r7291):  neronix | 2006-08-08 11:59:18 +0200  
     MobHealth3 - Tweaked description of the precision option, again  
     r7864@tangaloor (orig r7292):  neronix | 2006-08-08 12:49:45 +0200  
     MobHealth3 - Added readme  
     r7865@tangaloor (orig r7293):  ckknight | 2006-08-08 12:50:07 +0200  
     FBP-2.0 - initial :Show() now checks for proper FuBar version. if < 2.0, then it shows on the minimap.  
     r7866@tangaloor (orig r7294):  neronix | 2006-08-08 12:51:07 +0200  
     MobHealth3 - I forgot to svn add the readme...  
     r7867@tangaloor (orig r7295):  ckknight | 2006-08-08 12:56:18 +0200  
     BigWigs - fixed menu. probably.  
     r7868@tangaloor (orig r7296):  neronix | 2006-08-08 13:03:51 +0200  
     MobHealth3 - Updated readme  
     r7869@tangaloor (orig r7297):  ammo | 2006-08-08 13:03:54 +0200  
     EyeCandy: update with some gradient test stuff  
     r7870@tangaloor (orig r7298):  neronix | 2006-08-08 13:16:25 +0200  
     MobHealth3 - Readme tweak  
     r7871@tangaloor (orig r7299):  ckknight | 2006-08-08 13:18:43 +0200  
     FBP-2.0 - tweaked :GetAceOptionsDataTable()  
     r7872@tangaloor (orig r7300):  ckknight | 2006-08-08 13:19:21 +0200  
     BigWigs - added a horrid hack to the options to steal FuBarPlugin-2.0 settings.  
     r7873@tangaloor (orig r7301):  ammo | 2006-08-08 13:26:26 +0200  
     Bartender2:  
     * Since mikma is too lazy to make console options :)  
     * Here's a start with /bar or /Bartender2.lua  
     * Only toggle now avilable is /bar lock to unlock/lock the bars.  
     r7874@tangaloor (orig r7302):  neronix | 2006-08-08 13:28:24 +0200  
     MobHealth3 - Fixed TOC and docs  
     r7875@tangaloor (orig r7303):  rabbit | 2006-08-08 13:31:47 +0200  
     BigWigs: Razuvious: Adding another buff event to try and catch shield wall.  
     r7876@tangaloor (orig r7304):  ammo | 2006-08-08 14:11:16 +0200  
     Bartender:  
     * Border toggling added to console  
     r7877@tangaloor (orig r7305):  neronix | 2006-08-08 14:12:11 +0200  
     MobHealth3 - Yet another readme tweak  
     r7878@tangaloor (orig r7306):  phyber | 2006-08-08 14:14:11 +0200  
     XPBarNone:  
     - Changed to SavedVariables instead of SavedVariablesPerCharacter so that Ace2 profiles will work.  
     r7879@tangaloor (orig r7307):  id | 2006-08-08 14:25:06 +0200  
     idChatPlayernames: Integrated Teknicolor into idChatPlayernames. Thanks Tekkub!  
     r7880@tangaloor (orig r7308):  id | 2006-08-08 14:27:38 +0200  
     idChatPlayernames: Removed a silly print statement  
     r7881@tangaloor (orig r7309):  jncl | 2006-08-08 14:53:34 +0200  
     FuBar\_tcgTradeskills: correct mismatch between libraries in .toc and svn:externals definitions  
     r7882@tangaloor (orig r7310):  moonsorrow | 2006-08-08 15:09:35 +0200  
     GotWood:  
     - fixed problem by switching views  
     r7883@tangaloor (orig r7311):  neronix | 2006-08-08 15:28:15 +0200  
     DeuceCommander - Added TabletLib to optionaldeps  
     r7884@tangaloor (orig r7312):  grimwald | 2006-08-08 16:28:59 +0200  
     ImprovedRWF:  
     * does no longer check if a message is spam when supress all is enabled (should be a tiny bit faster now...)  
     r7885@tangaloor (orig r7313):  grimwald | 2006-08-08 16:35:46 +0200  
     BigWigs\_NefCount:  
     * creating tables in OnInitialize(), only resetting the table values in OnEnable()  
     * small performance tweaks for the warning message checks  
     r7886@tangaloor (orig r7314):  iceroth | 2006-08-08 16:49:52 +0200  
     IceHUD: Changed support from MobHealth2 to MobHealth3  
     r7887@tangaloor (orig r7315):  thiana | 2006-08-08 17:20:17 +0200  
     BigWigs: Ossirian - Add 10 second warning also  
     r7888@tangaloor (orig r7316):  elkano | 2006-08-08 17:21:49 +0200  
     FuBar\_FactionsFu - removed copypasta ItemDB dependency  
     r7889@tangaloor (orig r7317):  hk2717 | 2006-08-08 18:20:51 +0200  
     BabbleLib: more zhCN localization to Babble-Boss-2.0, Babble-Race-2.0, Babble-Spell-2.0, Babble-SpellTree-2.0, Babble-Zone-2.0  
     r7890@tangaloor (orig r7318):  id | 2006-08-08 18:27:44 +0200  
     idChatPlayernames: fixed some bad typos, thanks Slayman.  
     r7891@tangaloor (orig r7319):  ammo | 2006-08-08 18:51:44 +0200  
     oRA2: Events renamed to be more consistent  
     r7892@tangaloor (orig r7320):  chinkuwaila | 2006-08-08 18:59:04 +0200  
     BigWigs (Geddon, Lucifron): updated deDE localization again  
     r7893@tangaloor (orig r7321):  thiana | 2006-08-08 19:18:32 +0200  
     FuBarPlugin-2.0: typo in CreatePluginChildFrame() frame -> child  
     r7894@tangaloor (orig r7322):  ag | 2006-08-08 19:39:07 +0200  
     ag\_UnitFrames -  
      * Changed a little default value  
      * Just did this mostly to test the commit feature of the SVN-finder plugin I just compiled  
     r7895@tangaloor (orig r7323):  thiana | 2006-08-08 19:40:24 +0200  
     FuBar\_tcgTradeskills: nil error fixed  
     r7896@tangaloor (orig r7324):  hk2717 | 2006-08-08 20:11:31 +0200  
     BigWigs: More zhCN localization to AQ20, AQ40, BWL and MC modules.  
     r7897@tangaloor (orig r7325):  nightdew | 2006-08-08 21:19:36 +0200  
     SpellStatus:  
     - Fixed issue when dragging a macro and clicking on an empty action slot  
     r7898@tangaloor (orig r7326):  hyperactiveChipmunk | 2006-08-08 21:27:10 +0200  
     AceTab-2.0:  
     - MenuCompletion behavior implemented.  Repeatedly pressing <TAB> cycles through the valid completions.  
     r7899@tangaloor (orig r7327):  saroz | 2006-08-08 21:37:42 +0200  
     sRaidFrames: Added /srf layout (ctra|horizontal|vertical), which allows easy setup of these predefined layouts  
     r7900@tangaloor (orig r7328):  phyber | 2006-08-08 22:44:46 +0200  
     Teknicolor:  
     - Added function to refresh guild roster when guild member comes online, no more toggling the Guild Roster to make the colours update.  
     - I'll fix the externals later.  
     r7901@tangaloor (orig r7329):  ckknight | 2006-08-08 22:48:48 +0200  
     ChatThrottleLib - fixed bug that made addon messages spam to standard chat.  
     r7902@tangaloor (orig r7330):  phyber | 2006-08-08 22:50:00 +0200  
     Teknicolor:  
     - Meh, someone joined the guild just as I was commiting.  Guild roster now refreshes when people join your guild.  
     r7903@tangaloor (orig r7331):  ckknight | 2006-08-08 22:53:09 +0200  
     AceComm - updated ChatThrottleLib to version 8  
     r7904@tangaloor (orig r7332):  id | 2006-08-08 23:04:24 +0200  
     idChatPlayernames: Less lazy externals..  
     r7905@tangaloor (orig r7333):  id | 2006-08-08 23:06:12 +0200  
     idChatPlayernames: Updated toc  
     r7906@tangaloor (orig r7334):  tain | 2006-08-08 23:08:49 +0200  
     VisorButtons - Buttons are now created dynamically in Lua from an XML template.  VisorActionButtons that are saved in the VisorDB will be created automatically on login.  
     New buttons can be created with the command: /vz button xxx - where xx is button ID.  i.e. /vz button 100 will create VisorActionButton100.  
     Cleaned up keybindings hide/show code.  Should no longer show different font types on different buttons with font addons.  
     r7907@tangaloor (orig r7335):  id | 2006-08-08 23:11:39 +0200  
     idChatPlayernames: And now the real updated toc  
     r7908@tangaloor (orig r7336):  rabbit | 2006-08-08 23:31:34 +0200  
     BigWigs: Thaddius: Added warning that Thaddius is incoming soon.  
     r7909@tangaloor (orig r7337):  ag | 2006-08-08 23:48:02 +0200  
     ag\_UnitFrames -   
      * small fixes, mobhealth API change  
      * health above 9999 will get the format 10.4k/39.5k  
     r7910@tangaloor (orig r7338):  tain | 2006-08-08 23:56:00 +0200  
     VisorButtons - Changed keybind hide/show to use Blizzard functions natively.  
     Fixed bug with keybinds disappearing after swapping buttons.  
     r7911@tangaloor (orig r7339):  rabbit | 2006-08-09 00:44:51 +0200  
     BigWigs: Faerlina: ((nil + 30) > GetTime()) doesn't really work, I think - fixed.  
     r7912@tangaloor (orig r7340):  mikk | 2006-08-09 00:46:50 +0200  
     ChatThrottleLib:  
     * Use string.format() for string concatenation  
     * Up to version 9 - pushing to wowi.  
     r7913@tangaloor (orig r7341):  rabbit | 2006-08-09 00:58:42 +0200  
     BigWigs: Razuvious: Attempt to fix shout timer after the first shout.  
     r7914@tangaloor (orig r7342):  neronix | 2006-08-09 01:03:08 +0200  
     MobHealth3 - Fixed MobHealth\_PPP() compat. DUF should now work *shudder*  
     r7915@tangaloor (orig r7343):  rabbit | 2006-08-09 01:04:37 +0200  
     idChatPlayerNames: Add Ace2 as OptionalDeps.  
     r7916@tangaloor (orig r7344):  rabbit | 2006-08-09 01:07:36 +0200  
     GMail: Add Ace2 as OptionalDeps.  
     r7917@tangaloor (orig r7345):  rabbit | 2006-08-09 01:09:31 +0200  
     ImprovedRWF: Add missing OptionalDeps.  
     r7918@tangaloor (orig r7346):  rabbit | 2006-08-09 01:10:45 +0200  
     ag\_UnitFrames: Add DewdropLib to OptionalDeps.  
     r7919@tangaloor (orig r7347):  neronix | 2006-08-09 01:12:55 +0200  
     MobHealth3 - Updated metadata for 3.0.1 release  
     r7920@tangaloor (orig r7348):  rabbit | 2006-08-09 01:14:43 +0200  
     Soap: Added missing OptionalDeps.  
     r7921@tangaloor (orig r7349):  rabbit | 2006-08-09 01:17:04 +0200  
     Squishy: Add missing OptionalDeps and fix Compost -> CompostLib.  
     r7922@tangaloor (orig r7350):  rabbit | 2006-08-09 01:19:16 +0200  
     XRS: Added missing OptionalDeps.  
     r7923@tangaloor (orig r7351):  rabbit | 2006-08-09 01:21:01 +0200  
     AuldLangSyne: Add OptionalDeps.  
     r7924@tangaloor (orig r7352):  rabbit | 2006-08-09 01:22:16 +0200  
     FreeRefills: Add OptionalDeps.  
     r7925@tangaloor (orig r7353):  tekkub | 2006-08-09 01:54:36 +0200  
     BigWigs - Tweaked sync-enabling, again, expect big painful errors as I can't test shit (why can't you people speak common?)  
     r7926@tangaloor (orig r7354):  tekkub | 2006-08-09 01:58:34 +0200  
     SpecialEventsEmbed (Aura-2.0) - Now uses internal compost heap  
     r7927@tangaloor (orig r7355):  rabbit | 2006-08-09 02:16:14 +0200  
     BigWigs: Guardians and Defenders: Don't announce when they die, and don't play the trumpet fanfare. They're just trash mobs after all.  
     r7928@tangaloor (orig r7356):  tekkub | 2006-08-09 02:24:10 +0200  
     SpecialEventsEmbed (Aura-2.0) - Fixed comment block's metadata  
     r7929@tangaloor (orig r7357):  tekkub | 2006-08-09 02:46:27 +0200  
     SpecialEventsEmbed (Aura-2.0)  
     - Added BuffIter and DebuffIter  
     r7930@tangaloor (orig r7358):  rabbit | 2006-08-09 03:02:53 +0200  
     BugSack: Add missing OptionalDeps.  
     r7931@tangaloor (orig r7359):  rabbit | 2006-08-09 03:03:44 +0200  
     Clique: Add OptionalDeps for Ace2 and DewdropLib.  
     r7932@tangaloor (orig r7360):  ag | 2006-08-09 03:06:44 +0200  
     ag\_UnitFramesag\_UnitFrames -   
      * Fixed combat event text... It didn't really work before  
     r7933@tangaloor (orig r7361):  maia | 2006-08-09 03:11:25 +0200  
     Squishy: - major GC optimization  
     - fixed classmodifiers  
     r7934@tangaloor (orig r7362):  eternally777 | 2006-08-09 03:12:40 +0200  
     HealHub:  Initial version; definitely not complete, but should operate relatively bug-free.  
     r7935@tangaloor (orig r7363):  eternally777 | 2006-08-09 03:19:19 +0200  
     Removed file/folder (Screwed up my first upload -.-)  
     r7936@tangaloor (orig r7364):  maia | 2006-08-09 03:19:28 +0200  
     Squishy: forgot to remove some unnecessary code.  
     r7937@tangaloor (orig r7365):  eternally777 | 2006-08-09 03:19:47 +0200  
     Removed file/folder (Screwed up my first upload here too)  
     r7938@tangaloor (orig r7366):  eternally777 | 2006-08-09 03:20:01 +0200  
     Removed file/folder (Screwed up my first upload here too)  
     r7939@tangaloor (orig r7367):  tekkub | 2006-08-09 03:22:20 +0200  
     SpecialEventsEmbed (Aura-2.0) - Not bug, is feature! FEATURE!!!  
     r7940@tangaloor (orig r7368):  eternally777 | 2006-08-09 03:22:38 +0200  
     HealHub: First version, still extremely incomplete yet relatively bug-free.  
     r7941@tangaloor (orig r7369):  eternally777 | 2006-08-09 03:47:02 +0200  
     HealHub:  Added svn:externals and svn:keywords.  
     r7942@tangaloor (orig r7370):  tekkub | 2006-08-09 04:41:09 +0200  
     SpecialEventsEmbed - Added Mount-2.0  
     r7943@tangaloor (orig r7371):  eternally777 | 2006-08-09 05:16:18 +0200  
     HealHub:  Fixed a 'nil' reference on line 266. (I hope)  
     r7944@tangaloor (orig r7372):  eternally777 | 2006-08-09 05:36:22 +0200  
     Branching HealHub to prepare for Loatheb-specific code.  
     r7945@tangaloor (orig r7373):  eternally777 | 2006-08-09 05:37:49 +0200  
     HealHub: Branched to wrong directory.  
     r7946@tangaloor (orig r7374):  tekkub | 2006-08-09 05:45:10 +0200  
     SpecialEventsEmbed (Mount-2.0) - Typos, fun  
     r7947@tangaloor (orig r7375):  tain | 2006-08-09 06:03:52 +0200  
     VisorButtons - Added code to ensure keybindings appear properly on first load.  
     r7948@tangaloor (orig r7376):  tain | 2006-08-09 06:35:13 +0200  
     VisorButtons - Reduced the use of many multiple getglobals in the button swapping functions.  
     r7949@tangaloor (orig r7377):  tekkub | 2006-08-09 06:37:24 +0200  
     MountMe - Partial Ace2 conversion.  Should work in it's current state, but some externals might be missing.  No guarentee that anything will work at all...  
     r7950@tangaloor (orig r7378):  tekkub | 2006-08-09 07:03:09 +0200  
     MountMe - Typo in core  
     r7951@tangaloor (orig r7379):  eternally777 | 2006-08-09 07:16:08 +0200  
     HealHub: Several small updates to prepare for future features including, but not limited to, adding the AceComm-2.0 library.  
     r7952@tangaloor (orig r7380):  tekkub | 2006-08-09 07:32:29 +0200  
     MountMe - Another typo  
     r7953@tangaloor (orig r7381):  tekkub | 2006-08-09 07:40:52 +0200  
     MountMe - Typo again  
     r7954@tangaloor (orig r7382):  kemayo | 2006-08-09 07:47:41 +0200  
     FuBar\_ToFu: Quick fix to disconnect when pasting to chatbox.  
     r7955@tangaloor (orig r7383):  sole | 2006-08-09 08:05:56 +0200  
     Soap:   
     * Fixed locale error   
     r7956@tangaloor (orig r7384):  tekkub | 2006-08-09 08:06:42 +0200  
     MountMe - Blah blah blah SCREW YOU ALL!  
- BugSack: Add missing OptionalDeps.  
- BugSack: - add options to configure save errors / limit on nr of errors  
    - catchup with BugGrabber db change  
    - fix .toc category  
    - minor load error tweak  
- BugSack: - remove older saved vars from existing profiles  
- BugSack: - update icon to the one dsDranor provided -- thanks!  
- BugSack:  
    - Show correct nr of errors in FuBar plugin  
    - Fix order of dewdrop menu  
    - Fix lag when showing too many errors to fit in the frame by not showing more text than possible; the frame really needs a rewrite :-/  
    - Fix clicking on FuBar plugin to really show current error  
- BugSack: - rewrite to use !BugGrabber as the grabbing addon; now this is only a shell around showing an error frame  
- BugSack: - Fix for SV backwards compatibility  
- BugSack: - Catch up with BugGrabber rename  
- BugGrabber, BugSack: - "Merge" in my branch (not really a merge, I didn't copy them over to start with *shame*)  
- BugSack:   
     - Updated toc  
     - added printing error messages to the chat frame  
- BugSack: Import of Rowne's latest version, R4F8, 12/27/05  
