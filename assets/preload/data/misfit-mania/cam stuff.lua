local camOffset = 1.25; --how much should the camera move in that one part
--WARNING: the value scales up so stupidly fast, even 2.5 is already sizeable cam movement

function onBeatHit()
    if curBeat == 320 then

        setProperty("defaultCamZoom", 1)
--[[        doTweenAlpha("asd", "healthBar", 0, stepCrochet*0.004, "cubeOut")       --alpha stuff got denied :( 
        doTweenAlpha("asfd", "iconP1", 0, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("fdsd", "iconP2", 0, stepCrochet*0.004, "cubeOut")
        
        for i = 0,3 do
        noteTweenAlpha("f"..i, i, 0.75, stepCrochet*0.004, "cubeOut")
        end
        for a = 4,7 do
            noteTweenAlpha("adffa"..a, a, 0, stepCrochet*0.004, "cubeOut")
        end
            
    elseif curBeat == 332 then
        
        for a = 4,7 do
            noteTweenAlpha("adffa"..a, a, 1, stepCrochet*0.01, "cubeIn")
        end
    elseif curBeat == 336 then
        
        for i = 0,3 do
            noteTweenAlpha("f"..i, i, 0, stepCrochet*0.004, "cubeOut")
            end
            
        doTweenAlpha("asd", "healthBar", 0.5, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("asfd", "iconP1", 0.75, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("fdsd", "iconP2", 0.75, stepCrochet*0.004, "cubeOut")]]
        elseif curBeat == 352 then
        setProperty("defaultCamZoom", 0.6)
        
        --[[for i = 0,3 do
            noteTweenAlpha("f"..i, i, 1, stepCrochet*0.004, "cubeOut")
            end
            
            
        doTweenAlpha("asd", "healthBar", 1, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("asfd", "iconP1", 1, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("fdsd", "iconP2", 1, stepCrochet*0.004, "cubeOut")]]
    elseif curBeat == 380 then
        setProperty("defaultCamZoom", 0.8)
        
        --[[for i = 0,7 do
            noteTweenAlpha("f"..i, i, 0.75, stepCrochet*0.004, "cubeOut")
            end
            
        doTweenAlpha("asd", "healthBar", 0.75, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("asfd", "iconP1", 0.75, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("fdsd", "iconP2", 0.75, stepCrochet*0.004, "cubeOut")
    ]]elseif curBeat == 384 then
        setProperty("defaultCamZoom", 0.6)
        
        --[[for i = 0,7 do
            noteTweenAlpha("f"..i, i, 1, stepCrochet*0.004, "cubeOut")
            end
            
        doTweenAlpha("asd", "healthBar", 1, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("asfd", "iconP1", 1, stepCrochet*0.004, "cubeOut")
        doTweenAlpha("fdsd", "iconP2", 1, stepCrochet*0.004, "cubeOut")
]]end end



function onUpdate(theTimeInMillisecondsThatHasCurrentyPassedSinceTheSongBegan)
    if curStep > 1281 and curBeat < 352 then
            local animBF = getProperty("boyfriend.animation.curAnim.name")
            local animGF = getProperty("gf.animation.curAnim.name")  --yeah im too lazy to account for double note offsets via goodNoteHit and opponentNoteHit what about it, it lasts like 5 seconds anyway
            local animDad = getProperty("dad.animation.curAnim.name")
        if mustHitSection then
            if animBF == "singLEFT" then
                setProperty("camFollowPos.x", cameraX - camOffset)
            elseif animBF == "singRIGHT" then
                setProperty("camFollowPos.x", cameraX + camOffset)
            elseif animBF == "singUP" then
                setProperty("camFollowPos.y", cameraY - camOffset)
            elseif animBF == "singDOWN" then
                setProperty("camFollowPos.y", cameraY + camOffset)
            end
        elseif gfSection then
            
            if animGF == "singLEFT" then
                setProperty("camFollowPos.x", cameraX - camOffset)
            elseif animGF == "singRIGHT" then
                setProperty("camFollowPos.x", cameraX + camOffset)
            elseif animGF == "singUP" then
                setProperty("camFollowPos.y", cameraY - camOffset)
            elseif animGF == "singDOWN" then
                setProperty("camFollowPos.y", cameraY + camOffset)
            end
        else
            
            if animDad == "singLEFT" then
                setProperty("camFollowPos.x", cameraX - camOffset)
            elseif animDad == "singRIGHT" then
                setProperty("camFollowPos.x", cameraX + camOffset)
            elseif animDad == "singUP" then
                setProperty("camFollowPos.y", cameraY - camOffset)
            elseif animDad == "singDOWN" then
                setProperty("camFollowPos.y", cameraY + camOffset)
            end
        end
    end
end