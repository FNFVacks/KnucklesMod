--fuckResetting = true;
function onCreate()  --please ignore the mess.
	-- le bg fuckin shit
--		fuckResetting = getPropertyFromClass("ClientPrefs", "noReset")
		if songName == "scrambled" then
			
			makeAnimatedLuaSprite('bg2', 'BG/angel/ang2', -520, -780);
			scaleObject('bg2', 7,7);
			setProperty('bg2.antialiasing', false);
			addAnimationByPrefix('bg2', 'angelislandfire_1_gif', 'angelislandfire_1_gif'); 
		end
		makeAnimatedLuaSprite('bg1', 'BG/angel/ang1', -520, -780);
		scaleObject('bg1', 7,7);
		setProperty('bg1.antialiasing', false);
		addAnimationByPrefix('bg1', 'angelislandstage_1_gif', 'angelislandstage_1_gif'); 

		addLuaSprite('bg1', false);
	end

	
--[[function onBeatHit()

	if songName == 'scrambled' then
		
		if (curBeat == 128) then
			setPropertyFromClass("ClientPrefs", "noReset", true)
		 	setProperty("boyfriend.skipDance", true)
   		 	setProperty("dad.skipDance", true)
   			setProperty("gf.skipDance", true)
			setProperty("cpuControlled", true)
			doTweenAlpha("camGoByeBye", "camHUD", 0, 1, "linear")
		end

		if (curBeat == 144 or curBeat == 187) then
		
		setProperty('boyfriend.flipX', true)
		setProperty('dad.flipX', false)
		end

		if (curBeat == 145 or curBeat == 188) then
		
		setProperty('boyfriend.flipX', false)
		setProperty('dad.flipX', true)
		end

		if (curBeat == 164 or curBeat == 166) then
		
		cameraShake('game', 0.03, 0.05)
		
		end

		if (curBeat == 170) then
		playAnim('boyfriend', 'singRIGHTmiss', true)

		end
		
		if (curBeat == 183) then
		playAnim('boyfriend', 'scared', true)

		end
		if (curBeat == 190) then
			removeLuaSprite('bg1', true);	
			playAnim('boyfriend', 'singLEFTmiss', false)
			makeAnimatedLuaSprite('bg2', 'BG/angel/ang2', -520, -780);
			scaleObject('bg2', 7,7);
			setProperty('bg2.antialiasing', false);
			luaSpriteAddAnimationByPrefix('bg2', 'angelislandfire_1_gif', 'angelislandfire_1_gif'); 

			addLuaSprite('bg2', false);
		end

		if (curBeat == 231) then
			setPropertyFromClass("ClientPrefs", "noReset", fuckResetting)
			setProperty("boyfriend.skipDance", false)
   			setProperty("dad.skipDance", false)
   			setProperty("gf.skipDance", false)
			setProperty("cpuControlled", false)
			doTweenAlpha("camGoByeBye", "camHUD", 1, 1, "linear")
		end
		end

	end	
	]]