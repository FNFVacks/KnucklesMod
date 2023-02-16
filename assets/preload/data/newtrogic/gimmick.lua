
--[[function onCreatePost()
    for i = 0,3 do 
        setPropertyFromGroup("opponentStrums", i, "alpha", 0)
    end
end

function onSongStart()
    for i = 4,7 do
        noteTweenAlpha("vanish!!!"..i, i, alpha, stepCrochet*0.1)
    end
        
end

function onTweenCompleted(tag)
    for i = 4,7 do
        if tag == "vanish!!!"..i and not didTween then
            debugPrint("case a")
            didTween = true;
        noteTweenAlpha("vanish!!!"..i, i, alpha+alpha, stepCrochet*0.1)
        elseif tag == "vanish!!!"..i and didTween then
            didTween = false;
            debugPrint("case b")
        noteTweenAlpha("vanish!!!"..i, i, alpha, stepCrochet*0.1)
        end
    end
end]]


function onSectionHit()
    if curBeat == 320 then
        triggerEvent("Camera Follow Pos", "990", getProperty("camFollowPos.y")+30)
        
    elseif curBeat ==384 then
        doTweenZoom("camasdf", "camGame", 0.6, stepCrochet*0.01 / playbackRate, "cubeOut")
        setProperty("defaultCamZoom", 0.6)
    
    end
end