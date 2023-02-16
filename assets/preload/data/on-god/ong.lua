
function onCreate()
    if getProperty("skipCountdown") then 
        setProperty("skipCountdown", false)
     end
end

function onCreatePost()
        --setProperty("camOther.angle", 180)
        --doTweenAngle("cam", "camOther", 180, stepCrochet*0.0008, "cubeOut")
        setProperty("camHUD.angle", 180)
        setProperty("gf.visible", false)
        setProperty("camFollowPos.x", 710)
        setProperty("camFollowPos.y", 570)
        --triggerEvent("Camera Follow Pos", getCharacterX("boyfriend")-60, getCharacterY("boyfriend") +470)
end
   
function onSongStart()
   
    local bfScaleY = getProperty("boyfriend.scale.y");
end

function onStepHit()
    if curStep < 139 then
    setProperty("camFollowPos.x", 710)
    setProperty("camFollowPos.y", 570)
    end
    if curStep == 15 then
        doTweenAngle("cama", "camHUD", -360*69, 9 / playbackRate, "sineInOut")
    elseif curStep == 16 then
        cameraFlash("camGame", "000000", 2 / playbackRate)
    elseif curStep == 30 then
        doTweenColor("thig", "dad", "FF0000", stepCrochet*0.003 / playbackRate)
        --debugPrint("did the thing")
    elseif curStep == 32 then
        doTweenColor("jkas", "dad", "FFFFFF", stepCrochet*0.03 / playbackRate)
    elseif curStep == 55 then
        scaleObject("boyfriend", 2, 4)
        doTweenAngle("dsagdfg", "boyfriend", 360*9, 0.9 / playbackRate)
    elseif curStep == 81 then
        doTweenColor("thsfig", "dad", "FF0000", stepCrochet*0.003 / playbackRate)
        --debugPrint("did the thing")
    elseif curStep == 83 then
        doTweenColor("jkasas", "dad", "FFFFFF", stepCrochet*0.03 / playbackRate)
    elseif curStep == 104 then
            cameraFlash("camGame", "000000", 2)
        setProperty("boyfriend.scale.x", 1)
        setProperty("boyfriend.scale.y", 1)
        --scaleObject("boyfriend", 3, 3)
        --runTimer("up", timerTime)
    elseif curStep == 115 then
        doTweenColor("hsdvksb", "dad", "999999", stepCrochet*0.003 / playbackRate)
    elseif curStep == 138 then
        
        doTweenColor("hsdvksb", "dad", "FFFFFF", stepCrochet*0.0003 / playbackRate)
        cancelTween("cama")
        
        setProperty("camHUD.angle", 0)
        triggerEvent("Camera Follow Pos", 710, 570)
    end
end
function onTweenCompleted(tag)
    if tag == "dsagdfg" then
        scaleObject("boyfriend", 4.5, 2)
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
        --[[if tag == "up" then
            setProperty("boyfriend.scale.y", bfScaleY+1)
            doTweenY("aaa", "boyfriend.scale", bfScaleY, timerTime, "circOut")
            runTimer("up", timerTime)
        end]]
end