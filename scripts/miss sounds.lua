function noteMiss(id, direction, noteType, isSustainNote)
        if noteType == ''
	then playSound('bass-boosted', 0.5) --('sound name', volume)
        end
end

--EXTRA INSTRUCTIONS:
--You can place this script in two places:
--Psych Engine's "script" folder, which is located  in mods\scripts. THIS WILL APPLY TO ALL SONGS!
--A song's data folder which is located in either assets\data\'songname' for the vanilla songs, or mods\data\'songname' for custom songs. This will only apply the script to that one song.
--MAKE SURE THE CUSTOM SOUND IS IN mods\sounds!!