ease = "cubeIn"
function onCreate()
        setProperty("skipCountdown", true)   
         
end

function onUpdatePost(elapsed)
    setProperty("iconP1.x", 910)
end


function onCreatePost()
    addHaxeLibrary('FlxCamera', 'flixel')

    setCharacterX("boyfriend", getCharacterX("boyfriend")+410)
    setProperty("boyfriend.y", getProperty("boyfriend.y")-14)

    makeLuaSprite('blackFade', '', 0, 0)
    makeGraphic('blackFade', screenWidth, screenHeight, '000000')
    setObjectCamera('blackFade', 'other')
    addLuaSprite('blackFade', true)

    --setProperty("camGame.alpha", 0)
    --setProperty("camHUD.alpha", 0)
 
	noteTweenX('oppo0', 0, -100000, stepCrochet*0.1 / playbackRate, 'quartOut')
	noteTweenX('oppo1', 1, -100000, stepCrochet*0.1 / playbackRate, 'quartOut')
	noteTweenX('oppo2', 2, -100000, stepCrochet/10 / playbackRate, 'quartOut')   --too lazy to change the copy pasted code
	noteTweenX('oppo3', 3, -100000, stepCrochet/10 / playbackRate, 'quartOut')
setProperty("dad.alpha", 0)
setProperty("gf.visible", false)
setProperty("iconP2.alpha", 0)
triggerEvent("Camera Follow Pos", getCharacterX("boyfriend")+100, getCharacterY("boyfriend")+500) --me when too lazy to bruteforce it:
    setHealthBarColors("333333", rgbToHex(getProperty("boyfriend.healthColorArray")))
end
function rgbToHex(rgb) --https://www.codegrepper.com/code-examples/lua/rgb+to+hex+lua
    return string.format("%02x%02x%02x",math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
end


function onEvent(eventName, v1, value2)
    --dont question it, it just works
    if eventName ~= "Camera Follow Pos" and v1 ~= nil then
        noteTweenX('left note', 4, -1415, 2 / playbackRate, 'quartInOut')
        noteTweenX('down note', 5, -1525, 2 / playbackRate, 'quartInOut')
        noteTweenX('up note', 6, -1635, 2 / playbackRate, 'quartInOut')
        noteTweenX('right note', 7, -1745, 2 / playbackRate, 'quartInOut')
        doTweenZoom("sad, i cant setProperty defaultCamZoom for some reason", "camGame", 1, crochet/750 / playbackRate, "quadInOUt")
            triggerEvent("Camera Follow Pos", getCharacterX("boyfriend")+100, getCharacterY("boyfriend")+500) 
for i = 4,7 do
            --if not middlescroll then
        noteTweenAngle('very creative tag'..i, i, -360, 2 / playbackRate, 'quartInOut')
            --end
        end
    end    
    if eventName ~= "Camera Follow Pos" then
        doTweenAlpha("fdsssssssssssssssss", "camHUD", 0, stepCrochet/100 / playbackRate)
    end 
    if eventName == "Set Property" then
        doTweenZoom("check", "camGame", 0.39, stepCrochet/50 / playbackRate, "cubeIn")
        --doTweenAngle("jsg", "camGame", 360, stepCrochet/50, "circInOut")
        doTweenAlpha(tostring(getRandomFloat(-10, 10)), "blackFade", 1, (crochet/1000)*4 / playbackRate, "circIn") --do you like my tag?
        --debugPrint("potato")
    end

    --elseifs wouldnt fucking work
end


function onSongStart()
    runTimer("fadein", (stepCrochet/1000)*8 / playbackRate, 1)
    runTimer("note tween", (crochet/1000)*14 / playbackRate, 1)
    
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "fadein" then

    doTweenAlpha("fsfddsffsd", "blackFade", 0, stepCrochet/19 / playbackRate, ease)
    --doTweenAlpha("fsfddsfgfsd", "camHUD", 1, stepCrochet/19, ease)
    elseif tag == "note tween" then
        runTimer("fuck you cam follow pos", 0.282 / playbackRate, 1)
        if not middlescroll then 
        noteTweenX('left note', 4, 415, 1 / playbackRate, 'quartInOut')
        noteTweenX('down note', 5, 525, 1 / playbackRate, 'quartInOut')
        noteTweenX('up note', 6, 635, 1 / playbackRate, 'quartInOut')
        noteTweenX('right note', 7, 745, 1 / playbackRate, 'quartInOut')
        for i = 4,7 do
            if not middlescroll then
        noteTweenAngle('very creative tag'..i, i, 360, 1 / playbackRate, 'quartInOut') --why... do i need another if statement? excuse me? hellooooooo? funkin lua?????????
            end
        end
        end
    elseif tag == "fuck you cam follow pos" then

        triggerEvent("Camera Follow Pos", cameraX - 700, cameraY)
    end
    
end