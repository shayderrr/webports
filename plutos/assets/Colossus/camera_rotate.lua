local defaultNotePos = {}
local spin = 1.5 -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 750 --How long it will take.
    
    if curStep >= 128 and curStep < 9999999 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    
    if curStep == 128 then
        setProperty("camHUD.angle", 0)
    end
end