local check = 1; --don't you dare fucking touch my check variable (it'll break cool hp bar stuff!!!!1)

local ofs = 30;  --how much the camera moves when hitting a note - 30 is default
local followchars = true;  --do you want the camera to follow the characters?

function onCreate()
    if getProperty("skipCountdown") then
        setProperty("skipCountdown", false)    --as much of a skip countdown stan as i am, you cant exactly play phantasm with countdown off. plus you'd be missing on wehcnia laughing at you for having a severe skill issue, lmfao
    end
end


function onCreatePost()
    if getPropertyFromClass("PlayState", "deathCounter") ~= 0 then --basically this is checking if you've died
        triggerEvent("Play Animation", "deathCancel", "BF")
        --playAnim("boyfriend", "deathCancel") lmfao imagine (between you and me idk why i went with triggerEvent but eh)
        --oh i remember why i did cuz if i dont it wont loop, lmao
    end
    --[[for i = 0,3 do
        setPropertyFromGroup("opponentStrums", i, "alpha", 0)    this wouldnt fucking work!!!!!1!1!! because it gets set again by the damned pop-in anim the game has!!!! unless you're a gigachad and play with countdown off B) [setProperty("skipCountdown", true) under onCreate]
    end]]
	noteTweenX('oppo0', 0, -100000, stepCrochet / playbackRate, 'quartOut')
	noteTweenX('oppo1', 1, -100000, stepCrochet / playbackRate, 'quartOut')
	noteTweenX('oppo2', 2, -100000, stepCrochet / playbackRate, 'quartOut')   --too traumatised after the previous incidend to do a for loop :(
	noteTweenX('oppo3', 3, -100000, stepCrochet / playbackRate, 'quartOut')
setProperty("dad.alpha", 0) --set dad to invisible
setProperty("gf.visible", false) --do you really need an explanation?
setProperty("iconP2.alpha", 0) --set icon p2 to invisible
triggerEvent("Camera Follow Pos", getCharacterX("boyfriend")+100, getCharacterY("boyfriend")+500) --me when no stage at the time of coding script:
--points the camera at (hopefully) the center of the screen relative to knuxPhantasm.json
end

--[[function onSongStart()    --old stuff
    if getPropertyFromClass("PlayState", "deathCounter") ~= 0 then
        triggerEvent("Play Animation", "deathConfirm", "BF")
end end
]]

function onCountdownTick(swagCounter)
    if swagCounter == 2 and getPropertyFromClass("PlayState", "deathCounter") ~= 0 then
        triggerEvent("Play Animation", "deathConfirm", "BF")  --triggers this anim if you've died on "Set?!" 
    end
end

function onEvent(eventName, value1, value2)
    if eventName == "Set Property" then --cuz 2 change char events so check wouldnt change, and 3 would prolly break it a lil'
        check = -check  --every time there's a set property event, invert check. this is used by a function later on.
        --...in hindsigh i could have checked for value1, but eh. too late now.
    
        --[[if value2 == "knuxPhantasm" then
            triggerEvent("Change Character", "Dad", "wechnia")         --crashed the game oop, time to spend an hour manually putting the events in myself in the chart editor
        elseif value2 == "wechnia" then
            
            triggerEvent("Change Character", "Dad", "knuxPhantasm")
        end]]
    end
end




function onUpdate(timePassed) -- this whole onUpdate function has been taken straight out of funkscop, i'm sorry but i'm too lazy to code my own version, even tho i could, although i did tweak it cuz no opponent
    local xx2 = getCharacterX("boyfriend")+100; --don't touch
    local yy2 = getCharacterY("boyfriend")+500; --don't touch
    --bad way to go about those vars? yes, but it makes them not depend on the stage, and guess what isnt yet finished at the time of me making this script
        if followchars == true then
			local bfAnim = getProperty('boyfriend.animation.curAnim.name')  --laziness.jpg
			if bfAnim == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
			elseif bfAnim == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
			elseif bfAnim == 'singUP' then
				triggerEvent('Camera Follow Pos',xx2,yy2-ofs)  --basically this is just the cam moves on note press code
			elseif bfAnim == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            else
				triggerEvent('Camera Follow Pos',xx2,yy2)
			end
		
	else
		triggerEvent('Camera Follow Pos',getCharacterX("boyfriend")+100, getCharacterY("boyfriend")+500)
	end
end



function onUpdatePost(elapsed)      --takes care of the hp bar stuff
    if check == 1 then
        setProperty("iconP1.x", 910)
        setProperty("iconP1.flipX", false)
    --debugPrint("a")
    
    setProperty("healthBar.flipX", false)
elseif check == -1 then
    setProperty("iconP1.x", 220)
    setProperty("healthBar.flipX", true)
    --debugPrint("b")
    setProperty("iconP1.flipX", true)
end
end