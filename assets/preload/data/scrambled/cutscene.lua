--if the file is a bit messy it's because it used to be like 3 different lua files so yeah lmao


local knuckSingings = false
local check = false; --used for animating the firewall horizontally. dont touch

function onCreate()
    local reset = getPropertyFromClass("ClientPrefs", "noReset");
    
    makeLuaSprite("pk fire", "BG/angel/pk fire", -450, 1800)
    scaleObject("pk fire", 7, 7)                --creating the fire wall
    setProperty("pk fire.antialiasing", false)

end
function onCreatePost()
    setProperty("dad.alpha", 0)
    setCharacterX("gf", getCharacterX("gf")-320) --offsets
    setCharacterY("gf", getCharacterY("gf")-60)
    
end

function onBeatHit()
    if curBeat == 128 then
        if botPlay then
            alreadyInPussyMode = true;
        else 
            alreadyInPussyMode = false;
            setProperty("cpuControlled", true)
        end
        doTweenAlpha("camGoByeBye", "camHUD", 0, (crochet/1000)*4 / playbackRate, "linear")
        setPropertyFromClass("ClientPrefs", "noReset", true)
        setProperty("boyfriend.skipDance", true)
        setProperty("dad.skipDance", true)
        setProperty("gf.skipDance", true)
elseif curBeat == 136 then
        setProperty("defaultCamZoom", 1)
elseif curBeat == 140 then
    cameraShake("game", 0.01, (crochet/500 / playbackRate)-0.1)
elseif curBeat == 156 then
    cameraShake("game", 0.015, (crochet/1000 / playbackRate)*3.8)
elseif curBeat == 164 then
     
    cameraShake('game', 0.05, 0.12)
     elseif curBeat == 166 then
        cameraShake('game', 0.05, 0.12)
     elseif curBeat == 168 then
        cameraShake("game", 0.015, crochet/507 / playbackRate)
    elseif curBeat == 174 then
       cameraShake("game", 0.01, crochet/550 / playbackRate)
    elseif curBeat == 176 then
       cameraShake("game", 0.02, crochet/550 / playbackRate)   
    elseif curBeat == 184 then
        if getPropertyFromClass("ClientPrefs", "flashing") then
            cameraFlash("game", '0xffbd6314', 1 / playbackRate, false)
        end
            addLuaSprite("pk fire", true) --add the fire wall so it's visible
            doTweenY("pk fire go up", "pk fire", 750, stepCrochet*0.002 / playbackRate, "sineOut") --move it upwards to y = 750
            cameraShake("game", 0.03, 0.3 / playbackRate)
            runTimer("pk fire anim timer", stepCrochet*0.0015 / playbackRate, 0)  --start the timer for the animation
            elseif curBeat == 187 then
                if getPropertyFromClass("ClientPrefs", "flashing") then
                    cameraFlash("game", '0xffbd6314', 1 / playbackRate, false)
                end
            doTweenY("pk fire go up2", "pk fire", 200, stepCrochet*0.002 / playbackRate, "sineOut")
            cameraShake("game", 0.03, 0.3 / playbackRate)
        --just the code for moving up the wall
    elseif curBeat == 190 then
        if getPropertyFromClass("ClientPrefs", "flashing") then
            cameraFlash("game", '0xffbd6314', 1 / playbackRate, false)
        end

        doTweenY("pk fire go up3", "pk fire", -650, stepCrochet*0.002 / playbackRate, "sineOut")
        cameraShake("game", 0.03, 0.3 / playbackRate)
    elseif curBeat == 193 then
        if getPropertyFromClass("ClientPrefs", "flashing") then
            cameraFlash("game", '0xffbd6314', 1 / playbackRate, false)
        end
        setProperty("gf.flipX", false)
        setCharacterX("gf", getCharacterX("boyfriend")+290) --more offsets
        setCharacterY("gf", getCharacterY("boyfriend")+10)
        setCharacterX("dad", getCharacterX("dad")-50)
        setCharacterY("dad", getCharacterY("dad")-60)
        setProperty("gf.skipDance", true)
        

        doTweenY("pk fire go up3", "pk fire", -1300, stepCrochet*0.002 / playbackRate, "sineOut")
        cameraShake("game", 0.03, 0.3 / playbackRate)
    elseif curBeat == 200 then
        addLuaSprite("bg2", false)
        removeLuaSprite("bg1", true)

        doTweenY("pk fire go down", "pk fire", 1600, stepCrochet*0.05 / playbackRate, "sineOut")
    elseif curBeat == 230 and not alreadyInPussyMode then
        
            setProperty("cpuControlled", false)
    elseif curBeat == 231 then
        
        doTweenAlpha("camGoHiHi", "camHUD", 1, (stepCrochet/1000 / playbackRate)*4, "linear")
         setProperty("dad.skipDance", false)
        setProperty("gf.skipDance", false)
        setProperty("boyfriend.skipDance", false)
        
   -- makeAnimatedLuaSprite("knuckles", "characters/knucks", 1260, 410)
    --makeAnimatedLuaSprite("knuckles", "characters/knucks", 600, 600)
    --makeAnimatedLuaSprite("deathConfirm", "characters/knucks", 600, 600)
    --setProperty("knuckles.antialiasing", false)
    --setScrollFactor("knucks", 0, 0)
   -- scaleObject("knuckles", 7, 7)
   --[[ setProperty("deathLoop.antialiasing", false)
    scaleObject("deathConfirm", 7, 7)
    setProperty("deathConfirm.antialiasing", false)
    scaleObject("deathLoop", 7, 7)
    addAnimationByIndices("knuckles", "firstDeath", "knucks dead1", "0,1,1,1,1,1,1,1,2,4,5,6,7,7,7,7,7,7,7", 9)
    addAnimationByIndicesLoop("knuckles", "deathLoop", "knucks dead2", "1,2,2,0,0,1,1,1,1,1,1,1", 21)
    addAnimationByIndices("knuckles", "deathConfirm", "knucks dead", "1,1,0,0,0,0,2", 18)
    ]]
    elseif curBeat == 232 then
        setPropertyFromClass("ClientPrefs", "noReset", reset)
        setProperty("defaultCamZoom", 0.6)
        setProperty("dad.alpha", 1)
    elseif curBeat == 344 then
        setPropertyFromClass("GameOverSubstate", "characterName", "knucks")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
    elseif curBeat == 360 then
        setPropertyFromClass("GameOverSubstate", "characterName", "knucks")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
    
    end
    end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "pk fire anim timer" then 
        if check == true then 
            setProperty("pk fire.x", getProperty("pk fire.x")+300)   --horizontal animation code
            check = false;
        else
            setProperty("pk fire.x", getProperty("pk fire.x")-300)
            check = true;
        end
    --elseif tag == "timer" then
       -- addLuaSprite("deathLoop",false)
        --removeLuaSprite("knuckles", true)
      --  playAnim("knuckles", "deathLoop")
    end
