anglevar = 1.5;
function onBeatHit()
    if curBeat == 168 then 
    doTweenAngle("transitionInknucks", "camGame", -360, 0.29 / playbackRate, "quartOut") 
    if getPropertyFromClass('ClientPrefs', 'flashing') == true then   --checks if flashing lights are disabled, if they are, the camera flash doesnt happen
        cameraFlash("camHUD", "FF1111", 0.2 / playbackRate)
     end
     
    end
    if curBeat == 136 then       
        doTweenAngle("transitionIn", "camGame", 360, 0.29 / playbackRate, "quartOut")
        doTweenZoom("transitionInZoom", "camGame", getProperty("defaultCamZoom")+0.3, 0.29 / playbackRate, "quartOut")    
        if getPropertyFromClass('ClientPrefs', 'flashing') == true then  --checks if flashing lights are disabled, if they are, the camera flash doesnt happen
            cameraFlash("camHUD", "0077FF", 0.2 / playbackRate)
        end
    
    elseif (curBeat > 136 and curBeat < 168) or (curBeat > 169 and curBeat < 200)  then
    
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;                                              --this piece of code is taken straight out of Funkscop so i guess credit for this chunk of code goes to them
        end                                                                     --go play Funkscop if you havent btw, amazing mod
        setProperty('camGame.angle',angleshit*3)                                --just dont get into Giftscop because you played the funi FNF Petscop mod if you aren't actually interested in Petscop.
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002 / playbackRate, 'circOut')  --Please
        xOffset = angleshit*16
    

    elseif curBeat == 200 then
        doTweenAngle("transitionOut", "camGame", -360, 0.3 / playbackRate, "circInOut")
        doTweenZoom("transitionOutZoom", "camGame", getProperty("defaultCamZoom")-0.3, 0.29 / playbackRate, "quartOut")  
    
    end

        
end


function onTweenCompleted(tag)
 if tag == "transitionInZoom" then
    setProperty("defaultCamZoom",getProperty('camGame.zoom'))
 elseif  tag == "transitionOutZoom" then
    setProperty("defaultCamZoom",getProperty('camGame.zoom'))
 end
end