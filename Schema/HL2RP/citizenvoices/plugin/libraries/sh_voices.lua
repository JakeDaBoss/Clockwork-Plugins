--[[
This plugin was requested by Savvyge. Credit for this framework belongs to Lion for the creation, and Cloud Sixteen for the inherent code it relies on.

Use is public, but these credits must not be removed at any date or time.
--]]

table.insert(Clockwork.voices.chatClasses, "request");
table.insert(Clockwork.voices.chatClasses, "radio");

Clockwork.voices:RegisterGroup("Citizen", false, function(player)
	local faction = player:GetFaction();
	
	return faction == FACTION_CITIZEN;
end);

Clockwork.voices:Add("Citizen", "triggerword", "Textual output in chatbox.", "Sound file");

--[[ INSTRUCTIONS --]]
--[[
Simply copy line 14 in this file for as many voice lines as you want to add. Provided you didn't change the Citizen faction, it should work.

First string is the name under which it shows up in the directory. You may change this at will. I've set it to Citizen for now. Don't forget Line 9 if you want to edit it.

Second string is the trigger word. Should usually be contained to one or two small words. This acts as the trigger.

Third string is the textual output in chatbox. i.e: Citizen uses the "help" voice command. By setting it to Help!, it will show up as "Help!" in the chatbox.

Fourth string is the sound file If you have legacy spawn menu installed, you can browse sounds and copy their relative location immediately.

Hope this is of help. For support, visit the relevant thread.

NEW UPDATE:
If you want to add GENDER checked things, I have made an example below.

FACTION_ID can be found in your faction file, it looks something like FACTION_CITIZEN at the bottom of the file.

To specify by gender, there are two gender: GENDER_MALE and GENDER_FEMALE

Copy, paste, rinse and repeat if need be. If you require help you may ping me @The Lion#1313 in the Cloud Sixteen Discord.
-----------------------------------------------------------------------
Clockwork.voices:RegisterGroup("Male", false, function(player)
	local faction = player:GetFaction();
	local gender = player:GetGender();
	
	return faction == FACTION_CITIZEN and gender == GENDER_MALE;
end);

Clockwork.voices:Add("Male", "triggerword", "Textual output in chatbox.", "Sound file");
-----------------------------------------------------------------------
--]]