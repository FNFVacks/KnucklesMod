local isBotPlay = false -- Prevent players fucking with the botplay thing

function onCreate()
    if botPlay then
        isBotPlay = true
    else
        isBotPlay = false
    end
end

function onBeatHit()
    if curBeat == 148 then
        lastTotalNotesHit = getProperty('totalNotesHit')
        lastTotalPlayed = getProperty('totalPlayed')
        lastCombo = getProperty('combo')
        lastNotesHit = getHits()

        if not isBotPlay then
            setProperty('cpuControlled', true)
        end
    end
end

function onStepHit()
    if curStep == 718 then
        if not isBotPlay then
            setProperty('cpuControlled', false)
            
            setProperty('totalNotesHit', lastTotalNotesHit)
            setProperty('totalPlayed', lastTotalPlayed)
            setProperty('combo', lastCombo)
            setHits(lastNotesHit)
        else
            --setProperty('cpuControlled', true)
            return true;
        end
    end
end