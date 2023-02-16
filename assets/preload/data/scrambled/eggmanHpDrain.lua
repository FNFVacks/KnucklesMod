local hpDrainCap = 0.39;  --At which point will the hp drain stop happening? Health value is anywhere between 0 and 2, 0 being what triggers blueball screen. i chose 0.39 since anything below 0.4 triggers the player losing icon. this mod doesnt have it, but still.
local hpDrain = 0.015;    --How much hp will eggman drain per-note? Player gains 0.02 per "sick" note hit.

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if dadName == "eggman" or dadName == "eggman2" then    --might not be the best to check this every single time the opponent hits a note but eh. doesnt really matter
    if getProperty("health") > hpDrainCap and hpDrainCap >= 0 then
    setProperty('health', getProperty("health") - hpDrain)
end
end
end
