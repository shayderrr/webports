-- FOR ADVANCED USERS ONLY 
-- change the value on the right to true or false to customize the notes sounds and Animations


local blamSound = true;
local healSound = true;
local posiSound = true;
local statSound = true;
local speedSound = true;

local blamAnim = true; -- this looks for an animation thats called dodge
local directionalBlamAnim = true; -- this looks for an animation called dodge[Direction] (eg dodgeLEFT, dodgeRIGHT, dodgeDOWN, dodgeUP)



function goodNoteHit(id, noteData, noteType, isSustainNote)
-- Sounds
	if blamSound == true then
		if getProperty('isPixelStage') == true then
			if noteType == 'Blammed Note' then
			playSound('pixelSounds\\fireboom');
			end
			if noteType == 'halfBlammed Note' then
			playSound('pixelSounds\\fireboom', 0.5)
			end
		else
			if noteType == 'Solar Note' then
			playSound('fireboom');
			end
			if noteType == 'halfBlammed Note' then
			playSound('fireboom', 0.5)
			end
		end	
	end
	if posiSound == true then
		if getProperty('isPixelStage') then
			if noteType == 'Poison Note' then
			playSound("zap");
			end
			
		else
			if noteType == 'Blammed Note' then
			playSound('fireboom');
			end
			if noteType == 'halfBlammed Note' then
			playSound('fireboom', 0.5)
			end
		end	
	end
	if healSound == true then
		if getProperty('isPixelStage') == true then
			if noteType == 'smaHeal Note' then
			playSound("soda")
			end
			if noteType == 'medHeal Note' then
			playSound("soda", 0.5)
			end
			if noteType == 'halfHeal Note' then
			playSound("soda")
			end
			if noteType == 'fullHeal Note' then
			playSound("soda")
			end
		else 
			if noteType == 'smaHeal Note' then
			playSound('soda')
			end
			if noteType == 'medHeal Note' then
			playSound('soda', 0.5)
			end
			if noteType == 'halfHeal Note' then
			playSound('soda')
			end
			if noteType == 'fullHeal Note' then
			playSound('soda')
			end
		end
	end
	if statSound == true then
		if noteType == 'Fog Note' then
			playSound('fog-note-hit')
		end
	end
	if speedSound == true then
		if noteType == 'speednote' then
			playSound('speedup')
		end
	end
	if blamAnim == true then
		if noteType == 'Blammed Note' then
		characterPlayAnim('bf', 'dodge');
		characterPlayAnim('dad','attack');
			if directionalBlamAnim then
				if noteData == 0 then
				characterPlayAnim('bf', 'dodgeLEFT');
				end
				if noteData == 1 then
				characterPlayAnim('bf', 'dodgeDOWN');
				end
				if noteData == 2 then
				characterPlayAnim('bf', 'dodgeUP');
				end
				if noteData == 3 then
				characterPlayAnim('bf', 'dodgeRIGHT');
				end
			end
		end
		if noteType == 'halfBlammed Note' then
			characterPlayAnim('bf', 'dodge');
			characterPlayAnim('dad','attack');
			if directionalBlamAnim then
				if noteData == 0 then
				characterPlayAnim('bf', 'dodgeLEFT');
				end
				if noteData == 1 then
				characterPlayAnim('bf', 'dodgeDOWN');
				end
				if noteData == 2 then
				characterPlayAnim('bf', 'dodgeUP');
				end
				if noteData == 3 then
				characterPlayAnim('bf', 'dodgeRIGHT');
				end
			end
			
		end
		if noteType == 'Solar Note' then
			characterPlayAnim('bf', 'dodge');
			characterPlayAnim('dad','attack');
			if directionalBlamAnim then
				if noteData == 0 then
				characterPlayAnim('bf', 'dodgeLEFT');
				end
				if noteData == 1 then
				characterPlayAnim('bf', 'dodgeDOWN');
				end
				if noteData == 2 then
				characterPlayAnim('bf', 'dodgeUP');
				end
				if noteData == 3 then
				characterPlayAnim('bf', 'dodgeRIGHT');
				end
			end
			
		end
		if noteType == 'Poison Note' then
			characterPlayAnim('bf', 'dodge');
			characterPlayAnim('dad','attack');
			if directionalBlamAnim then
				if noteData == 0 then
				characterPlayAnim('bf', 'singLEFTmiss');
				end
				if noteData == 1 then
				characterPlayAnim('bf', 'singDOWNmiss');
				end
				if noteData == 2 then
				characterPlayAnim('bf', 'singUPmiss');
				end
				if noteData == 3 then
				characterPlayAnim('bf', 'singRIGHTmiss');
				end
			end
			
		end
		
		
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if statSound == true then
		if noteType == 'Fog Note' then
			playSound('thunder')
		end
	end
	if blamSound == true then
		if noteType == 'Solar Note' then
			playSound('asteroid')
		end
	end
end