end


function onMoveCamera(char)
    if char == "gf" and curBeat > 190 then
        triggerEvent("Camera Follow Pos", "1122", "648") 
        setPropertyFromClass("GameOverSubstate", "characterName", "knucks")

	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

        knuckSingings = true
    elseif char == "boyfriend" and curBeat > 190 then
        setPropertyFromClass("GameOverSubstate", "characterName", "mewhen")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');

        knuckSingings = false
    end                                                  
end
function onTweenCompleted(tag)  --delete the fire wall after the cutscene
    if tag == "pk fire go down" then
        removeLuaSprite("pk fire", true)
end end

function onSectionHit() --cool cam zoom stuff
    if mustHitSection and curBeat > 231 then
        setProperty("defaultCamZoom", 0.85)
        --setCharacterX("knuckles", 600)
        --setCharacterY("knuckles", 600)
        
    elseif not mustHitSection and curBeat > 231 then
        setProperty("defaultCamZoom", 0.6)
        --setCharacterX("knuckles", 1260)
        --setCharacterY("knuckles", 410)
end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'GF Sing' or gfSection then
        setPropertyFromClass("GameOverSubstate", "characterName", "knucks")

	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

        knuckSingings = true
    else
        setPropertyFromClass("GameOverSubstate", "characterName", "mewhen")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');

        knuckSingings = false
    end
end

function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'GF Sing' or gfSection then
        setPropertyFromClass("GameOverSubstate", "characterName", "knucks")

	    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

        knuckSingings = true
    else
        setPropertyFromClass("GameOverSubstate", "characterName", "mewhen")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
	    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
	    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');

        knuckSingings = false
    end
end

function onUpdate(elapsed)
    if knuckSingings and inGameOver then
        setPropertyFromClass('flixel.FlxG', 'sound.music.looped', false)
    else
        setPropertyFromClass('flixel.FlxG', 'sound.music.looped', true)
    end
end
--[[
function onGameOverStart()
    
    --addLuaSprite("knuckles", false)
    --playAnim("knuckles", "firstDeath", true)
    --runTimer("timer", 2, 1)
end

function onGameOverConfirm(isNotGoingToMenu)
    if isNotGoingToMenu then
       -- addLuaSprite("deathConfirm",false)
        --removeLuaSprite("deathLoop", true)
      --  playAnim("knuckles", "deathConfirm")
    end
end
]]